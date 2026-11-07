.class public Landroid/util/TimingLogger;
.super Ljava/lang/Object;
.source "TimingLogger.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDisabled:Z

.field private greylist-max-o mLabel:Ljava/lang/String;

.field greylist-max-o mSplitLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSplits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTag:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/util/TimingLogger;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist addSplit(Ljava/lang/String;)V
    .registers 6
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 130
    iget-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 131
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 132
    .local v0, "now":J
    iget-object v2, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public whitelist dumpToLog()V
    .registers 13

    .line 142
    iget-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 143
    :cond_5
    iget-object v0, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 145
    .local v0, "first":J
    move-wide v2, v0

    .line 146
    .local v2, "now":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2e
    iget-object v5, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_85

    .line 147
    iget-object v5, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 148
    iget-object v5, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, "splitLabel":Ljava/lang/String;
    iget-object v6, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 151
    .local v6, "prev":J
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v5    # "splitLabel":Ljava/lang/String;
    .end local v6    # "prev":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 153
    .end local v4    # "i":I
    :cond_85
    iget-object v4, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": end, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public whitelist reset()V
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    .line 111
    iget-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    if-eqz v0, :cond_10

    return-void

    .line 112
    :cond_10
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    if-nez v0, :cond_23

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    goto :goto_2d

    .line 116
    :cond_23
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    :goto_2d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public whitelist reset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroid/util/TimingLogger;->reset()V

    .line 99
    return-void
.end method
