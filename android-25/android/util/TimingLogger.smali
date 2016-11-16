.class public Landroid/util/TimingLogger;
.super Ljava/lang/Object;
.source "TimingLogger.java"


# instance fields
.field private mDisabled:Z

.field private mLabel:Ljava/lang/String;

.field mSplitLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSplits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/util/TimingLogger;->reset(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 76
    return-void
.end method


# virtual methods
.method public addSplit(Ljava/lang/String;)V
    .locals 4
    .param p1, "splitLabel"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iget-boolean v2, p0, Landroid/util/TimingLogger;->mDisabled:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    return-void

    #@5
    .line 124
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    .line 125
    .local v0, "now":J
    iget-object v2, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 126
    iget-object v2, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 122
    return-void
.end method

.method public dumpToLog()V
    .locals 12

    #@0
    .prologue
    .line 135
    iget-boolean v8, p0, Landroid/util/TimingLogger;->mDisabled:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    return-void

    #@5
    .line 136
    :cond_0
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    #@7
    new-instance v9, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    #@e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v9

    #@12
    const-string/jumbo v10, ": begin"

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v9

    #@1d
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 137
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@22
    const/4 v9, 0x0

    #@23
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v8

    #@27
    check-cast v8, Ljava/lang/Long;

    #@29
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@2c
    move-result-wide v0

    #@2d
    .line 138
    .local v0, "first":J
    move-wide v4, v0

    #@2e
    .line 139
    .local v4, "now":J
    const/4 v2, 0x1

    #@2f
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v8

    #@35
    if-ge v2, v8, :cond_1

    #@37
    .line 140
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v8

    #@3d
    check-cast v8, Ljava/lang/Long;

    #@3f
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@42
    move-result-wide v4

    #@43
    .line 141
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Ljava/lang/String;

    #@4b
    .line 142
    .local v3, "splitLabel":Ljava/lang/String;
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@4d
    add-int/lit8 v9, v2, -0x1

    #@4f
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v8

    #@53
    check-cast v8, Ljava/lang/Long;

    #@55
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@58
    move-result-wide v6

    #@59
    .line 144
    .local v6, "prev":J
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    #@5b
    new-instance v9, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    #@62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    const-string/jumbo v10, ":      "

    #@69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v9

    #@6d
    sub-long v10, v4, v6

    #@6f
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    const-string/jumbo v10, " ms, "

    #@76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 139
    add-int/lit8 v2, v2, 0x1

    #@87
    goto :goto_0

    #@88
    .line 146
    .end local v3    # "splitLabel":Ljava/lang/String;
    .end local v6    # "prev":J
    :cond_1
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    #@8a
    new-instance v9, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    #@91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v9

    #@95
    const-string/jumbo v10, ": end, "

    #@98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    sub-long v10, v4, v0

    #@9e
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    const-string/jumbo v10, " ms"

    #@a5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v9

    #@ad
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    .line 134
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 103
    iget-object v0, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    iput-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    #@d
    .line 104
    iget-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    return-void

    #@12
    .line 103
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 105
    :cond_1
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@16
    if-nez v0, :cond_2

    #@18
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@1f
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    #@26
    .line 112
    :goto_1
    invoke-virtual {p0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    #@29
    .line 102
    return-void

    #@2a
    .line 109
    :cond_2
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2f
    .line 110
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@34
    goto :goto_1
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    #@2
    .line 90
    iput-object p2, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    #@4
    .line 91
    invoke-virtual {p0}, Landroid/util/TimingLogger;->reset()V

    #@7
    .line 88
    return-void
.end method
