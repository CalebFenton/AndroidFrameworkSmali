.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
.super Ljava/util/ArrayList;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@0
    .prologue
    .line 363
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V

    #@3
    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "reqworkSource"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I",
            "Landroid/os/WorkSource;",
            "TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 365
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    .local p4, "settings":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->add(Ljava/lang/Object;)Z

    #@e
    .line 364
    return-void
.end method

.method createMergedWorkSource()Landroid/os/WorkSource;
    .locals 4

    #@0
    .prologue
    .line 414
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    new-instance v2, Landroid/os/WorkSource;

    #@2
    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    #@5
    .line 415
    .local v2, "mergedSource":Landroid/os/WorkSource;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@15
    .line 416
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->workSource:Landroid/os/WorkSource;

    #@17
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 418
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_0
    return-object v2
.end method

.method getAllSettings()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 382
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 383
    .local v2, "settingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 384
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@15
    .line 386
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@17
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 388
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_0
    return-object v2
.end method

.method getAllSettingsForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 393
    .local v2, "settingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 394
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@15
    .line 396
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@17
    if-ne v3, p1, :cond_0

    #@19
    .line 397
    iget-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@1b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 400
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_1
    return-object v2
.end method

.method removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@0
    .prologue
    .line 404
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .line 405
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@10
    .line 407
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v2, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@12
    if-ne v2, p1, :cond_0

    #@14
    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@17
    goto :goto_0

    #@18
    .line 403
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    :cond_1
    return-void
.end method

.method removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handlerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "I)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    .local p0, "this":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 370
    .local v2, "removed":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .line 371
    .end local v2    # "removed":Ljava/lang/Object;, "TT;"
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@11
    .line 373
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    iget-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@13
    if-ne v3, p1, :cond_0

    #@15
    iget v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@17
    if-ne v3, p2, :cond_0

    #@19
    .line 374
    iget-object v2, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@1b
    .line 375
    .restart local v2    # "removed":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@1e
    goto :goto_0

    #@1f
    .line 378
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<TT;>;"
    .end local v2    # "removed":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2
.end method
