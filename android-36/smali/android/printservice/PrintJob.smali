.class public final Landroid/printservice/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrintJob"


# instance fields
.field private greylist-max-o mCachedInfo:Landroid/print/PrintJobInfo;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDocument:Landroid/printservice/PrintDocument;

.field private final greylist-max-o mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jobInfo"    # Landroid/print/PrintJobInfo;
    .param p3, "client"    # Landroid/printservice/IPrintServiceClient;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 59
    iput-object p3, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    .line 60
    new-instance v0, Landroid/printservice/PrintDocument;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    .line 61
    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Landroid/printservice/PrintDocument;-><init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V

    iput-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    .line 62
    return-void
.end method

.method private greylist-max-o isInImmutableState()Z
    .registers 3

    .line 460
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 461
    .local v0, "state":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    return v1
.end method

.method private greylist-max-o setState(ILjava/lang/String;)Z
    .registers 6
    .param p1, "state"    # I
    .param p2, "error"    # Ljava/lang/String;

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/printservice/IPrintServiceClient;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 472
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 473
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0, p2}, Landroid/print/PrintJobInfo;->setStatus(Ljava/lang/CharSequence;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1b

    .line 474
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_1a
    goto :goto_3a

    .line 476
    :catch_1b
    move-exception v0

    .line 477
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting the state of job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrintJob"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist block(Ljava/lang/String;)Z
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 241
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 242
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 243
    .local v0, "info":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    .line 244
    .local v1, "state":I
    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v1, v2, :cond_14

    if-ne v1, v3, :cond_12

    goto :goto_14

    .line 247
    :cond_12
    const/4 v2, 0x0

    return v2

    .line 245
    :cond_14
    :goto_14
    invoke-direct {p0, v3, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public whitelist cancel()Z
    .registers 3

    .line 303
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 304
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-nez v0, :cond_10

    .line 305
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 307
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist complete()Z
    .registers 3

    .line 260
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 261
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 262
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 264
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 441
    if-ne p0, p1, :cond_4

    .line 442
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 445
    return v0

    .line 447
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 448
    return v0

    .line 450
    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/printservice/PrintJob;

    .line 451
    .local v0, "other":Landroid/printservice/PrintJob;
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, v0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist fail(Ljava/lang/String;)Z
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 282
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 283
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 284
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 286
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdvancedIntOption(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 435
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 436
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedIntOption(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 410
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 411
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDocument()Landroid/printservice/PrintDocument;
    .registers 2

    .line 110
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 111
    iget-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    return-object v0
.end method

.method public whitelist getId()Landroid/print/PrintJobId;
    .registers 2

    .line 71
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 72
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInfo()Landroid/print/PrintJobInfo;
    .registers 5

    .line 87
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 88
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v0

    .line 91
    :cond_c
    const/4 v0, 0x0

    .line 93
    .local v0, "info":Landroid/print/PrintJobInfo;
    :try_start_d
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1b

    move-object v0, v1

    .line 96
    goto :goto_3a

    .line 94
    :catch_1b
    move-exception v1

    .line 95
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get info for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrintJob"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_3a
    if-eqz v0, :cond_3e

    .line 98
    iput-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 100
    :cond_3e
    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v1
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 398
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 399
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasAdvancedOption(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 423
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 424
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->hasAdvancedOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isBlocked()Z
    .registers 3

    .line 157
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 158
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isCancelled()Z
    .registers 3

    .line 199
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 200
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isCompleted()Z
    .registers 3

    .line 171
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 172
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isFailed()Z
    .registers 3

    .line 185
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 186
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isQueued()Z
    .registers 3

    .line 125
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 126
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isStarted()Z
    .registers 3

    .line 141
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 142
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist setProgress(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 317
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 320
    :try_start_3
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    .line 323
    goto :goto_2e

    .line 321
    :catch_f
    move-exception v0

    .line 322
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting progress for job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrintJob"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public whitelist setStatus(I)V
    .registers 5
    .param p1, "statusResId"    # I

    .line 356
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 359
    :try_start_3
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-interface {v0, v1, p1, v2}, Landroid/printservice/IPrintServiceClient;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15

    .line 363
    goto :goto_34

    .line 361
    :catch_15
    move-exception v0

    .line 362
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting status for job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrintJob"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public whitelist setStatus(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 337
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 340
    :try_start_3
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    .line 343
    goto :goto_2e

    .line 341
    :catch_f
    move-exception v0

    .line 342
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting status for job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrintJob"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public whitelist setTag(Ljava/lang/String;)Z
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 377
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 378
    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 379
    return v1

    .line 382
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/printservice/IPrintServiceClient;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_18

    return v0

    .line 383
    :catch_18
    move-exception v0

    .line 384
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting tag for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrintJob"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "re":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist start()Z
    .registers 4

    .line 218
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 219
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 220
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    goto :goto_14

    .line 224
    :cond_12
    const/4 v1, 0x0

    return v1

    .line 222
    :cond_14
    :goto_14
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method
