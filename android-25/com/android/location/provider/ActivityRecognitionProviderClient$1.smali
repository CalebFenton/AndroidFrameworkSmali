.class Lcom/android/location/provider/ActivityRecognitionProviderClient$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;
.source "ActivityRecognitionProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProviderClient;

    #@0
    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 6
    .param p1, "isSupported"    # Z
    .param p2, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    #@0
    .prologue
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 43
    .local v0, "callingUid":I
    const/16 v3, 0x3e8

    #@6
    if-eq v0, v3, :cond_0

    #@8
    .line 44
    const-string/jumbo v3, "ArProviderClient"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Ignoring calls from non-system server. Uid: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 45
    return-void

    #@23
    .line 49
    :cond_0
    if-eqz p1, :cond_1

    #@25
    :try_start_0
    new-instance v2, Lcom/android/location/provider/ActivityRecognitionProvider;

    #@27
    invoke-direct {v2, p2}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 54
    :goto_0
    iget-object v3, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;

    #@2c
    invoke-virtual {v3, p1, v2}, Lcom/android/location/provider/ActivityRecognitionProviderClient;->onProviderChanged(ZLcom/android/location/provider/ActivityRecognitionProvider;)V

    #@2f
    .line 41
    return-void

    #@30
    .line 49
    :cond_1
    const/4 v2, 0x0

    #@31
    .local v2, "provider":Lcom/android/location/provider/ActivityRecognitionProvider;
    goto :goto_0

    #@32
    .line 50
    .end local v2    # "provider":Lcom/android/location/provider/ActivityRecognitionProvider;
    :catch_0
    move-exception v1

    #@33
    .line 51
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ArProviderClient"

    #@36
    const-string/jumbo v4, "Error creating Hardware Activity-Recognition Provider."

    #@39
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    .line 52
    return-void
.end method
