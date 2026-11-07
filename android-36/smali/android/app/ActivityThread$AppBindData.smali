.class final Landroid/app/ActivityThread$AppBindData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppBindData"
.end annotation


# instance fields
.field greylist appInfo:Landroid/content/pm/ApplicationInfo;

.field blacklist autofillOptions:Landroid/content/AutofillOptions;

.field greylist-max-o buildSerial:Ljava/lang/String;

.field greylist-max-p compatInfo:Landroid/content/res/CompatibilityInfo;

.field greylist-max-o config:Landroid/content/res/Configuration;

.field blacklist contentCaptureOptions:Landroid/content/ContentCaptureOptions;

.field greylist-max-o debugMode:I

.field blacklist disabledCompatChanges:[J

.field greylist-max-o enableBinderTracking:Z

.field greylist info:Landroid/app/LoadedApk;

.field greylist-max-o initProfilerInfo:Landroid/app/ProfilerInfo;

.field greylist instrumentationArgs:Landroid/os/Bundle;

.field greylist-max-o instrumentationName:Landroid/content/ComponentName;

.field greylist-max-o instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field greylist-max-o instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field blacklist isSdkInSandbox:Z

.field blacklist mLoggableCompatChanges:[J

.field blacklist mSerializedSystemFontMap:Landroid/os/SharedMemory;

.field greylist-max-r persistent:Z

.field greylist processName:Ljava/lang/String;

.field greylist providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist restrictedBackupMode:Z

.field blacklist sdkSandboxClientAppPackage:Ljava/lang/String;

.field blacklist sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

.field blacklist startRequestedElapsedTime:J

.field blacklist startRequestedUptime:J

.field greylist-max-o trackAllocation:Z


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppBindData{appInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
