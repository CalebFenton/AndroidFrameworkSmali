.class public final Landroid/printservice/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintJob"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDocument:Landroid/printservice/PrintDocument;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jobInfo"    # Landroid/print/PrintJobInfo;
    .param p3, "client"    # Landroid/printservice/IPrintServiceClient;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    #@5
    .line 57
    iput-object p2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@7
    .line 58
    iput-object p3, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@9
    .line 59
    new-instance v0, Landroid/printservice/PrintDocument;

    #@b
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@d
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@10
    move-result-object v1

    #@11
    .line 60
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    #@14
    move-result-object v2

    #@15
    .line 59
    invoke-direct {v0, v1, p3, v2}, Landroid/printservice/PrintDocument;-><init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V

    #@18
    iput-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    #@1a
    .line 55
    return-void
.end method

.method private isInImmutableState()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 459
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@3
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    #@6
    move-result v0

    #@7
    .line 460
    .local v0, "state":I
    const/4 v2, 0x5

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 461
    const/4 v2, 0x7

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 460
    :cond_0
    :goto_0
    return v1

    #@e
    .line 462
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
    .line 467
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
    .line 471
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@10
    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    #@13
    .line 472
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@15
    invoke-virtual {v1, p2}, Landroid/print/PrintJobInfo;->setStatus(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 473
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 475
    :catch_0
    move-exception v0

    #@1b
    .line 476
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
    .line 478
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
    .line 240
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@4
    .line 241
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@7
    move-result-object v0

    #@8
    .line 242
    .local v0, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@b
    move-result v1

    #@c
    .line 243
    .local v1, "state":I
    const/4 v2, 0x3

    #@d
    if-eq v1, v2, :cond_0

    #@f
    if-ne v1, v3, :cond_1

    #@11
    .line 244
    :cond_0
    invoke-direct {p0, v3, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 246
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method public cancel()Z
    .locals 2

    #@0
    .prologue
    .line 302
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 303
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 304
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
    .line 306
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method public complete()Z
    .locals 2

    #@0
    .prologue
    .line 259
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 260
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->isStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 261
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
    .line 263
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
    .line 440
    if-ne p0, p1, :cond_0

    #@3
    .line 441
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 443
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 444
    return v3

    #@8
    .line 446
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 447
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 449
    check-cast v0, Landroid/printservice/PrintJob;

    #@16
    .line 450
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
    .line 281
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 282
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 283
    const/4 v0, 0x6

    #@a
    invoke-direct {p0, v0, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 285
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
    .line 434
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 435
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
    .line 409
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 410
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
    .line 109
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 110
    iget-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    #@5
    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    #@0
    .prologue
    .line 70
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 71
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
    .line 86
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 87
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 88
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@b
    return-object v2

    #@c
    .line 90
    :cond_0
    const/4 v0, 0x0

    #@d
    .line 92
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
    .line 96
    .end local v0    # "info":Landroid/print/PrintJobInfo;
    :goto_0
    if-eqz v0, :cond_1

    #@1b
    .line 97
    iput-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1d
    .line 99
    :cond_1
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1f
    return-object v2

    #@20
    .line 93
    .restart local v0    # "info":Landroid/print/PrintJobInfo;
    :catch_0
    move-exception v1

    #@21
    .line 94
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
    .line 397
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 398
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
    .line 422
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 423
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
    .line 455
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
    .line 156
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 157
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
    .line 198
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 199
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
    .line 170
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 171
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
    .line 184
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 185
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
    .line 124
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 125
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
    .line 140
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 141
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

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 316
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 319
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@5
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@7
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 315
    :goto_0
    return-void

    #@f
    .line 320
    :catch_0
    move-exception v0

    #@10
    .line 321
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Error setting progress for job: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@21
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 4
    .param p1, "statusResId"    # I

    #@0
    .prologue
    .line 355
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@5
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@7
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@a
    move-result-object v2

    #@b
    .line 359
    iget-object v3, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 358
    invoke-interface {v1, v2, p1, v3}, Landroid/printservice/IPrintServiceClient;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 354
    :goto_0
    return-void

    #@15
    .line 360
    :catch_0
    move-exception v0

    #@16
    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Error setting status for job: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@27
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 336
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 339
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    #@5
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@7
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 335
    :goto_0
    return-void

    #@f
    .line 340
    :catch_0
    move-exception v0

    #@10
    .line 341
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrintJob"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Error setting status for job: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@21
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0
.end method

.method public setTag(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 376
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@4
    .line 377
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 378
    return v4

    #@b
    .line 381
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
    .line 382
    :catch_0
    move-exception v0

    #@19
    .line 383
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
    .line 385
    return v4
.end method

.method public start()Z
    .locals 3

    #@0
    .prologue
    .line 217
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    #@3
    .line 218
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    #@a
    move-result v0

    #@b
    .line 219
    .local v0, "state":I
    const/4 v1, 0x2

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 220
    const/4 v1, 0x4

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 221
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
    .line 223
    :cond_1
    const/4 v1, 0x0

    #@19
    return v1
.end method
