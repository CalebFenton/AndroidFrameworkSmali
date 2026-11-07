.class public final Landroid/print/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# instance fields
.field private greylist-max-o mCachedInfo:Landroid/print/PrintJobInfo;

.field private final greylist-max-o mPrintManager:Landroid/print/PrintManager;


# direct methods
.method constructor greylist-max-o <init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    .registers 3
    .param p1, "info"    # Landroid/print/PrintJobInfo;
    .param p2, "printManager"    # Landroid/print/PrintManager;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 41
    iput-object p2, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    .line 42
    return-void
.end method

.method private greylist-max-o isInImmutableState()Z
    .registers 3

    .line 181
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 182
    .local v0, "state":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 4

    .line 84
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 85
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1f

    .line 89
    :cond_14
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->cancelPrintJob(Landroid/print/PrintJobId;)V

    .line 91
    :cond_1f
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 188
    if-ne p0, p1, :cond_4

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 192
    return v0

    .line 194
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 195
    return v0

    .line 197
    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/print/PrintJob;

    .line 198
    .local v0, "other":Landroid/print/PrintJob;
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, v0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getId()Landroid/print/PrintJobId;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInfo()Landroid/print/PrintJobInfo;
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/print/PrintJob;->isInImmutableState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v0

    .line 67
    :cond_9
    iget-object v0, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 68
    .local v0, "info":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_19

    .line 69
    iput-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 71
    :cond_19
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 203
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    .line 205
    .local v0, "printJobId":Landroid/print/PrintJobId;
    if-nez v0, :cond_a

    .line 206
    const/4 v1, 0x0

    return v1

    .line 208
    :cond_a
    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v1

    return v1
.end method

.method public whitelist isBlocked()Z
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isCancelled()Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isCompleted()Z
    .registers 3

    .line 152
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isFailed()Z
    .registers 3

    .line 166
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isQueued()Z
    .registers 3

    .line 115
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isStarted()Z
    .registers 3

    .line 128
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist restart()V
    .registers 3

    .line 100
    invoke-virtual {p0}, Landroid/print/PrintJob;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 101
    iget-object v0, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->restartPrintJob(Landroid/print/PrintJobId;)V

    .line 103
    :cond_11
    return-void
.end method
