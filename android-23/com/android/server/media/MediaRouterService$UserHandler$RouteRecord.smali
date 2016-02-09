.class final Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field private final mDescriptorId:Ljava/lang/String;

.field private mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field private final mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field private final mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "providerRecord"    # Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    .param p2, "descriptorId"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1214
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@5
    .line 1215
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    #@7
    .line 1216
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo;

    #@9
    invoke-direct {v0, p3}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@e
    .line 1213
    return-void
.end method

.method private static computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1342
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    #@2
    .line 1343
    .local v0, "description":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    .end local v0    # "description":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1353
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1359
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1357
    :pswitch_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 1353
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1385
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method private static computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1381
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method private static computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1418
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    #@2
    .line 1419
    .local v0, "displayId":I
    if-gez v0, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    .end local v0    # "displayId":I
    :cond_0
    return v0
.end method

.method private static computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1364
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1376
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1366
    :pswitch_0
    const/4 v0, 0x4

    #@8
    return v0

    #@9
    .line 1368
    :pswitch_1
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 1370
    :pswitch_2
    const/4 v0, 0x5

    #@c
    return v0

    #@d
    .line 1372
    :pswitch_3
    const/4 v0, 0x2

    #@e
    return v0

    #@f
    .line 1374
    :pswitch_4
    const/4 v0, 0x6

    #@10
    return v0

    #@11
    .line 1364
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 1
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1347
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method private static computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 3
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1389
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    #@3
    .line 1390
    .local v0, "volume":I
    iget v1, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    #@5
    .line 1391
    .local v1, "volumeMax":I
    if-gez v0, :cond_0

    #@7
    .line 1392
    return v2

    #@8
    .line 1393
    :cond_0
    if-le v0, v1, :cond_1

    #@a
    .line 1394
    return v1

    #@b
    .line 1396
    :cond_1
    return v0
.end method

.method private static computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    .line 1405
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    #@2
    .line 1406
    .local v0, "volumeHandling":I
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1411
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 1408
    :pswitch_0
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1406
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .locals 2
    .param p0, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1400
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    #@3
    .line 1401
    .local v0, "volumeMax":I
    if-lez v0, :cond_0

    #@5
    .end local v0    # "volumeMax":I
    :goto_0
    return v0

    #@6
    .restart local v0    # "volumeMax":I
    :cond_0
    move v0, v1

    #@7
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "  "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 1326
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "mMutableInfo="

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "mDescriptorId="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    const-string/jumbo v2, "mDescriptor="

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f
    .line 1322
    return-void
.end method

