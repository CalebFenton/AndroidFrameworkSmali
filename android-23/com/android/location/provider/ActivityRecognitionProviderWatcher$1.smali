.class Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;
.source "ActivityRecognitionProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 5
    .param p1, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    #@0
    .prologue
    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 56
    .local v0, "callingUid":I
    const/16 v2, 0x3e8

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 57
    const-string/jumbo v2, "ActivityRecognitionProviderWatcher"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Ignoring calls from non-system server. Uid: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 58
    return-void

    #@23
    .line 62
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    #@25
    new-instance v3, Lcom/android/location/provider/ActivityRecognitionProvider;

    #@27
    invoke-direct {v3, p1}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V

    #@2a
    invoke-static {v2, v3}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->-set0(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)Lcom/android/location/provider/ActivityRecognitionProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 54
    :goto_0
    return-void

    #@2e
    .line 63
    :catch_0
    move-exception v1

    #@2f
    .line 64
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ActivityRecognitionProviderWatcher"

    #@32
    const-string/jumbo v3, "Error creating Hardware Activity-Recognition"

    #@35
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_0
.end method
