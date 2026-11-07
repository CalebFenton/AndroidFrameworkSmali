.class public final Landroid/window/TransitionInfo;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$Change;,
        Landroid/window/TransitionInfo$Root;,
        Landroid/window/TransitionInfo$AnimationOptions;,
        Landroid/window/TransitionInfo$ChangeFlags;,
        Landroid/window/TransitionInfo$TransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAGS_IS_NON_APP_WINDOW:I = 0x10102

.field public static final blacklist FLAGS_IS_OCCLUDED_NO_ANIMATION:I = 0x48000

.field public static final blacklist FLAG_BACK_GESTURE_ANIMATED:I = 0x20000

.field public static final blacklist FLAG_CONFIG_AT_END:I = 0x400000

.field public static final blacklist FLAG_CROSS_PROFILE_OWNER_THUMBNAIL:I = 0x1000

.field public static final blacklist FLAG_CROSS_PROFILE_WORK_THUMBNAIL:I = 0x2000

.field public static final blacklist FLAG_DISPLAY_HAS_ALERT_WINDOWS:I = 0x80

.field public static final blacklist FLAG_FILLS_TASK:I = 0x400

.field public static final blacklist FLAG_FIRST_CUSTOM:I = 0x1000000

.field public static final blacklist FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY:I = 0x200

.field public static final blacklist FLAG_IS_BEHIND_STARTING_WINDOW:I = 0x4000

.field public static final blacklist FLAG_IS_DISPLAY:I = 0x20

.field public static final blacklist FLAG_IS_INPUT_METHOD:I = 0x100

.field public static final blacklist FLAG_IS_OCCLUDED:I = 0x8000

.field public static final blacklist FLAG_IS_SYSTEM_WINDOW:I = 0x10000

.field public static final blacklist FLAG_IS_TASK_DISPLAY_AREA:I = 0x800000

.field public static final blacklist FLAG_IS_VOICE_INTERACTION:I = 0x10

.field public static final blacklist FLAG_IS_WALLPAPER:I = 0x2

.field public static final blacklist FLAG_MOVED_TO_TOP:I = 0x100000

.field public static final blacklist FLAG_NONE:I = 0x0

.field public static final blacklist FLAG_NO_ANIMATION:I = 0x40000

.field public static final blacklist FLAG_SHOW_WALLPAPER:I = 0x1

.field public static final blacklist FLAG_STARTING_WINDOW_TRANSFER_RECIPIENT:I = 0x8

.field public static final blacklist FLAG_SYNC:I = 0x200000

.field public static final blacklist FLAG_TASK_LAUNCHING_BEHIND:I = 0x80000

.field public static final blacklist FLAG_TRANSLUCENT:I = 0x4

.field public static final blacklist FLAG_WILL_IME_SHOWN:I = 0x800

.field private static final blacklist TAG:Ljava/lang/String; = "TransitionInfo"


# instance fields
.field private final blacklist mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebugId:I

.field private blacklist mFlags:I

