% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/ie_earmarks.R
\name{ie_earmarks}
\alias{ie_earmarks}
\title{Search itemized earmark requests through FY 2010.}
\usage{
ie_earmarks(amount = NULL, bill = NULL, city = NULL, description = NULL,
  member = NULL, member_party = NULL, member_state = NULL,
  recipient = NULL, year = NULL, page = NULL, per_page = NULL,
  return = "table", key = getOption("SunlightLabsKey",
  stop("need an API key for Sunlight Labs")), ...)
}
\arguments{
\item{amount}{(integer) The final amount of the earmark.}

\item{bill}{(character) The bill, section or subsection of the earmark.}

\item{city}{(character) The city where the money will be spent.}

\item{description}{(character) Full-text search on the description of the earmark request.}

\item{member}{(character) Full-text search on the member of Congress requesting the earmark.}

\item{member_party}{(character) The party of the member requesting the earmark, D, R or I.}

\item{member_state}{(character) The 2-letter state abbreviation of the requesting member.}

\item{recipient}{(character) Full-text search on the intended recipient, when known.}

\item{year}{(character) The YYYY-formatted fiscal year for which the earmark was requested.}

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
THe output fields for each element are as follows.

\itemize{
 \item fiscal_year The fiscal year for the bill in which the earmark appears.
 \item final_amount The earmark amount in the final version of the bill.
 \item budget_amount The earmark amount in the President's budget proposal.
 \item house_amount The earmark amount in the version of the bill passed by the House.
 \item senate_amount The earmark amount in the version of the bill passed by the Senate.
 \item omni_amount The earmark amount in the omnibus appropriations bill.
 \item bill, bill_section, bill_subsection The bill, section and subsection where the earmark
 appears.
 \item description The earmark description.
 \item notes Notes added by Taxpayers for Common Sense.
 \item presidential Presidential earmarks are earmarks that appear in the President's initial
 budget proposal.
  \tabular{ll}{
    blank \tab Not in the President's budget.\cr
    p \tab Included in the President's budget and disclosed by congress. R\cr
    u \tab Included in the President's budget and not disclosed by congress.\cr
    m \tab Included in the President's budget and sponsored by members.\cr
    j \tab Included at the request of the judiciary.
  }
 \item undisclosed Taxpayers for Common Sense's determination of whether the earmarks was
 disclosed by congress. Undisclosed earmarks are found by reading the bill text.
  \tabular{ll}{
    blank \tab Disclosed in congressional earmark reports.\cr
    u \tab Not disclosed by congress but found in bill text.\cr
    p \tab Not disclosed and in President's budget.\cr
    o \tab Disclosed Operations & Maintenance earmark.\cr
    m \tab tab Undisclosed Operations & Maintenance earmark.
  }
 \item members The members that sponsored the earmark. Taxpayers for Common Sense lists the
 members by last name, state and party. We have attempted to expand these to full names, where
 possible. Due to formatting irregularities, state, party or full name are sometimes missing.
 \item location The city and states where the earmark will be spent, when known.
 \item recipients The organization that will receive the earmark, when known
}

A list, as class ie_earmarks.
}
\description{
Search itemized earmark requests through FY 2010.
}
\examples{
\dontrun{
ie_earmarks(year='2010', per_page=3)
ie_earmarks(city='New York City', per_page=1)
ie_earmarks(member='Nadler', per_page=1)
ie_earmarks(member_state='AK', per_page=3)
ie_earmarks(member_party='R', per_page=1)
ie_earmarks(description='Infantry Support')
}
}

