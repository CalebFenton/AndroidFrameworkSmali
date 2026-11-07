.class public Landroid/health/connect/aidl/IHealthConnectService$Default;
.super Ljava/lang/Object;
.source "IHealthConnectService.java"

# interfaces
.implements Landroid/health/connect/aidl/IHealthConnectService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/aidl/IHealthConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist aggregateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/AggregateDataRequestParcel;Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/aidl/AggregateDataRequestParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canRestore(ILandroid/health/connect/aidl/ICanRestoreResponseCallback;)V
    .registers 3
    .param p1, "dataVersion"    # I
    .param p2, "callback"    # Landroid/health/connect/aidl/ICanRestoreResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    return-void
.end method

.method public blacklist configureScheduledExport(Landroid/health/connect/exportimport/ScheduledExportSettings;Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "settings"    # Landroid/health/connect/exportimport/ScheduledExportSettings;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public blacklist createMedicalDataSource(Landroid/content/AttributionSource;Landroid/health/connect/CreateMedicalDataSourceRequest;Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/CreateMedicalDataSourceRequest;
    .param p3, "callback"    # Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    return-void
.end method

.method public blacklist deleteAllStagedRemoteData(Landroid/os/UserHandle;)V
    .registers 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    return-void
.end method

.method public blacklist deleteMedicalDataSourceWithData(Landroid/content/AttributionSource;Ljava/lang/String;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    return-void
.end method

.method public blacklist deleteMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;",
            "Landroid/health/connect/aidl/IEmptyResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    .local p2, "medicalResourceIds":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    return-void
.end method

.method public blacklist deleteMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/DeleteMedicalResourcesRequest;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/DeleteMedicalResourcesRequest;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    return-void
.end method

.method public blacklist deleteUsingFilters(Landroid/content/AttributionSource;Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist finishMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/health/connect/aidl/IMigrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public blacklist getActivityDates(Landroid/health/connect/aidl/ActivityDatesRequestParcel;Landroid/health/connect/aidl/IActivityDatesResponseCallback;)V
    .registers 3
    .param p1, "recordTypes"    # Landroid/health/connect/aidl/ActivityDatesRequestParcel;
    .param p2, "callback"    # Landroid/health/connect/aidl/IActivityDatesResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    return-void
.end method

.method public blacklist getAllBackupFileNames(Z)Landroid/health/connect/restore/BackupFileNamesSet;
    .registers 3
    .param p1, "forDeviceToDevice"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllDataForBackup(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "stageRemoteDataRequest"    # Landroid/health/connect/restore/StageRemoteDataRequest;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    return-void
.end method

.method public blacklist getChangeLogToken(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogTokenRequest;Landroid/health/connect/aidl/IGetChangeLogTokenCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/changelog/ChangeLogTokenRequest;
    .param p3, "callback"    # Landroid/health/connect/aidl/IGetChangeLogTokenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist getChangeLogs(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogsRequest;Landroid/health/connect/aidl/IChangeLogsResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "token"    # Landroid/health/connect/changelog/ChangeLogsRequest;
    .param p3, "callback"    # Landroid/health/connect/aidl/IChangeLogsResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist getChangesForBackup(Ljava/lang/String;Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;)V
    .registers 3
    .param p1, "changeToken"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    return-void
.end method

.method public blacklist getContributorApplicationsInfo(Landroid/health/connect/aidl/IApplicationInfoResponseCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/health/connect/aidl/IApplicationInfoResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public blacklist getCurrentPriority(ILandroid/health/connect/aidl/IGetPriorityResponseCallback;)V
    .registers 3
    .param p1, "permissionCategory"    # I
    .param p2, "callback"    # Landroid/health/connect/aidl/IGetPriorityResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist getGrantedHealthPermissions(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHealthConnectDataState(Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public blacklist getHealthConnectMigrationUiState(Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    return-void
.end method

.method public blacklist getHealthPermissionsFlags(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHistoricalAccessStartDateInMilliseconds(Ljava/lang/String;Landroid/os/UserHandle;)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getImportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IImportStatusCallback;)V
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "callback"    # Landroid/health/connect/exportimport/IImportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    return-void
.end method

.method public blacklist getLatestMetadataForBackup(Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    return-void
.end method

.method public blacklist getMedicalDataSourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "callback"    # Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getMedicalDataSourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/GetMedicalDataSourcesRequest;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/GetMedicalDataSourcesRequest;
    .param p3, "callback"    # Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    return-void
.end method

.method public blacklist getRecordRetentionPeriodInDays(Landroid/os/UserHandle;)I
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScheduledExportPeriodInDays(Landroid/os/UserHandle;)I
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScheduledExportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IScheduledExportStatusCallback;)V
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "callback"    # Landroid/health/connect/exportimport/IScheduledExportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    return-void
.end method

.method public blacklist grantHealthPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist insertMinDataMigrationSdkExtensionVersion(Ljava/lang/String;ILandroid/health/connect/aidl/IMigrationCallback;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requiredSdkExtension"    # I
    .param p3, "callback"    # Landroid/health/connect/aidl/IMigrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    return-void
.end method

.method public blacklist insertRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IInsertRecordsResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "recordsParcel"    # Landroid/health/connect/aidl/RecordsParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IInsertRecordsResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist queryAccessLogs(Ljava/lang/String;Landroid/health/connect/aidl/IAccessLogsResponseCallback;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/health/connect/aidl/IAccessLogsResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    return-void
.end method

.method public blacklist queryAllMedicalResourceTypeInfos(Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    return-void
.end method

.method public blacklist queryAllRecordTypesInfo(Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public blacklist queryDocumentProviders(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;)V
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "callback"    # Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    return-void
.end method

.method public blacklist readMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "callback"    # Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;",
            "Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    .local p2, "medicalResourceIds":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    return-void
.end method

.method public blacklist readMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    return-void
.end method

.method public blacklist readRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadRecordsRequestParcel;Landroid/health/connect/aidl/IReadRecordsResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "request"    # Landroid/health/connect/aidl/ReadRecordsRequestParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IReadRecordsResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist restoreChanges(Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 3
    .param p2, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/backuprestore/RestoreChange;",
            ">;",
            "Landroid/health/connect/aidl/IEmptyResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/backuprestore/RestoreChange;>;"
    return-void
.end method

.method public blacklist restoreLatestMetadata(Landroid/health/connect/backuprestore/BackupMetadata;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 3
    .param p1, "backupMetadata"    # Landroid/health/connect/backuprestore/BackupMetadata;
    .param p2, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    return-void
.end method

.method public blacklist revokeAllHealthPermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist revokeHealthPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist runImmediateExport(Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 3
    .param p1, "file"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    return-void
.end method

.method public blacklist runImport(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    return-void
.end method

.method public blacklist setHealthPermissionsUserFixedFlagValue(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setLowerRateLimitsForTesting(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    return-void
.end method

.method public blacklist setRecordRetentionPeriodInDays(ILandroid/os/UserHandle;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "days"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist stageAllHealthConnectRemoteData(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;Landroid/health/connect/aidl/IDataStagingFinishedCallback;)V
    .registers 4
    .param p1, "stageRemoteDataRequest"    # Landroid/health/connect/restore/StageRemoteDataRequest;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "callback"    # Landroid/health/connect/aidl/IDataStagingFinishedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    return-void
.end method

.method public blacklist startMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/health/connect/aidl/IMigrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public blacklist updateDataDownloadState(I)V
    .registers 2
    .param p1, "downloadState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    return-void
.end method

.method public blacklist updatePriority(Landroid/health/connect/aidl/UpdatePriorityRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 3
    .param p1, "request"    # Landroid/health/connect/aidl/UpdatePriorityRequestParcel;
    .param p2, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist updateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "recordsParcel"    # Landroid/health/connect/aidl/RecordsParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IEmptyResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist upsertMedicalResources(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "callback"    # Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;",
            "Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/UpsertMedicalResourceRequest;>;"
    return-void
.end method

.method public blacklist upsertMedicalResourcesFromRequestsParcel(Landroid/content/AttributionSource;Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;)V
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "requestsParcel"    # Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    return-void
.end method

.method public blacklist writeMigrationData(Ljava/lang/String;Landroid/health/connect/migration/MigrationEntityParcel;Landroid/health/connect/aidl/IMigrationCallback;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/health/connect/migration/MigrationEntityParcel;
    .param p3, "callback"    # Landroid/health/connect/aidl/IMigrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method
