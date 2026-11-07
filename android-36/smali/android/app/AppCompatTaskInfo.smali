.class public Landroid/app/AppCompatTaskInfo;
.super Ljava/lang/Object;
.source "AppCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppCompatTaskInfo$TopActivityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAGS_COMPAT_UI_INTERESTED:I = 0xfeb

.field private static final blacklist FLAGS_ORGANIZER_INTERESTED:I = 0xfe0

.field private static final blacklist FLAG_BASE:I = 0x1

.field private static final blacklist FLAG_ELIGIBLE_FOR_LETTERBOX_EDU:I = 0x2

.field private static final blacklist FLAG_ELIGIBLE_FOR_USER_ASPECT_RATIO_BUTTON:I = 0x40

.field private static final blacklist FLAG_ENABLE_RESTART_MENU_FOR_DISPLAY_MOVE:I = 0x400

.field private static final blacklist FLAG_FULLSCREEN_OVERRIDE_SYSTEM:I = 0x80

.field private static final blacklist FLAG_FULLSCREEN_OVERRIDE_USER:I = 0x100

.field public static final blacklist FLAG_HAS_MIN_ASPECT_RATIO_OVERRIDE:I = 0x200

.field private static final blacklist FLAG_IN_SIZE_COMPAT:I = 0x8

.field private static final blacklist FLAG_IS_FROM_LETTERBOX_DOUBLE_TAP:I = 0x20

.field private static final blacklist FLAG_LETTERBOXED:I = 0x4

.field private static final blacklist FLAG_LETTERBOX_DOUBLE_TAP_ENABLED:I = 0x10

.field private static final blacklist FLAG_LETTERBOX_EDU_ENABLED:I = 0x1

.field public static final blacklist FLAG_OPT_OUT_EDGE_TO_EDGE:I = 0x800

.field private static final blacklist FLAG_UNDEFINED:I


# instance fields
.field public blacklist cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

.field private blacklist mTopActivityFlags:I

.field public final blacklist topActivityAppBounds:Landroid/graphics/Rect;

.field public blacklist topActivityLetterboxBounds:Landroid/graphics/Rect;

.field public blacklist topActivityLetterboxHeight:I

.field public blacklist topActivityLetterboxHorizontalPosition:I

.field public blacklist topActivityLetterboxVerticalPosition:I

.field public blacklist topActivityLetterboxWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/app/AppCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 47
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 53
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 59
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 79
    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 148
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 47
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 53
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 59
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 79
    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/AppCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 157
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppCompatTaskInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist create()Landroid/app/AppCompatTaskInfo;
    .registers 1

    .line 152
    new-instance v0, Landroid/app/AppCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method private blacklist isTopActivityFlagEnabled(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 468
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist setTopActivityFlag(IZ)V
    .registers 5
    .param p1, "flag"    # I
    .param p2, "enable"    # Z

    .line 464
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    if-eqz p2, :cond_6

    or-int/2addr v0, p1

    goto :goto_8

    :cond_6
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 465
    return-void
.end method


# virtual methods
.method public blacklist clearTopActivityFlags()V
    .registers 2

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 372
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist eligibleForLetterboxEducation()Z
    .registers 2

    .line 212
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist eligibleForUserAspectRatioButton()Z
    .registers 2

    .line 227
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/AppCompatTaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/AppCompatTaskInfo;

    .line 397
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 398
    return v0

    .line 400
    :cond_4
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v1, v1, 0xfeb

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v2, v2, 0xfeb

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 407
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 408
    invoke-virtual {v1, v2}, Landroid/app/CameraCompatTaskInfo;->equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 400
    :goto_3d
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/AppCompatTaskInfo;)Z
    .registers 5
    .param p1, "that"    # Landroid/app/AppCompatTaskInfo;

    .line 379
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 380
    return v0

    .line 382
    :cond_4
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v1, v1, 0xfe0

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v2, v2, 0xfe0

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 387
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 390
    invoke-virtual {v1, v2}, Landroid/app/CameraCompatTaskInfo;->equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 382
    :goto_3d
    return v0
.end method

.method public blacklist hasCompatUI()Z
    .registers 2

    .line 181
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v0

    if-nez v0, :cond_21

    .line 182
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v0

    if-nez v0, :cond_21

    .line 183
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isRestartMenuEnabledForDisplayMove()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 181
    :goto_22
    return v0
.end method

.method public blacklist hasMinAspectRatioOverride()Z
    .registers 2

    .line 344
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasOptOutEdgeToEdge()Z
    .registers 2

    .line 366
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isFromLetterboxDoubleTap()Z
    .registers 2

    .line 255
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLetterboxDoubleTapEnabled()Z
    .registers 2

    .line 241
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLetterboxEducationEnabled()Z
    .registers 2

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isRestartMenuEnabledForDisplayMove()Z
    .registers 2

    .line 315
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemFullscreenOverrideEnabled()Z
    .registers 2

    .line 286
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTopActivityInSizeCompat()Z
    .registers 2

    .line 300
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTopActivityLetterboxed()Z
    .registers 2

    .line 330
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTopActivityPillarboxShaped()Z
    .registers 3

    .line 190
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isUserFullscreenOverrideEnabled()Z
    .registers 2

    .line 271
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 420
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 421
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 422
    sget-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/CameraCompatTaskInfo;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 423
    return-void
.end method

.method public blacklist setEligibleForLetterboxEducation(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 220
    return-void
.end method

.method public blacklist setEligibleForUserAspectRatioButton(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 234
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 235
    return-void
.end method

.method public blacklist setHasMinAspectRatioOverride(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 352
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 353
    return-void
.end method

.method public blacklist setIsFromLetterboxDoubleTap(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 263
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 264
    return-void
.end method

.method public blacklist setLetterboxDoubleTapEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 248
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 249
    return-void
.end method

.method public blacklist setLetterboxEducationEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 206
    return-void
.end method

.method public blacklist setOptOutEdgeToEdge(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 359
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 360
    return-void
.end method

.method public blacklist setRestartMenuEnabledForDisplayMove(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 323
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 324
    return-void
.end method

.method public blacklist setSystemFullscreenOverrideEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 293
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 294
    return-void
.end method

.method public blacklist setTopActivityInSizeCompat(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 308
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 309
    return-void
.end method

.method public blacklist setTopActivityLetterboxed(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 337
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 338
    return-void
.end method

.method public blacklist setUserFullscreenOverrideEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 279
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 280
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppCompatTaskInfo { topActivityInSizeCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eligibleForLetterboxEducation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLetterboxEducationEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxEducationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLetterboxDoubleTapEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eligibleForUserAspectRatioButton= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityBoundsLetterboxed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFromLetterboxDoubleTap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxVerticalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxHorizontalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUserFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isUserFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSystemFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isSystemFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasMinAspectRatioOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraCompatTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 459
    invoke-virtual {v1}, Landroid/app/CameraCompatTaskInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 430
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 436
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 437
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 438
    return-void
.end method