.field private final blacklist mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Root;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTrack:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 252
    new-instance v0, Landroid/window/TransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "flags"    # I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 227
    iput p1, p0, Landroid/window/TransitionInfo;->mType:I

    .line 228
    iput p2, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 229
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mType:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 234
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 235
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    sget-object v1, Landroid/window/TransitionInfo$Root;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 238
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "flags"    # I

    .line 468
    if-nez p0, :cond_5

    const-string v0, "NONE"

    return-object v0

    .line 469
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_13

    .line 471
    const-string v1, "SHOW_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_13
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1c

    .line 474
    const-string v1, "IS_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_1c
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_25

    .line 477
    const-string v1, "IS_INPUT_METHOD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_25
    and-int/lit8 v1, p0, 0x4

    const-string v2, ""

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_40

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_36

    move-object v1, v2

    goto :goto_37

    :cond_36
    move-object v1, v3

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TRANSLUCENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_40
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_56

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4c

    move-object v1, v2

    goto :goto_4d

    :cond_4c
    move-object v1, v3

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "STARTING_WINDOW_TRANSFER"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_56
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_6c

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_62

    move-object v1, v2

    goto :goto_63

    :cond_62
    move-object v1, v3

    :goto_63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_VOICE_INTERACTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_6c
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_82

    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_78

    move-object v1, v2

    goto :goto_79

    :cond_78
    move-object v1, v3

    :goto_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_DISPLAY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_82
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_98

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8e

    move-object v1, v2

    goto :goto_8f

    :cond_8e
    move-object v1, v3

    :goto_8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "DISPLAY_HAS_ALERT_WINDOWS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_98
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_ae

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a4

    move-object v1, v2

    goto :goto_a5

    :cond_a4
    move-object v1, v3

    :goto_a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IN_TASK_WITH_EMBEDDED_ACTIVITY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_ae
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_c4

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_ba

    move-object v1, v2

    goto :goto_bb

    :cond_ba
    move-object v1, v3

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FILLS_TASK"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_c4
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_da

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_d0

    move-object v1, v2

    goto :goto_d1

    :cond_d0
    move-object v1, v3

    :goto_d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_BEHIND_STARTING_WINDOW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_da
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f2

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_e8

    move-object v1, v2

    goto :goto_e9

    :cond_e8
    move-object v1, v3

    :goto_e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_OCCLUDED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_f2
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_109

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_ff

    move-object v1, v2

    goto :goto_100

    :cond_ff
    move-object v1, v3

    :goto_100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FLAG_IS_SYSTEM_WINDOW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_109
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_120

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_116

    move-object v1, v2

    goto :goto_117

    :cond_116
    move-object v1, v3

    :goto_117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FLAG_BACK_GESTURE_ANIMATED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_120
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_137

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_12d

    move-object v1, v2

    goto :goto_12e

    :cond_12d
    move-object v1, v3

    :goto_12e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "NO_ANIMATION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_137
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15b

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_149

    move-object v4, v2

    goto :goto_14a

    :cond_149
    move-object v4, v3

    :goto_14a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TASK_LAUNCHING_BEHIND"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_15b
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17f

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_16d

    move-object v4, v2

    goto :goto_16e

    :cond_16d
    move-object v4, v3

    :goto_16e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "SYNC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_17f
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_196

    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_18c

    move-object v1, v2

    goto :goto_18d

    :cond_18c
    move-object v1, v3

    :goto_18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FIRST_CUSTOM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_196
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1ad

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1a3

    move-object v1, v2

    goto :goto_1a4

    :cond_1a3
    move-object v1, v3

    :goto_1a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "CONFIG_AT_END"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_1ad
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1c4

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1ba

    move-object v1, v2

    goto :goto_1bb

    :cond_1ba
    move-object v1, v3

    :goto_1bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MOVE_TO_TOP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_1c4
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1da

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1d0

    goto :goto_1d1

    :cond_1d0
    move-object v2, v3

    :goto_1d1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLAG_IS_TASK_DISPLAY_AREA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_1da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z
    .registers 7
    .param p0, "change"    # Landroid/window/TransitionInfo$Change;
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 543
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 545
    :cond_8
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 547
    return v1

    .line 552
    :cond_1d
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_26

    return v3

    .line 555
    :cond_26
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v3

    .line 557
    :cond_2f
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    .line 558
    .local v0, "parentChg":Landroid/window/TransitionInfo$Change;
    :goto_37
    if-eqz v0, :cond_50

    .line 561
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v2, :cond_40

    return v3

    .line 565
    :cond_40
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_47

    return v1

    .line 567
    :cond_47
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    goto :goto_37

    .line 569
    :cond_50
    return v3
.end method

.method public static blacklist modeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 454
    packed-switch p0, :pswitch_data_30

    .line 461
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 460
    :pswitch_1d
    const-string v0, "CHANGE"

    return-object v0

    .line 459
    :pswitch_20
    const-string v0, "TO_BACK"

    return-object v0

    .line 458
    :pswitch_23
    const-string v0, "TO_FRONT"

    return-object v0

    .line 457
    :pswitch_26
    const-string v0, "CLOSE"

    return-object v0

    .line 456
    :pswitch_29
    const-string v0, "OPEN"

    return-object v0

    .line 455
    :pswitch_2c
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public blacklist addChange(Landroid/window/TransitionInfo$Change;)V
    .registers 3
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;

    .line 370
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public blacklist addRoot(Landroid/window/TransitionInfo$Root;)V
    .registers 3
    .param p1, "other"    # Landroid/window/TransitionInfo$Root;

    .line 279
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public blacklist addRootLeash(ILandroid/view/SurfaceControl;II)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "offsetLeft"    # I
    .param p4, "offsetTop"    # I

    .line 274
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/TransitionInfo$Root;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist findRootIndex(I)I
    .registers 4
    .param p1, "displayId"    # I

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 315
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 316
    return v0

    .line 314
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;
    .registers 4
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 358
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 359
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 360
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    return-object v1

    .line 358
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 363
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getDebugId()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    return v0
.end method

