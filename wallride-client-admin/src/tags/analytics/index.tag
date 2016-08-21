<analytics-index>
    <div id="wr-page-header">
        <div class="page-header container-fluid clearfix">
            <div class="pull-left">
                <h1 th:text="#{GoogleAnalytics}">Google Analytics</h1>
            </div>
            <div class="pull-right">
                <div class="btn-group">
                    <a href="#" class="btn btn-default" th:text="#{Edit}">Edit</a>
                    <a href="#" data-toggle="modal" data-target="#delete-modal" class="btn btn-default" th:text="#{Delete}">Delete</a>
                </div>
                <div class="btn-group">
                    <a href="#" data-toggle="modal" data-target="#sync-modal" class="btn btn-primary" th:text="#{Sync}">Sync</a>
                </div>
            </div>
        </div>
    </div>
    <div id="wr-page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="alert alert-warning" role="alert" th:if="!${googleAnalytics}">
                        Google Analytics is not set
                    </div>
                    <table class="table" th:if="${googleAnalytics}">
                        <colgroup>
                            <col class="col-sm-3" />
                            <col class="col-sm-9" />
                        </colgroup>
                        <tbody>
                            <tr>
                                <th th:text="#{GoogleAnalyticsTrackingID}">Tracking ID</th>
                                <td th:text="${googleAnalytics.trackingId}"></td>
                            </tr>
                            <tr>
                                <th th:text="#{GoogleAnalyticsProfileID}">Profile ID</th>
                                <td th:text="${googleAnalytics.profileId}"></td>
                            </tr>
                            <tr>
                                <th th:text="#{GoogleAnalyticsCustomDimensionIndex}">Custom Dimension Index</th>
                                <td th:text="${googleAnalytics.customDimensionIndex}"></td>
                            </tr>
                            <tr>
                                <th th:text="#{GoogleAnalyticsServiceAccountID}">Service Account ID</th>
                                <td th:text="${googleAnalytics.serviceAccountId}"></td>
                            </tr>
                            <tr>
                                <th th:text="#{GoogleAnalyticsServiceAccountP12File}">Service Account P12 File</th>
                                <td th:text="${googleAnalytics.serviceAccountP12FileName}"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- delete-modal -->
        <div id="delete-modal" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="#" method="post">
                        <input type="hidden" name="_method" value="delete" />
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Delete</h4>
                            </div>
                            <div class="modal-body">
                                <p th:text="#{MakeSureDelete}">Are you sure you want to delete?</p>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-default" data-dismiss="modal" th:text="#{Cancel}">Cancel</button>
                                <button class="btn btn-primary" th:text="#{Delete}">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--/delete-modal -->
        <!-- sync-modal -->
        <div id="sync-modal" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="#" method="post">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Sync</h4>
                        </div>
                        <div class="modal-body">
                            <p th:text="#{MakeSureSync}">Are you sure you want to start sync?</p>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-default" data-dismiss="modal" th:text="#{Cancel}">Cancel</button>
                            <button class="btn btn-primary" th:text="#{Sync}">Sync</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--/sync-modal -->
    </div>
</analytics-index>