.class Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getActions(Ljava/lang/Object;)J
    .locals 2
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActions()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getActiveQueueItemId(Ljava/lang/Object;)J
    .locals 2
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getBufferedPosition(Ljava/lang/Object;)J
    .locals 2
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 36
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getCustomActions(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "stateObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 56
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getLastPositionUpdateTime(Ljava/lang/Object;)J
    .locals 2
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getPlaybackSpeed(Ljava/lang/Object;)F
    .locals 1
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getPosition(Ljava/lang/Object;)J
    .locals 2
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 32
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getState(Ljava/lang/Object;)I
    .locals 1
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 28
    check-cast p0, Landroid/media/session/PlaybackState;

    #@2
    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;
    .locals 11
    .param p0, "state"    # I
    .param p1, "position"    # J
    .param p3, "bufferedPosition"    # J
    .param p5, "speed"    # F
    .param p6, "actions"    # J
    .param p8, "errorMessage"    # Ljava/lang/CharSequence;
    .param p9, "updateTime"    # J
    .param p12, "activeItemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    #@2
    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    #@5
    .local v2, "stateObj":Landroid/media/session/PlaybackState$Builder;
    move v3, p0

    #@6
    move-wide v4, p1

    #@7
    move/from16 v6, p5

    #@9
    move-wide/from16 v7, p9

    #@b
    .line 68
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    #@e
    .line 69
    invoke-virtual {v2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    #@11
    .line 70
    move-wide/from16 v0, p6

    #@13
    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    #@16
    .line 71
    move-object/from16 v0, p8

    #@18
    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    #@1b
    .line 72
    invoke-interface/range {p11 .. p11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v10

    #@1f
    .local v10, "customAction$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v9

    #@29
    .line 73
    .local v9, "customAction":Ljava/lang/Object;
    check-cast v9, Landroid/media/session/PlaybackState$CustomAction;

    #@2b
    .end local v9    # "customAction":Ljava/lang/Object;
    invoke-virtual {v2, v9}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    #@2e
    goto :goto_0

    #@2f
    .line 75
    :cond_0
    move-wide/from16 v0, p12

    #@31
    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    #@34
    .line 76
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    #@37
    move-result-object v3

    #@38
    return-object v3
.end method
