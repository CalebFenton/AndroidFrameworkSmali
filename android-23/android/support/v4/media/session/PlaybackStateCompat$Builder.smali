.class public final Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
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
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mRate:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 760
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    #@a
    .line 769
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    #@e
    .line 775
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2
    .param p1, "source"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    #@0
    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 760
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    #@a
    .line 769
    const-wide/16 v0, -0x1

    #@c
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    #@e
    .line 785
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get8(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    #@14
    .line 786
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get6(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    #@1a
    .line 787
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get7(Landroid/support/v4/media/session/PlaybackStateCompat;)F

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    #@20
    .line 788
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get9(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    #@23
    move-result-wide v0

    #@24
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    #@26
    .line 789
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get2(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    #@29
    move-result-wide v0

    #@2a
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    #@2c
    .line 790
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get0(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    #@2f
    move-result-wide v0

    #@30
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    #@32
    .line 791
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get4(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    #@38
    .line 792
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get3(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    #@3b
    move-result-object v0

    #@3c
    if-eqz v0, :cond_0

    #@3e
    .line 793
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    #@40
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get3(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    #@43
    move-result-object v1

    #@44
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@47
    .line 795
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get1(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    #@4a
    move-result-wide v0

    #@4b
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    #@4d
    .line 796
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->-get5(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@53
    .line 784
    return-void
.end method


# virtual methods
.method public addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 2
    .param p1, "customAction"    # Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    #@0
    .prologue
    .line 952
    if-nez p1, :cond_0

    #@2
    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 954
    const-string/jumbo v1, "You may not add a null CustomAction to PlaybackStateCompat."

    #@7
    .line 953
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 956
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 957
    return-object p0
.end method

.method public addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 937
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v5, v4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)V

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public build()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 19

    #@0
    .prologue
    .line 998
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    #@2
    move-object/from16 v0, p0

    #@4
    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    #@6
    move-object/from16 v0, p0

    #@8
    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    #@a
    move-object/from16 v0, p0

    #@c
    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    #@e
    .line 999
    move-object/from16 v0, p0

    #@10
    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    #@12
    move-object/from16 v0, p0

    #@14
    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    #@1e
    .line 1000
    move-object/from16 v0, p0

    #@20
    iget-object v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    #@22
    move-object/from16 v0, p0

    #@24
    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@2a
    move-object/from16 v17, v0

    #@2c
    .line 998
    const/16 v18, 0x0

    #@2e
    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@31
    return-object v2
.end method

.method public setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 1
    .param p1, "capabilities"    # J

    #@0
    .prologue
    .line 912
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    #@2
    .line 913
    return-object p0
.end method

.method public setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 968
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    #@2
    .line 969
    return-object p0
.end method

.method public setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 1
    .param p1, "bufferPosition"    # J

    #@0
    .prologue
    .line 885
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    #@2
    .line 886
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 979
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    #@2
    .line 980
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 990
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 991
    return-object p0
.end method

.method public setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 8
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F

    #@0
    .prologue
    .line 831
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
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "updateTime"    # J

    #@0
    .prologue
    .line 870
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    #@2
    .line 871
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    #@4
    .line 872
    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    #@6
    .line 873
    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    #@8
    .line 874
    return-object p0
.end method
