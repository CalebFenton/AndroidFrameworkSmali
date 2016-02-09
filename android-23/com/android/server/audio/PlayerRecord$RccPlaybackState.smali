.class public Lcom/android/server/audio/PlayerRecord$RccPlaybackState;
.super Ljava/lang/Object;
.source "PlayerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RccPlaybackState"
.end annotation


# instance fields
.field public mPositionMs:J

.field public mSpeed:F

.field public mState:I


# direct methods
.method public constructor <init>(IJF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "positionMs"    # J
    .param p4, "speed"    # F

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput p1, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    #@5
    .line 96
    iput-wide p2, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    #@7
    .line 97
    iput p4, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mSpeed:F

    #@9
    .line 94
    return-void
.end method

.method private posToString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 113
    const-string/jumbo v0, "PLAYBACK_POSITION_INVALID"

    #@b
    return-object v0

    #@c
    .line 114
    :cond_0
    iget-wide v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    #@e
    const-wide v2, -0x7fe688e67fe67d00L

    #@13
    cmp-long v0, v0, v2

    #@15
    if-nez v0, :cond_1

    #@17
    .line 115
    const-string/jumbo v0, "PLAYBACK_POSITION_ALWAYS_UNKNOWN"

    #@1a
    return-object v0

    #@1b
    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    iget-wide v2, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    #@22
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v1, "ms"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method private stateToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 144
    const-string/jumbo v0, "[invalid playstate]"

    #@8
    return-object v0

    #@9
    .line 124
    :pswitch_0
    const-string/jumbo v0, "PLAYSTATE_NONE"

    #@c
    return-object v0

    #@d
    .line 126
    :pswitch_1
    const-string/jumbo v0, "PLAYSTATE_STOPPED"

    #@10
    return-object v0

    #@11
    .line 128
    :pswitch_2
    const-string/jumbo v0, "PLAYSTATE_PAUSED"

    #@14
    return-object v0

    #@15
    .line 130
    :pswitch_3
    const-string/jumbo v0, "PLAYSTATE_PLAYING"

    #@18
    return-object v0

    #@19
    .line 132
    :pswitch_4
    const-string/jumbo v0, "PLAYSTATE_FAST_FORWARDING"

    #@1c
    return-object v0

    #@1d
    .line 134
    :pswitch_5
    const-string/jumbo v0, "PLAYSTATE_REWINDING"

    #@20
    return-object v0

    #@21
    .line 136
    :pswitch_6
    const-string/jumbo v0, "PLAYSTATE_SKIPPING_FORWARDS"

    #@24
    return-object v0

    #@25
    .line 138
    :pswitch_7
    const-string/jumbo v0, "PLAYSTATE_SKIPPING_BACKWARDS"

    #@28
    return-object v0

    #@29
    .line 140
    :pswitch_8
    const-string/jumbo v0, "PLAYSTATE_BUFFERING"

    #@2c
    return-object v0

    #@2d
    .line 142
    :pswitch_9
    const-string/jumbo v0, "PLAYSTATE_ERROR"

    #@30
    return-object v0

    #@31
    .line 122
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 101
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    #@3
    .line 102
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mPositionMs:J

    #@7
    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    #@9
    iput v0, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mSpeed:F

    #@b
    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-direct {p0}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->stateToString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->posToString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ", "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mSpeed:F

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, "X"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method
