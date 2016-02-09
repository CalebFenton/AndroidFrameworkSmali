.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 2

    #@0
    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/server/location/FlpHardwareProvider$1;->getVersion()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 396
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@9
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap7(Lcom/android/server/location/FlpHardwareProvider;)V

    #@c
    .line 394
    :goto_0
    return-void

    #@d
    .line 398
    :cond_0
    const-string/jumbo v0, "FlpHardwareProvider"

    #@10
    .line 399
    const-string/jumbo v1, "Tried to call flushBatchedLocations on an unsupported implementation"

    #@13
    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method public getSupportedBatchSize()I
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap4(Lcom/android/server/location/FlpHardwareProvider;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap3(Lcom/android/server/location/FlpHardwareProvider;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1
    .param p1, "deviceEnabledContext"    # I

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap8(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 419
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap9(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    #@5
    .line 409
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@9
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 350
    const-string/jumbo v0, "FlpHardwareProvider"

    #@12
    const-string/jumbo v2, "Replacing an existing IFusedLocationHardware sink"

    #@15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@1a
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 355
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@20
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)V

    #@23
    .line 346
    return-void

    #@24
    .line 347
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .locals 1
    .param p1, "batchSizeRequested"    # I

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap14(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 389
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap16(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    #@5
    .line 374
    return-void
.end method

.method public stopBatching(I)V
    .locals 1
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 379
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@9
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    .line 363
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 359
    return-void

    #@17
    .line 360
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap18(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    #@5
    .line 384
    return-void
.end method
