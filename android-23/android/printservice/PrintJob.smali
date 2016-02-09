.class public final Landroid/printservice/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintJob"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mDocument:Landroid/printservice/PrintDocument;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V
    .locals 3
    .param p1, "jobInfo"    # Landroid/print/PrintJobInfo;
    .param p2, "client"    # Landroid/printservice/IPrintServiceClient;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@5
    .line 46
    iput-object p2, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@7
    .line 47
    new-instance v0, Landroid/printservice/PrintDocument;

    #@9
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@b
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@e
    move-result-object v1

    #@f
    .line 48
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    #@12
    move-result-object v2

    #@13
    .line 47
    invoke-direct {v0, v1, p2, v2}, Landroid/printservice/PrintDocument;-><init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V

    #@16
    iput-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    #@18
    .line 44
    return-void
.end method

.method private isInImmutableState()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 371
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@3
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    #@6
    move-result v0

    #@7
    .line 372
    .local v0, "state":I
    const/4 v2, 0x5

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 373
    const/4 v2, 0x7

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 372
    :cond_0
    :goto_0
    return v1

    #@e
    .line 374
    :cond_1
    const/4 v2, 0x6

    #@f
    if-eq v0, v2, :cond_0

    #@11
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method private setState(ILjava/lang/String;)Z
    .locals 4
    .param p1, "state"    # I
    .param p2, "error"    # Ljava/lang/String;

    #@0
    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@2
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@4
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2, p1, p2}, Landroid/printservice/IPrintServiceClient;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 383
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@10
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    #@13
    .line 384
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@15
    invoke-virtual {v1, p2}, Landroid/print/PrintJobInfo;->setStateReason(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 385
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 387
    :catch_0
    move-exception v0

    #@1b
    .line 388
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Error setting the state of job: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@2c
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 390
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@3c
    return v1
.end method


# virtual methods
.method public block(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 214
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@4
    .line 215
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@7
    move-result-object v0

    #@8
    .line 216
    .local v0, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@b
    move-result v1

    #@c
    .line 217
    .local v1, "state":I
    const/4 v2, 0x3

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 218
    if-ne v1, v3, :cond_0

    #@11
    .line 219
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getStateReason()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 222
    :cond_0
    const/4 v2, 0x0

    #@1c
    return v2

    #@1d
    .line 220
    :cond_1
    invoke-direct {p0, v3, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@20
    move-result v2

    #@21
    return v2
.end method

.method public cancel()Z
    .locals 2

    #@0
    .prologue
    .line 275
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 276
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 277
    const/4 v0, 0x7

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 279
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public complete()Z
    .locals 2

    #@0
    .prologue
    .line 234
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 235
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->isStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 236
    const/4 v0, 0x5

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 238
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 352
    if-ne p0, p1, :cond_0

    #@3
    .line 353
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 355
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 356
    return v3

    #@8
    .line 358
    :cond_1
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 359
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 361
    check-cast v0, Landroid/printservice/PrintJob;

    #@16
    .line 362
    .local v0, "other":Landroid/printservice/PrintJob;
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@18
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, v0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1e
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    return v1
.end method

.method public fail(Ljava/lang/String;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    #@0
    .prologue
    .line 255
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 256
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 257
    const/4 v0, 0x6

    #@a
    invoke-direct {p0, v0, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 259
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 346
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 347
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedIntOption(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 323
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 324
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDocument()Landroid/printservice/PrintDocument;
    .locals 1

    #@0
    .prologue
    .line 94
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 95
    iget-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    #@5
    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 58
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@5
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .locals 5

    #@0
    .prologue
    .line 72
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 73
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 74
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@b
    return-object v2

    #@c
    .line 76
    :cond_0
    const/4 v0, 0x0

    #@d
    .line 78
    .local v0, "info":Landroid/print/PrintJobInfo;
    :try_start_0
    iget-object v2, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@f
    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@11
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v2, v3}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v0

    #@19
    .line 82
    .end local v0    # "info":Landroid/print/PrintJobInfo;
    :goto_0
    if-eqz v0, :cond_1

    #@1b
    .line 83
    iput-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1d
    .line 85
    :cond_1
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1f
    return-object v2

    #@20
    .line 79
    .restart local v0    # "info":Landroid/print/PrintJobInfo;
    :catch_0
    move-exception v1

    #@21
    .line 80
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintJob"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Couldn\'t get info for job: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    iget-object v4, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@32
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 312
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 313
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 336
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->hasAdvancedOption(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@2
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isBlocked()Z
    .locals 2

    #@0
    .prologue
    .line 138
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 139
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x4

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    #@0
    .prologue
    .line 177
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 178
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x7

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    #@0
    .prologue
    .line 151
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 152
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x5

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    #@0
    .prologue
    .line 164
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 165
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x6

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isQueued()Z
    .locals 2

    #@0
    .prologue
    .line 108
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 109
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x2

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    #@0
    .prologue
    .line 123
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 124
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x3

    #@c
    if-ne v0, v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 292
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@4
    .line 293
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 294
    return v4

    #@b
    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@d
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@f
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 298
    :catch_0
    move-exception v0

    #@19
    .line 299
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Error setting tag for job: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@2a
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 301
    return v4
.end method

.method public start()Z
    .locals 3

    #@0
    .prologue
    .line 192
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 193
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    .line 194
    .local v0, "state":I
    const/4 v1, 0x2

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 195
    const/4 v1, 0x4

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 196
    :cond_0
    const/4 v1, 0x3

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {p0, v1, v2}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 198
    :cond_1
    const/4 v1, 0x0

    #@19
    return v1
.end method
