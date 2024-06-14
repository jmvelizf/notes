## on BIPage Load

```mermaid
stateDiagram-v2
    state LoadBIPageComponent {
        [*] --> FetchReports
        FetchReports --> DisplayReportsList : receives reports list
        DisplayReportsList --> CheckURLForReport : check if URL has report query string
    
        CheckURLForReport --> ShowDashboard : if URL has report query string
        CheckURLForReport --> ShowDefaultDashboard : if URL does not have report query string
    }

    ShowDashboard --> RenderIframe : load specified dashboard in iframe
    ShowDefaultDashboard --> RenderIframe : load first dashboard in iframe
    
    RenderIframe --> [*]