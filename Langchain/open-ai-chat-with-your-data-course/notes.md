# Notes from open-ai chat with your data course.
## found at https://learn.deeplearning.ai/langchain-chat-with-your-data/


### Document Loading 

Document Loaders deal with the specifics of accessing and converting data including:

* Websites
* Databases
* Youtube 
* arXiv

Datatypes include:
* PDF
* HTML
* JSON 
* Word, PowerPoint, Excel...

Loader will return a `Document` object which has content and metadata 

Can import pdf document loader from langchain as: 
from langchain.document_loaders import PyPDFLoader 