.method public blacklist getRoot(I)Landroid/window/TransitionInfo$Root;
    .registers 3
    .param p1, "idx"    # I

    .line 307
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Root;

    return-object v0
.end method

.method public blacklist getRootCount()I
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getRootLeash()Landroid/view/SurfaceControl;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 336
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    .line 337
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "TransitionInfo"

    const-string v2, "Assuming one animation root when there are more."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_1d
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Root;

    invoke-static {v0}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 334
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to get a root leash from a no-op transition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTrack()I
    .registers 2

    .line 392
    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    return v0
.end method

.method public blacklist hasChangesOrSideEffects()Z
    .registers 3

    .line 378
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_1f

    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method public blacklist isKeyguardGoingAway()Z
    .registers 2

    .line 387
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist localRemoteCopy()Landroid/window/TransitionInfo;
    .registers 5

    .line 619
    new-instance v0, Landroid/window/TransitionInfo;

    iget v1, p0, Landroid/window/TransitionInfo;->mType:I

    iget v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 620
    .local v0, "out":Landroid/window/TransitionInfo;
    iget v1, p0, Landroid/window/TransitionInfo;->mTrack:I

    iput v1, v0, Landroid/window/TransitionInfo;->mTrack:I

    .line 621
    iget v1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    iput v1, v0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 623
    iget-object v2, v0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-static {v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 625
    .end local v1    # "i":I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2f
    iget-object v2, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 626
    iget-object v2, v0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Root;

    invoke-static {v3}, Landroid/window/TransitionInfo$Root;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Root;)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 628
    .end local v1    # "i":I
    :cond_4b
    return-object v0
.end method

.method public blacklist releaseAllSurfaces()V
    .registers 3

    .line 595
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 596
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1f

    .line 597
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 596
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 599
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public blacklist releaseAnimSurfaces()V
    .registers 4

    .line 577
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 578
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 579
    .local v1, "c":Landroid/window/TransitionInfo$Change;
    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 580
    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 581
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 577
    .end local v1    # "c":Landroid/window/TransitionInfo$Change;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 584
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_27
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 585
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 587
    .end local v0    # "i":I
    :cond_41
    return-void
.end method

.method public blacklist setDebugId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 405
    iput p1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 406
    return-void
.end method

.method public blacklist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 287
    iput p1, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 288
    return-void
.end method

.method public blacklist setTrack(I)V
    .registers 2
    .param p1, "track"    # I

    .line 397
    iput p1, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 398
    return-void
.end method

.method public blacklist setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V
    .registers 4
    .param p1, "callsite"    # Ljava/lang/String;

    .line 606
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 607
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 606
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 609
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 415
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 424
    .local v0, "shouldPrettyPrint":Z
    :goto_11
    const-string v1, ""

    if-eqz v0, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 425
    .local v2, "innerPrefix":Ljava/lang/String;
    :goto_2a
    const-string v3, "\n"

    if-eqz v0, :cond_40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_40
    move-object v4, v1

    .line 426
    .local v4, "changesLineStart":Ljava/lang/String;
    :goto_41
    if-eqz v0, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "perChangeLineStart":Ljava/lang/String;
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "{id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-static {v6}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 429
    const-string v6, " f=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const-string v5, " r=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_97
    iget-object v6, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x2c

    if-ge v5, v6, :cond_ce

    .line 432
    if-lez v5, :cond_a6

    .line 433
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    :cond_a6
    iget-object v6, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Root;

    invoke-static {v6}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Root;

    invoke-static {v7}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmOffset(Landroid/window/TransitionInfo$Root;)Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 437
    .end local v5    # "i":I
    :cond_ce
    const-string v5, "] c=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d7
    iget-object v6, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f3

    .line 440
    if-lez v5, :cond_e7

    .line 441
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_e7
    iget-object v6, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 446
    .end local v5    # "i":I
    :cond_f3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v5, "]}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 243
    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 247
    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