.method public getDescriptorId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInfo()Landroid/media/MediaRouterClientState$RouteInfo;
    .locals 2

    #@0
    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1237
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo;

    #@6
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@8
    invoke-direct {v0, v1}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Landroid/media/MediaRouterClientState$RouteInfo;)V

    #@b
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@d
    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@f
    return-object v0
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .locals 1

    #@0
    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@2
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getProviderRecord()Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    .locals 1

    #@0
    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@2
    iget v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@4
    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@2
    iget-boolean v0, v0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@4
    return v0
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Route "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@e
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " ("

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@1d
    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, ")"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .locals 14
    .param p1, "descriptor"    # Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1255
    const/4 v0, 0x0

    #@2
    .line 1256
    .local v0, "changed":Z
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@4
    if-eq v12, p1, :cond_a

    #@6
    .line 1257
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@8
    .line 1258
    if-eqz p1, :cond_a

    #@a
    .line 1259
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 1260
    .local v3, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@10
    iget-object v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@12
    invoke-static {v12, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v12

    #@16
    if-nez v12, :cond_0

    #@18
    .line 1261
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@1a
    iput-object v3, v12, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    #@1c
    .line 1262
    const/4 v0, 0x1

    #@1d
    .line 1264
    :cond_0
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 1265
    .local v1, "description":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@23
    iget-object v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@25
    invoke-static {v12, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@28
    move-result v12

    #@29
    if-nez v12, :cond_1

    #@2b
    .line 1266
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@2d
    iput-object v1, v12, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    #@2f
    .line 1267
    const/4 v0, 0x1

    #@30
    .line 1269
    :cond_1
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@33
    move-result v8

    #@34
    .line 1270
    .local v8, "supportedTypes":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@36
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@38
    if-eq v12, v8, :cond_2

    #@3a
    .line 1271
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@3c
    iput v8, v12, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    #@3e
    .line 1272
    const/4 v0, 0x1

    #@3f
    .line 1274
    :cond_2
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    #@42
    move-result v2

    #@43
    .line 1275
    .local v2, "enabled":Z
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@45
    iget-boolean v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@47
    if-eq v12, v2, :cond_3

    #@49
    .line 1276
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@4b
    iput-boolean v2, v12, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    #@4d
    .line 1277
    const/4 v0, 0x1

    #@4e
    .line 1279
    :cond_3
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@51
    move-result v7

    #@52
    .line 1280
    .local v7, "statusCode":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@54
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@56
    if-eq v12, v7, :cond_4

    #@58
    .line 1281
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@5a
    iput v7, v12, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    #@5c
    .line 1282
    const/4 v0, 0x1

    #@5d
    .line 1284
    :cond_4
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@60
    move-result v5

    #@61
    .line 1285
    .local v5, "playbackType":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@63
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@65
    if-eq v12, v5, :cond_5

    #@67
    .line 1286
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@69
    iput v5, v12, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    #@6b
    .line 1287
    const/4 v0, 0x1

    #@6c
    .line 1289
    :cond_5
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@6f
    move-result v4

    #@70
    .line 1290
    .local v4, "playbackStream":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@72
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@74
    if-eq v12, v4, :cond_6

    #@76
    .line 1291
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@78
    iput v4, v12, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    #@7a
    .line 1292
    const/4 v0, 0x1

    #@7b
    .line 1294
    :cond_6
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@7e
    move-result v9

    #@7f
    .line 1295
    .local v9, "volume":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@81
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@83
    if-eq v12, v9, :cond_7

    #@85
    .line 1296
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@87
    iput v9, v12, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    #@89
    .line 1297
    const/4 v0, 0x1

    #@8a
    .line 1299
    :cond_7
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@8d
    move-result v11

    #@8e
    .line 1300
    .local v11, "volumeMax":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@90
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@92
    if-eq v12, v11, :cond_8

    #@94
    .line 1301
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@96
    iput v11, v12, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    #@98
    .line 1302
    const/4 v0, 0x1

    #@99
    .line 1304
    :cond_8
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@9c
    move-result v10

    #@9d
    .line 1305
    .local v10, "volumeHandling":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@9f
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@a1
    if-eq v12, v10, :cond_9

    #@a3
    .line 1306
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@a5
    iput v10, v12, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    #@a7
    .line 1307
    const/4 v0, 0x1

    #@a8
    .line 1309
    :cond_9
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    #@ab
    move-result v6

    #@ac
    .line 1310
    .local v6, "presentationDisplayId":I
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@ae
    iget v12, v12, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@b0
    if-eq v12, v6, :cond_a

    #@b2
    .line 1311
    iget-object v12, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@b4
    iput v6, v12, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    #@b6
    .line 1312
    const/4 v0, 0x1

    #@b7
    .line 1316
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "enabled":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "playbackStream":I
    .end local v5    # "playbackType":I
    .end local v6    # "presentationDisplayId":I
    .end local v7    # "statusCode":I
    .end local v8    # "supportedTypes":I
    .end local v9    # "volume":I
    .end local v10    # "volumeHandling":I
    .end local v11    # "volumeMax":I
    :cond_a
    if-eqz v0, :cond_b

    #@b9
    .line 1317
    iput-object v13, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    #@bb
    .line 1319
    :cond_b
    return v0
.end method
