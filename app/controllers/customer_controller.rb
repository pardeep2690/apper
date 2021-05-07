class JavaImport
	def initialize(args)

			ENV['CLASSPATH'] = (Rails.root + "javalibs/*")

			require 'pycall/import'
			include PyCall::Import

			pyfrom 'jnius' , import: :autoclass

			Pdfacroform  = autoclass('com.itextpdf.forms.PdfAcroForm')
			Pdfdoc =  autoclass('com.itextpdf.kernel.pdf.PdfDocument')
			Pdfreader = autoclass('com.itextpdf.kernel.pdf.PdfReader')
			Pdfwriter = autoclass('com.itextpdf.kernel.pdf.PdfWriter')




			@reader = Pdfreader.new(Rails.root + "pdfs/kyc.pdf")
			@writer = Pdfwriter.new(Rails.root + "output/kyc.pdf")
			@pdfdoc  = Pdfdoc.new(reader,writer)
			@form = Pdfacroform.getAcroForm(pdfdoc, true);
			@fields = form.getFormFields()
			end	
end





class CustomerController < ApplicationController


end
