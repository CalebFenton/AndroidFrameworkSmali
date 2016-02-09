.class public final Landroid/media/session/PlaybackState;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/PlaybackState$CustomAction;,
        Landroid/media/session/PlaybackState$Builder;,
        Landroid/media/session/PlaybackState$1;
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
            "Landroid/media/session/PlaybackState;",
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

.field private static final TAG:Ljava/lang/String; = "PlaybackState"


# instance fields
.field private final mActions:J

.field private final mActiveItemId:J

.field private final mBufferedPosition:J

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mPosition:J

.field private final mSpeed:F

.field private final mState:I

.field private final mUpdateTime:J


# direct methods
.method static synthetic -get0(Landroid/media/session/PlaybackState;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/media/session/PlaybackState;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Landroid/media/session/PlaybackState;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Landroid/media/session/PlaybackState;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/session/PlaybackState;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Landroid/media/session/PlaybackState;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/media/session/PlaybackState;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/media/session/PlaybackState;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 576
    new-instance v0, Landroid/media/session/PlaybackState$1;

    #@2
    invoke-direct {v0}, Landroid/media/session/PlaybackState$1;-><init>()V

    #@5
    .line 575
    sput-object v0, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method private constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "updateTime"    # J
    .param p6, "speed"    # F
    .param p7, "bufferedPosition"    # J
    .param p9, "transportControls"    # J
    .param p12, "activeItemId"    # J
    .param p14, "error"    # Ljava/lang/CharSequence;
    .param p15, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJJ",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;J",
            "Ljava/lang/CharSequence;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 247
    iput p1, p0, Landroid/media/session/PlaybackState;->mState:I

    #@5
    .line 248
    iput-wide p2, p0, Landroid/media/session/PlaybackState;->mPosition:J

    #@7
    .line 249
    iput p6, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    #@9
    .line 250
    iput-wide p4, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    #@b
    .line 251
    iput-wide p7, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    #@d
    .line 252
    iput-wide p9, p0, Landroid/media/session/PlaybackState;->mActions:J

    #@f
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    #@11
    invoke-direct {v1, p11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@14
    iput-object v1, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    #@16
    .line 254
    iput-wide p12, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    #@18
    .line 255
    move-object/from16 v0, p14

    #@1a
    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    #@1c
    .line 256
    move-object/from16 v0, p15

    #@1e
    iput-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    #@20
    .line 246
    return-void
.end method

.method synthetic constructor <init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "updateTime"    # J
    .param p6, "speed"    # F
    .param p7, "bufferedPosition"    # J
    .param p9, "transportControls"    # J
    .param p11, "customActions"    # Ljava/util/List;
    .param p12, "activeItemId"    # J
    .param p14, "error"    # Ljava/lang/CharSequence;
    .param p15, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p15}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/session/PlaybackState;->mState:I

    #@9
    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    #@f
    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    #@15
    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    #@1b
    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    #@21
    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    #@27
    .line 266
    sget-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    #@2f
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@32
    move-result-wide v0

    #@33
    iput-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    #@35
    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    #@3b
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    #@41
    .line 259
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private static getActionForRccFlag(I)J
    .locals 2
    .param p0, "flag"    # I

    #@0
    .prologue
    .line 521
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 543
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 523
    :sswitch_0
    const-wide/16 v0, 0x10

    #@8
    return-wide v0

    #@9
    .line 525
    :sswitch_1
    const-wide/16 v0, 0x8

    #@b
    return-wide v0

    #@c
    .line 527
    :sswitch_2
    const-wide/16 v0, 0x4

    #@e
    return-wide v0

    #@f
    .line 529
    :sswitch_3
    const-wide/16 v0, 0x200

    #@11
    return-wide v0

    #@12
    .line 531
    :sswitch_4
    const-wide/16 v0, 0x2

    #@14
    return-wide v0

    #@15
    .line 533
    :sswitch_5
    const-wide/16 v0, 0x1

    #@17
    return-wide v0

    #@18
    .line 535
    :sswitch_6
    const-wide/16 v0, 0x40

    #@1a
    return-wide v0

    #@1b
    .line 537
    :sswitch_7
    const-wide/16 v0, 0x20

    #@1d
    return-wide v0

    #@1e
    .line 539
    :sswitch_8
    const-wide/16 v0, 0x100

    #@20
    return-wide v0

    #@21
    .line 541
    :sswitch_9
    const-wide/16 v0, 0x80

    #@23
    return-wide v0

    #@24
    .line 521
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getActionsFromRccControlFlags(I)J
    .locals 8
    .param p0, "rccFlags"    # I

    #@0
    .prologue
    .line 494
    const-wide/16 v0, 0x0

    #@2
    .line 495
    .local v0, "actions":J
    const-wide/16 v2, 0x1

    #@4
    .line 496
    .local v2, "flag":J
    :goto_0
    int-to-long v4, p0

    #@5
    cmp-long v4, v2, v4

    #@7
    if-gtz v4, :cond_1

    #@9
    .line 497
    int-to-long v4, p0

    #@a
    and-long/2addr v4, v2

    #@b
    const-wide/16 v6, 0x0

    #@d
    cmp-long v4, v4, v6

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 498
    long-to-int v4, v2

    #@12
    invoke-static {v4}, Landroid/media/session/PlaybackState;->getActionForRccFlag(I)J

    #@15
    move-result-wide v4

    #@16
    or-long/2addr v0, v4

    #@17
    .line 500
    :cond_0
    const/4 v4, 0x1

    #@18
    shl-long/2addr v2, v4

    #@19
    goto :goto_0

    #@1a
    .line 502
    :cond_1
    return-wide v0
.end method

.method public static getRccControlFlagsFromActions(J)I
    .locals 8
    .param p0, "actions"    # J

    #@0
    .prologue
    .line 509
    const/4 v2, 0x0

    #@1
    .line 510
    .local v2, "rccFlags":I
    const-wide/16 v0, 0x1

    #@3
    .line 511
    .local v0, "action":J
    :goto_0
    cmp-long v3, v0, p0

    #@5
    if-gtz v3, :cond_1

    #@7
    const-wide/32 v4, 0x7fffffff

    #@a
    cmp-long v3, v0, v4

    #@c
    if-gez v3, :cond_1

    #@e
    .line 512
    and-long v4, v0, p0

    #@10
    const-wide/16 v6, 0x0

    #@12
    cmp-long v3, v4, v6

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 513
    invoke-static {v0, v1}, Landroid/media/session/PlaybackState;->getRccFlagForAction(J)I

    #@19
    move-result v3

    #@1a
    or-int/2addr v2, v3

    #@1b
    .line 515
    :cond_0
    const/4 v3, 0x1

    #@1c
    shl-long/2addr v0, v3

    #@1d
    goto :goto_0

    #@1e
    .line 517
    :cond_1
    return v2
.end method

.method private static getRccFlagForAction(J)I
    .locals 4
    .param p0, "action"    # J

    #@0
    .prologue
    .line 549
    const-wide/32 v2, 0x7fffffff

    #@3
    cmp-long v1, p0, v2

    #@5
    if-gez v1, :cond_0

    #@7
    long-to-int v0, p0

    #@8
    .line 550
    .local v0, "testAction":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 572
    const/4 v1, 0x0

    #@c
    return v1

    #@d
    .line 549
    .end local v0    # "testAction":I
    :cond_0
    const/4 v0, 0x0

    #@e
    .restart local v0    # "testAction":I
    goto :goto_0

    #@f
    .line 552
    :sswitch_0
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 554
    :sswitch_1
    const/4 v1, 0x2

    #@12
    return v1

    #@13
    .line 556
    :sswitch_2
    const/4 v1, 0x4

    #@14
    return v1

    #@15
    .line 558
    :sswitch_3
    const/16 v1, 0x8

    #@17
    return v1

    #@18
    .line 560
    :sswitch_4
    const/16 v1, 0x10

    #@1a
    return v1

    #@1b
    .line 562
    :sswitch_5
    const/16 v1, 0x20

    #@1d
    return v1

    #@1e
    .line 564
    :sswitch_6
    const/16 v1, 0x40

    #@20
    return v1

    #@21
    .line 566
    :sswitch_7
    const/16 v1, 0x80

    #@23
    return v1

    #@24
    .line 568
    :sswitch_8
    const/16 v1, 0x100

    #@26
    return v1

    #@27
    .line 570
    :sswitch_9
    const/16 v1, 0x200

    #@29
    return v1

    #@2a
    .line 550
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getRccStateFromState(I)I
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 464
    packed-switch p0, :pswitch_data_0

    #@3
    .line 486
    :pswitch_0
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 466
    :pswitch_1
    const/16 v0, 0x8

    #@7
    return v0

    #@8
    .line 468
    :pswitch_2
    const/16 v0, 0x9

    #@a
    return v0

    #@b
    .line 470
    :pswitch_3
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 472
    :pswitch_4
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 474
    :pswitch_5
    const/4 v0, 0x2

    #@10
    return v0

    #@11
    .line 476
    :pswitch_6
    const/4 v0, 0x3

    #@12
    return v0

    #@13
    .line 478
    :pswitch_7
    const/4 v0, 0x5

    #@14
    return v0

    #@15
    .line 480
    :pswitch_8
    const/4 v0, 0x7

    #@16
    return v0

    #@17
    .line 482
    :pswitch_9
    const/4 v0, 0x6

    #@18
    return v0

    #@19
    .line 484
    :pswitch_a
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 464
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getStateFromRccState(I)I
    .locals 1
    .param p0, "rccState"    # I

    #@0
    .prologue
    .line 429
    packed-switch p0, :pswitch_data_0

    #@3
    .line 451
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 431
    :pswitch_0
    const/4 v0, 0x6

    #@6
    return v0

    #@7
    .line 433
    :pswitch_1
    const/4 v0, 0x7

    #@8
    return v0

    #@9
    .line 435
    :pswitch_2
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 437
    :pswitch_3
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 439
    :pswitch_4
    const/4 v0, 0x2

    #@e
    return v0

    #@f
    .line 441
    :pswitch_5
    const/4 v0, 0x3

    #@10
    return v0

    #@11
    .line 443
    :pswitch_6
    const/4 v0, 0x5

    #@12
    return v0

    #@13
    .line 445
    :pswitch_7
    const/16 v0, 0x9

    #@15
    return v0

    #@16
    .line 447
    :pswitch_8
    const/16 v0, 0xa

    #@18
    return v0

    #@19
    .line 449
    :pswitch_9
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 429
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 290
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActions()J
    .locals 2

    #@0
    .prologue
    .line 371
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    #@2
    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 2

    #@0
    .prologue
    .line 408
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    #@2
    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 2

    #@0
    .prologue
    .line 336
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

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
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 396
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    #@2
    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    #@0
    .prologue
    .line 347
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    #@2
    return v0
.end method

.method public getPosition()J
    .locals 2

    #@0
    .prologue
    .line 327
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    #@2
    return-wide v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "PlaybackState {"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 275
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "state="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/media/session/PlaybackState;->mState:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 276
    const-string/jumbo v1, ", position="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mPosition:J

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    .line 277
    const-string/jumbo v1, ", buffered position="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    #@29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    .line 278
    const-string/jumbo v1, ", speed="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget v2, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@38
    .line 279
    const-string/jumbo v1, ", updated="

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    #@41
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@44
    .line 280
    const-string/jumbo v1, ", actions="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mActions:J

    #@4d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@50
    .line 281
    const-string/jumbo v1, ", custom actions="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    iget-object v2, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    .line 282
    const-string/jumbo v1, ", active item id="

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    iget-wide v2, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    #@65
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@68
    .line 283
    const-string/jumbo v1, ", error="

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    iget-object v2, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@74
    .line 284
    const-string/jumbo v1, "}"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 285
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
    .line 295
    iget v0, p0, Landroid/media/session/PlaybackState;->mState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 296
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mPosition:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 297
    iget v0, p0, Landroid/media/session/PlaybackState;->mSpeed:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 298
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mUpdateTime:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 299
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mBufferedPosition:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 300
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActions:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 301
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mCustomActions:Ljava/util/List;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@23
    .line 302
    iget-wide v0, p0, Landroid/media/session/PlaybackState;->mActiveItemId:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 303
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mErrorMessage:Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@2d
    .line 304
    iget-object v0, p0, Landroid/media/session/PlaybackState;->mExtras:Landroid/os/Bundle;

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@32
    .line 294
    return-void
.end method
