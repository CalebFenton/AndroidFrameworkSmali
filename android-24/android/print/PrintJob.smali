.class public final Landroid/print/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintJobInfo;
    .param p2, "printManager"    # Landroid/print/PrintManager;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@5
    .line 41
    iput-object p2, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    #@7
    .line 39
    return-void
.end method

.method private isInImmutableState()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 181
    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@3
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    #@6
    move-result v0

    #@7
    .line 182
    .local v0, "state":I
    const/4 v2, 0x5

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 183
    const/4 v2, 0x7

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 182
    :cond_0
    :goto_0
    return v1

    #@e
    .line 183
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    .line 85
    .local v0, "state":I
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 86
    const/4 v1, 0x3

    #@c
    if-ne v0, v1, :cond_2

    #@e
    .line 89
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    #@10
    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@12
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->cancelPrintJob(Landroid/print/PrintJobId;)V

    #@19
    .line 83
    :cond_1
    return-void

    #@1a
    .line 87
    :cond_2
    const/4 v1, 0x4

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 88
    const/4 v1, 0x6

    #@1e
    if-ne v0, v1, :cond_1

    #@20
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 188
    if-ne p0, p1, :cond_0

    #@3
    .line 189
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 191
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 192
    return v3

    #@8
    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintJob;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 195
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 197
    check-cast v0, Landroid/print/PrintJob;

    #@16
    .line 198
    .local v0, "other":Landroid/print/PrintJob;
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@18
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, v0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1e
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    return v1
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@2
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .locals 3

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Landroid/print/PrintJob;->isInImmutableState()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 65
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@8
    return-object v1

    #@9
    .line 67
    :cond_0
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    #@b
    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@d
    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    #@14
    move-result-object v0

    #@15
    .line 68
    .local v0, "info":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_1

    #@17
    .line 69
    iput-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@19
    .line 71
    :cond_1
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@1b
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 203
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@2
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@5
    move-result-object v0

    #@6
    .line 205
    .local v0, "printJobId":Landroid/print/PrintJobId;
    if-nez v0, :cond_0

    #@8
    .line 206
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isBlocked()Z
    .locals 2

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x4

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x7

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    #@0
    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x5

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    #@0
    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x6

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isQueued()Z
    .locals 2

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x2

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public restart()V
    .locals 2

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/print/PrintJob;->isFailed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 101
    iget-object v0, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    #@8
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    #@a
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->restartPrintJob(Landroid/print/PrintJobId;)V

    #@11
    .line 99
    :cond_0
    return-void
.end method
