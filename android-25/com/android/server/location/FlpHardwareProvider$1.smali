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
    .line 347
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
    .line 398
    invoke-virtual {p0}, Lcom/android/server/location/FlpHardwareProvider$1;->getVersion()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 399
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@9
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap7(Lcom/android/server/location/FlpHardwareProvider;)V

    #@c
    .line 397
    :goto_0
    return-void

    #@d
    .line 401
    :cond_0
    const-string/jumbo v0, "FlpHardwareProvider"

    #@10
    .line 402
    const-string/jumbo v1, "Tried to call flushBatchedLocations on an unsupported implementation"

    #@13
    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method public getSupportedBatchSize()I
    .locals 1

    #@0
    .prologue
    .line 373
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
    .line 428
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
    .line 423
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap8(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 422
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap9(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    #@5
    .line 412
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@9
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 353
    const-string/jumbo v0, "FlpHardwareProvider"

    #@12
    const-string/jumbo v2, "Replacing an existing IFusedLocationHardware sink"

    #@15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@1a
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 358
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@20
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)V

    #@23
    .line 349
    return-void

    #@24
    .line 350
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
    .line 393
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap14(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 392
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap16(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    #@5
    .line 377
    return-void
.end method

.method public stopBatching(I)V
    .locals 1
    .param p1, "requestId"    # I

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V

    #@5
    .line 382
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1

    #@0
    .prologue
    .line 418
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
    .line 408
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
    .line 363
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@9
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    .line 366
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
    .line 362
    return-void

    #@17
    .line 363
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
    .line 388
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap18(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    #@5
    .line 387
    return-void
.end method
