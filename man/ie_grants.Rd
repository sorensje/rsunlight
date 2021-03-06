% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ie_getgrants.R
\name{ie_grants}
\alias{ie_grants}
\title{Get federal grant details}
\usage{
ie_grants(agency_ft = NULL, amount_total = NULL, assistance_type = NULL,
  fiscal_year = NULL, recipient_ft = NULL, recipient_state = NULL,
  recipient_type = NULL, page = NULL, per_page = NULL, return = "table",
  key = getOption("SunlightLabsKey",
  stop("need an API key for Sunlight Labs")), ...)
}
\arguments{
\item{agency_ft}{Full-text search on the reported name of the federal agency awarding the grant.}

\item{amount_total}{Total amount of the grant in US dollars in one of the following formats: 500 (exactly 500 dollars), >|500 (greater than or equal to 500 dollars), <|500 (less than or equal to 500 dollars)}

\item{assistance_type}{A general code for the type of grant awarded: \dQuote{02} (block grant), \dQuote{03} (formula grant), \dQuote{04} (project grant), \dQuote{05} (cooperative agreement), \dQuote{06} (direct payment, as a subsidy or other non-reimbursable direct financial aid), \dQuote{07} (direct loan), \dQuote{08} (guaranteed/insured loan), \dQuote{09} (insurance), \dQuote{10} (direct payment with unrestricted use), or \dQuote{11} (other reimbursable, contingent, intangible or indirect financial assistance).}

\item{fiscal_year}{A YYYY formatted year (1990 - 2010) as a single year or YYYY|YYYY for an OR logic.}

\item{recipient_ft}{Full-text search on the reported name of the grant recipient.}

\item{recipient_state}{Two-letter abbreviation of the state in which the grant was awarded.}

\item{recipient_type}{The type of entity that received the grant: \dQuote{00} (State government), \dQuote{01} (County government), \dQuote{02} (City or township government), \dQuote{04} (Special district government), \dQuote{05} (Independent school district), \dQuote{06} (State controlled institution of higher education), \dQuote{11} (Indian tribe), \dQuote{12} (Other nonprofit), \dQuote{20} (Private higher education), \dQuote{21} (Individual), \dQuote{22} (Profit organization), \dQuote{23} (Small business), or \dQuote{25} (Other).}

\item{page}{The page of results to return; defaults to 1.}

\item{per_page}{The number of results to return per page, defaults to 1,000.
The maximum number of records per page is 100,000.}

\item{return}{(character) One of table (default), list, or response (httr response object).
When table is requested, the default, a table is not always returned, but is returned almost
always. You can then make a table yourself if you like.}

\item{key}{your SunlightLabs API key; loads from .Rprofile}

\item{...}{Optional additional curl options (debugging tools mostly)}
}
\value{
Details on federal grants.
}
\description{
Get federal grant details
}
\examples{
\dontrun{
ie_grants(agency_ft='Agency For International Development', fiscal_year=2012, per_page=1)
}
}

