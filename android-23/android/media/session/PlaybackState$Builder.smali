.class public final Landroid/media/session/PlaybackState$Builder;
.super Ljava/lang/Object;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:J

.field private mActiveItemId:J

.field private mBufferedPosition:J

.field private final mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mSpeed:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    #@a
    .line 763
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    #@e
    .line 769
    return-void
.end method

.method public constructor <init>(Landroid/media/session/PlaybackState;)V
    .locals 2
    .param p1, "from"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    #@a
    .line 763
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    #@e
    .line 779
    if-nez p1, :cond_0

    #@10
    .line 780
    return-void

    #@11
    .line 782
    :cond_0
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get8(Landroid/media/session/PlaybackState;)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/media/session/PlaybackState$Builder;->mState:I

    #@17
    .line 783
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get6(Landroid/media/session/PlaybackState;)J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    #@1d
    .line 784
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get2(Landroid/media/session/PlaybackState;)J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    #@23
    .line 785
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get7(Landroid/media/session/PlaybackState;)F

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    #@29
    .line 786
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get0(Landroid/media/session/PlaybackState;)J

    #@2c
    move-result-wide v0

    #@2d
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    #@2f
    .line 787
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get3(Landroid/media/session/PlaybackState;)Ljava/util/List;

    #@32
    move-result-object v0

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 788
    iget-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    #@37
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get3(Landroid/media/session/PlaybackState;)Ljava/util/List;

    #@3a
    move-result-object v1

    #@3b
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3e
    .line 790
    :cond_1
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get4(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    #@44
    .line 791
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get9(Landroid/media/session/PlaybackState;)J

    #@47
    move-result-wide v0

    #@48
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    #@4a
    .line 792
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get1(Landroid/media/session/PlaybackState;)J

    #@4d
    move-result-wide v0

    #@4e
    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    #@50
    .line 793
    invoke-static {p1}, Landroid/media/session/PlaybackState;->-get5(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    #@56
    .line 778
    return-void
.end method


# virtual methods
.method public addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;
    .locals 2
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;

    #@0
    .prologue
    .line 934
    if-nez p1, :cond_0

    #@2
    .line 935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 936
    const-string/jumbo v1, "You may not add a null CustomAction to PlaybackState."

    #@7
    .line 935
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 938
    :cond_0
    iget-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 939
    return-object p0
.end method

.method public addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/media/session/PlaybackState$Builder;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 919
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction;

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v5, v4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$CustomAction;)V

    #@a
    invoke-virtual {p0, v0}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public build()Landroid/media/session/PlaybackState;
    .locals 19

    #@0
    .prologue
    .line 998
    new-instance v2, Landroid/media/session/PlaybackState;

    #@2
    move-object/from16 v0, p0

    #@4
    iget v3, v0, Landroid/media/session/PlaybackState$Builder;->mState:I

    #@6
    move-object/from16 v0, p0

    #@8
    iget-wide v4, v0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    #@a
    move-object/from16 v0, p0

    #@c
    iget-wide v6, v0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    #@e
    move-object/from16 v0, p0

    #@10
    iget v8, v0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    #@12
    move-object/from16 v0, p0

    #@14
    iget-wide v9, v0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    #@16
    .line 999
    move-object/from16 v0, p0

    #@18
    iget-wide v11, v0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v13, v0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-wide v14, v0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    #@26
    move-object/from16 v16, v0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    #@2c
    move-object/from16 v17, v0

    #@2e
    .line 998
    const/16 v18, 0x0

    #@30
    invoke-direct/range {v2 .. v18}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;Landroid/media/session/PlaybackState;)V

    #@33
    return-object v2
.end method

.method public setActions(J)Landroid/media/session/PlaybackState$Builder;
    .locals 1
    .param p1, "actions"    # J

    #@0
    .prologue
    .line 894
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    #@2
    .line 895
    return-object p0
.end method

.method public setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 964
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    #@2
    .line 965
    return-object p0
.end method

.method public setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;
    .locals 1
    .param p1, "bufferedPosition"    # J

    #@0
    .prologue
    .line 952
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    #@2
    .line 953
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 976
    iput-object p1, p0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    #@2
    .line 977
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 987
    iput-object p1, p0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 988
    return-object p0
.end method

.method public setState(IJF)Landroid/media/session/PlaybackState$Builder;
    .locals 8
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F

    #@0
    .prologue
    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v5

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move-wide v2, p2

    #@7
    move v4, p4

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public setState(IJFJ)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "updateTime"    # J

    #@0
    .prologue
    .line 830
    iput p1, p0, Landroid/media/session/PlaybackState$Builder;->mState:I

    #@2
    .line 831
    iput-wide p2, p0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    #@4
    .line 832
    iput-wide p5, p0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    #@6
    .line 833
    iput p4, p0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    #@8
    .line 834
    return-object p0
.end method
