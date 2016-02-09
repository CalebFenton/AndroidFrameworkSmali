.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$Actions;,
        Landroid/support/v4/media/session/PlaybackStateCompat$State;,
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Builder;,
        Landroid/support/v4/media/session/PlaybackStateCompat$1;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_FROM_URI:J = 0x2000L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1


# instance fields
.field private final mActions:J

.field private final mActiveItemId:J

.field private final mBufferedPosition:J

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mPosition:J

.field private final mSpeed:F

.field private final mState:I

.field private mStateObj:Ljava/lang/Object;

.field private final mUpdateTime:J


# direct methods
.method static synthetic -get0(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Landroid/support/v4/media/session/PlaybackStateCompat;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/support/v4/media/session/PlaybackStateCompat;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 527
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$1;-><init>()V

    #@5
    .line 526
    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "bufferedPosition"    # J
    .param p6, "rate"    # F
    .param p7, "actions"    # J
    .param p9, "errorMessage"    # Ljava/lang/CharSequence;
    .param p10, "updateTime"    # J
    .param p13, "activeItemId"    # J
    .param p15, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p12, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@5
    .line 276
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@7
    .line 277
    iput-wide p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@9
    .line 278
    iput p6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@b
    .line 279
    iput-wide p7, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@d
    .line 280
    iput-object p9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@f
    .line 281
    iput-wide p10, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@11
    .line 282
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1, p12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@18
    .line 283
    iput-wide p13, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@1a
    .line 284
    move-object/from16 v0, p15

    #@1c
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    #@1e
    .line 274
    return-void
.end method

.method synthetic constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "bufferedPosition"    # J
    .param p6, "rate"    # F
    .param p7, "actions"    # J
    .param p9, "errorMessage"    # Ljava/lang/CharSequence;
    .param p10, "updateTime"    # J
    .param p12, "customActions"    # Ljava/util/List;
    .param p13, "activeItemId"    # J
    .param p15, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p15}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@9
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@f
    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@15
    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@1b
    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@21
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@27
    .line 294
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/CharSequence;

    #@2f
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@31
    .line 295
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@39
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v0

    #@3d
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@3f
    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    #@45
    .line 287
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21
    .param p0, "stateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 464
    if-eqz p0, :cond_0

    #@2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v4, 0x15

    #@6
    if-ge v3, v4, :cond_1

    #@8
    .line 465
    :cond_0
    const/4 v3, 0x0

    #@9
    return-object v3

    #@a
    .line 468
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getCustomActions(Ljava/lang/Object;)Ljava/util/List;

    #@d
    move-result-object v20

    #@e
    .line 469
    .local v20, "customActionObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v14, 0x0

    #@f
    .line 470
    .local v14, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;>;"
    if-eqz v20, :cond_2

    #@11
    .line 471
    new-instance v14, Ljava/util/ArrayList;

    #@13
    .end local v14    # "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 472
    .local v14, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;>;"
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v19

    #@1e
    .local v19, "customActionObj$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v18

    #@28
    .line 473
    .local v18, "customActionObj":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->fromCustomAction(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 476
    .end local v14    # "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;>;"
    .end local v18    # "customActionObj":Ljava/lang/Object;
    .end local v19    # "customActionObj$iterator":Ljava/util/Iterator;
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@32
    const/16 v4, 0x16

    #@34
    if-lt v3, v4, :cond_3

    #@36
    .line 477
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi22;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    #@39
    move-result-object v17

    #@3a
    .line 479
    :goto_1
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    #@3c
    .line 480
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getState(Ljava/lang/Object;)I

    #@3f
    move-result v3

    #@40
    .line 481
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getPosition(Ljava/lang/Object;)J

    #@43
    move-result-wide v4

    #@44
    .line 482
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getBufferedPosition(Ljava/lang/Object;)J

    #@47
    move-result-wide v6

    #@48
    .line 483
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getPlaybackSpeed(Ljava/lang/Object;)F

    #@4b
    move-result v8

    #@4c
    .line 484
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getActions(Ljava/lang/Object;)J

    #@4f
    move-result-wide v9

    #@50
    .line 485
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@53
    move-result-object v11

    #@54
    .line 486
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getLastPositionUpdateTime(Ljava/lang/Object;)J

    #@57
    move-result-wide v12

    #@58
    .line 488
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getActiveQueueItemId(Ljava/lang/Object;)J

    #@5b
    move-result-wide v15

    #@5c
    .line 479
    invoke-direct/range {v2 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    #@5f
    .line 490
    .local v2, "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    move-object/from16 v0, p0

    #@61
    iput-object v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    #@63
    .line 491
    return-object v2

    #@64
    .line 478
    .end local v2    # "state":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_3
    const/16 v17, 0x0

    #@66
    .local v17, "extras":Landroid/os/Bundle;
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 318
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActions()J
    .locals 2

    #@0
    .prologue
    .line 405
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@2
    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 2

    #@0
    .prologue
    .line 442
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@2
    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 2

    #@0
    .prologue
    .line 369
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@2
    return-wide v0
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 430
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@2
    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    #@0
    .prologue
    .line 380
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@2
    return v0
.end method

.method public getPlaybackState()Ljava/lang/Object;
    .locals 19

    #@0
    .prologue
    .line 503
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    #@4
    if-nez v3, :cond_0

    #@6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v4, 0x15

    #@a
    if-ge v3, v4, :cond_1

    #@c
    .line 504
    :cond_0
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    #@10
    return-object v3

    #@11
    .line 507
    :cond_1
    const/4 v14, 0x0

    #@12
    .line 508
    .local v14, "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@14
    iget-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 509
    new-instance v14, Ljava/util/ArrayList;

    #@1a
    .end local v14    # "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@21
    move-result v3

    #@22
    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@25
    .line 510
    .local v14, "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v18

    #@2d
    .local v18, "customAction$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    #@39
    .line 511
    .local v2, "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getCustomAction()Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0

    #@41
    .line 514
    .end local v2    # "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .end local v14    # "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v18    # "customAction$iterator":Ljava/util/Iterator;
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@43
    const/16 v4, 0x16

    #@45
    if-lt v3, v4, :cond_3

    #@47
    .line 515
    move-object/from16 v0, p0

    #@49
    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@53
    .line 516
    move-object/from16 v0, p0

    #@55
    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@57
    move-object/from16 v0, p0

    #@59
    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@63
    .line 517
    move-object/from16 v0, p0

    #@65
    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    #@6b
    move-object/from16 v17, v0

    #@6d
    .line 515
    invoke-static/range {v3 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompatApi22;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    #@70
    move-result-object v3

    #@71
    move-object/from16 v0, p0

    #@73
    iput-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    #@75
    .line 523
    :goto_1
    move-object/from16 v0, p0

    #@77
    iget-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    #@79
    return-object v3

    #@7a
    .line 519
    :cond_3
    move-object/from16 v0, p0

    #@7c
    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@82
    move-object/from16 v0, p0

    #@84
    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@86
    .line 520
    move-object/from16 v0, p0

    #@88
    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@8e
    move-object/from16 v0, p0

    #@90
    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@92
    move-object/from16 v0, p0

    #@94
    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@96
    .line 521
    move-object/from16 v0, p0

    #@98
    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@9a
    .line 519
    invoke-static/range {v3 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    #@9d
    move-result-object v3

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput-object v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    #@a2
    goto :goto_1
.end method

.method public getPosition()J
    .locals 2

    #@0
    .prologue
    .line 360
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@2
    return-wide v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 353
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "PlaybackState {"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 303
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "state="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 304
    const-string/jumbo v1, ", position="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    .line 305
    const-string/jumbo v1, ", buffered position="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    .line 306
    const-string/jumbo v1, ", speed="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@38
    .line 307
    const-string/jumbo v1, ", updated="

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@41
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@44
    .line 308
    const-string/jumbo v1, ", actions="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@4d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@50
    .line 309
    const-string/jumbo v1, ", error="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5c
    .line 310
    const-string/jumbo v1, ", custom actions="

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    .line 311
    const-string/jumbo v1, ", active item id="

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@71
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@74
    .line 312
    const-string/jumbo v1, "}"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 323
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 324
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 325
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 326
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 327
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 328
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 329
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    #@20
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@23
    .line 330
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@28
    .line 331
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 332
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@32
    .line 322
    return-void
.end method
