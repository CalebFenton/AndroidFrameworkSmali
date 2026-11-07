.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mCaptureTime:J

.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mContentInsets:Landroid/graphics/Rect;

.field private blacklist mHasImeSurface:Z

.field private blacklist mId:J

.field private blacklist mIsRealSnapshot:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mLetterboxInsets:Landroid/graphics/Rect;

.field private blacklist mOrientation:I

.field private blacklist mPixelFormat:I

.field private blacklist mRotation:I

.field private blacklist mSnapshot:Landroid/hardware/HardwareBuffer;

.field private blacklist mTaskSize:Landroid/graphics/Point;

.field private blacklist mTopActivity:Landroid/content/ComponentName;

.field private blacklist mUiMode:I

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskSnapshot;
    .registers 22

    .line 519
    move-object/from16 v0, p0

    new-instance v1, Landroid/window/TaskSnapshot;

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-wide v4, v0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v8, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v9, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v10, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v15, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    move-object/from16 v16, v1

    iget v1, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v19, v1

    iget v1, v0, Landroid/window/TaskSnapshot$Builder;->mUiMode:I

    move/from16 v20, v1

    move-object/from16 v1, v16

    move/from16 v16, v14

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v20}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZI)V

    return-object v1
.end method

.method public blacklist getPixelFormat()I
    .registers 2

    .line 510
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public blacklist setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "appearance"    # I

    .line 484
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    .line 485
    return-object p0
.end method

.method public blacklist setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3
    .param p1, "captureTime"    # J

    .line 426
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    .line 427
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 441
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 442
    return-object p0
.end method

.method public blacklist setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 464
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    .line 465
    return-object p0
.end method

.method public blacklist setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "hasImeSurface"    # Z

    .line 497
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    .line 498
    return-object p0
.end method

.method public blacklist setId(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3
    .param p1, "id"    # J

    .line 421
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    .line 422
    return-object p0
.end method

.method public blacklist setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "realSnapshot"    # Z

    .line 474
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    .line 475
    return-object p0
.end method

.method public blacklist setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "isTranslucent"    # Z

    .line 489
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    .line 490
    return-object p0
.end method

.method public blacklist setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "letterboxInsets"    # Landroid/graphics/Rect;

    .line 469
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 470
    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .line 446
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    .line 447
    return-object p0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "pixelFormat"    # I

    .line 514
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    .line 515
    return-object p0
.end method

.method public blacklist setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "rotation"    # I

    .line 451
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    .line 452
    return-object p0
.end method

.method public blacklist setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 436
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 437
    return-object p0
.end method

.method public blacklist setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "size"    # Landroid/graphics/Point;

    .line 459
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    .line 460
    return-object p0
.end method

.method public blacklist setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 431
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    .line 432
    return-object p0
.end method

.method public blacklist setUiMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "uiMode"    # I

    .line 505
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mUiMode:I

    .line 506
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "windowingMode"    # I

    .line 479
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    .line 480
    return-object p0
.end method
