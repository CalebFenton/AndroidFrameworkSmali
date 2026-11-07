.class Landroid/media/UnstyledTextExtractor;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$OnTokenListener;


# instance fields
.field blacklist mCurrentLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLastTimestamp:J

.field blacklist mLine:Ljava/lang/StringBuilder;

.field blacklist mLines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 106
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    .line 107
    return-void
.end method

.method private blacklist init()V
    .registers 4

    .line 110
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 112
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist getText()[[Landroid/media/TextTrackCueSpan;
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 156
    :cond_10
    invoke-virtual {p0}, Landroid/media/UnstyledTextExtractor;->onLineEnd()V

    .line 158
    :cond_13
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    .line 159
    .local v0, "lines":[[Landroid/media/TextTrackCueSpan;
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    .line 161
    return-object v0
.end method

.method public blacklist onData(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return-void
.end method

.method public blacklist onEnd(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 125
    return-void
.end method

.method public blacklist onLineEnd()V
    .registers 6

    .line 141
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 142
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    new-instance v1, Landroid/media/TextTrackCueSpan;

    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    invoke-direct {v1, v2, v3, v4}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 147
    :cond_26
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    .line 148
    .local v0, "spans":[Landroid/media/TextTrackCueSpan;
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 150
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/String;
    .param p3, "annotation"    # Ljava/lang/String;

    .line 122
    return-void
.end method

.method public blacklist onTimeStamp(J)V
    .registers 8
    .param p1, "timestampMs"    # J

    .line 130
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2c

    .line 131
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    new-instance v1, Landroid/media/TextTrackCueSpan;

    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    invoke-direct {v1, v2, v3, v4}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 135
    :cond_2c
    iput-wide p1, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 136
    return-void
.end method
