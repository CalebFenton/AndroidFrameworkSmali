.class Landroid/media/UnstyledTextExtractor;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$OnTokenListener;


# instance fields
.field mCurrentLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field

.field mLastTimestamp:J

.field mLine:Ljava/lang/StringBuilder;

.field mLines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@a
    .line 99
    new-instance v0, Ljava/util/Vector;

    #@c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    #@11
    .line 100
    new-instance v0, Ljava/util/Vector;

    #@13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@16
    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@18
    .line 104
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    #@1b
    .line 103
    return-void
.end method

.method private init()V
    .locals 3

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@c
    .line 109
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    #@e
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    #@11
    .line 110
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@13
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    #@16
    .line 111
    const-wide/16 v0, -0x1

    #@18
    iput-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    #@1a
    .line 107
    return-void
.end method


# virtual methods
.method public getText()[[Landroid/media/TextTrackCueSpan;
    .locals 2

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v1

    #@6
    if-gtz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@d
    move-result v1

    #@e
    if-lez v1, :cond_1

    #@10
    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/media/UnstyledTextExtractor;->onLineEnd()V

    #@13
    .line 156
    :cond_1
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    #@15
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@18
    move-result v1

    #@19
    new-array v0, v1, [[Landroid/media/TextTrackCueSpan;

    #@1b
    .line 157
    .local v0, "lines":[[Landroid/media/TextTrackCueSpan;
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    #@1d
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@20
    .line 158
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    #@23
    .line 159
    return-object v0
.end method

.method public onData(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    .line 115
    return-void
.end method

.method public onEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public onLineEnd()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 139
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 140
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@b
    .line 141
    new-instance v2, Landroid/media/TextTrackCueSpan;

    #@d
    iget-object v3, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    iget-wide v4, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    #@15
    invoke-direct {v2, v3, v4, v5}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    #@18
    .line 140
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@1b
    .line 142
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@1d
    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@22
    move-result v2

    #@23
    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@26
    .line 145
    :cond_0
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@28
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@2b
    move-result v1

    #@2c
    new-array v0, v1, [Landroid/media/TextTrackCueSpan;

    #@2e
    .line 146
    .local v0, "spans":[Landroid/media/TextTrackCueSpan;
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@30
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@33
    .line 147
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@35
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    #@38
    .line 148
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    #@3a
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@3d
    .line 137
    return-void
.end method

.method public onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/String;
    .param p3, "annotation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    return-void
.end method

.method public onTimeStamp(J)V
    .locals 7
    .param p1, "timestampMs"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 128
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    iget-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    #@b
    cmp-long v0, p1, v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 129
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    #@11
    .line 130
    new-instance v1, Landroid/media/TextTrackCueSpan;

    #@13
    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    iget-wide v4, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    #@1b
    invoke-direct {v1, v2, v4, v5}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    #@1e
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@21
    .line 131
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@23
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@2c
    .line 133
    :cond_0
    iput-wide p1, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    #@2e
    .line 126
    return-void
.end method
