require 'rubygems'
require 'sinatra'
require 'pdfkit'
use PDFKit::Middleware

require './app'
run PmbApp