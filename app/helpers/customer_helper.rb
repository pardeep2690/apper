path =  Rails.root + "javalibs/*"
ENV['CLASSPATH'] = (path.to_s)
require 'pycall/import'



module CustomerHelper
	class JavaImport
		include PyCall::Import

	def initialize()
			pyfrom 'jnius' , import: :autoclass
			pdfacroform  = autoclass('com.itextpdf.forms.PdfAcroForm')
			pdfdoc =  autoclass('com.itextpdf.kernel.pdf.PdfDocument')
			pdfreader = autoclass('com.itextpdf.kernel.pdf.PdfReader')
			pdfwriter = autoclass('com.itextpdf.kernel.pdf.PdfWriter')


			reader_path = Rails.root + "pdfs/kyc.pdf"
			writer_path = Rails.root + "output/kyc.pdf"

			@reader = pdfreader.new(reader_path.to_s)
			@writer = pdfwriter.new(writer_path.to_s)
			@pdfdoc  = pdfdoc.new(@reader,@writer)
			@form = pdfacroform.getAcroForm(@pdfdoc, true);
			@fields = @form.getFormFields()
			end	
		def form
			@form
		end

		def fields
			a = @fields.keySet().toArray()
			b = @fields.values().toArray()

			Hash[a.zip b]
		end

		def pdfdoc
			@pdfdoc
		end
end
end
