.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_CUSTOM:I = 0x1eab93

.field static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_EXIT:I = 0x1eab92

.field static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field static final TAG:Ljava/lang/String;

.field static final TWO_PHASE_ANIMATION:Z

.field static final USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/ScreenRotationAnimation;->TAG:Ljava/lang/String;

    #@5
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZ)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "inTransaction"    # Z
    .param p5, "forceDefaultOrientation"    # Z
    .param p6, "isSecure"    # Z

    #@0
    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    #@a
    .line 75
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@11
    .line 86
    new-instance v1, Landroid/view/animation/Transformation;

    #@13
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    #@18
    .line 88
    new-instance v1, Landroid/view/animation/Transformation;

    #@1a
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    #@1f
    .line 90
    new-instance v1, Landroid/view/animation/Transformation;

    #@21
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    #@26
    .line 97
    new-instance v1, Landroid/view/animation/Transformation;

    #@28
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@2b
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    #@2d
    .line 99
    new-instance v1, Landroid/view/animation/Transformation;

    #@2f
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@32
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    #@34
    .line 101
    new-instance v1, Landroid/view/animation/Transformation;

    #@36
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@39
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    #@3b
    .line 107
    new-instance v1, Landroid/view/animation/Transformation;

    #@3d
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@40
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    #@42
    .line 109
    new-instance v1, Landroid/view/animation/Transformation;

    #@44
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@47
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    #@49
    .line 111
    new-instance v1, Landroid/view/animation/Transformation;

    #@4b
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@4e
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    #@50
    .line 116
    new-instance v1, Landroid/view/animation/Transformation;

    #@52
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@55
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    #@57
    .line 118
    new-instance v1, Landroid/view/animation/Transformation;

    #@59
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@5c
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    #@5e
    .line 120
    new-instance v1, Landroid/view/animation/Transformation;

    #@60
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@63
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    #@65
    .line 123
    new-instance v1, Landroid/view/animation/Transformation;

    #@67
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@6a
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@6c
    .line 124
    new-instance v1, Landroid/view/animation/Transformation;

    #@6e
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@71
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    #@73
    .line 125
    new-instance v1, Landroid/view/animation/Transformation;

    #@75
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    #@78
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    #@7a
    .line 133
    new-instance v1, Landroid/graphics/Matrix;

    #@7c
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@7f
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    #@81
    .line 134
    new-instance v1, Landroid/graphics/Matrix;

    #@83
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@86
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    #@88
    .line 135
    new-instance v1, Landroid/graphics/Matrix;

    #@8a
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@8d
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    #@8f
    .line 136
    new-instance v1, Landroid/graphics/Matrix;

    #@91
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@94
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    #@96
    .line 137
    new-instance v1, Landroid/graphics/Matrix;

    #@98
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@9b
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    #@9d
    .line 138
    const/16 v1, 0x9

    #@9f
    new-array v1, v1, [F

    #@a1
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@a3
    .line 220
    move-object/from16 v0, p1

    #@a5
    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@a7
    .line 221
    move-object/from16 v0, p2

    #@a9
    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@ab
    .line 222
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@b2
    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    #@b5
    move-result-object v8

    #@b6
    .line 226
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    #@b9
    move-result v12

    #@ba
    .line 229
    .local v12, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@bd
    move-result-object v9

    #@be
    .line 230
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p5, :cond_4

    #@c0
    .line 232
    const/4 v1, 0x1

    #@c1
    iput-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@c3
    .line 233
    move-object/from16 v0, p2

    #@c5
    iget v13, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@c7
    .line 234
    .local v13, "originalWidth":I
    move-object/from16 v0, p2

    #@c9
    iget v11, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@cb
    .line 240
    .local v11, "originalHeight":I
    :goto_0
    const/4 v1, 0x1

    #@cc
    if-eq v12, v1, :cond_0

    #@ce
    .line 241
    const/4 v1, 0x3

    #@cf
    if-ne v12, v1, :cond_5

    #@d1
    .line 242
    :cond_0
    iput v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    #@d3
    .line 243
    iput v13, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    #@d5
    .line 249
    :goto_1
    iput v12, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    #@d7
    .line 250
    iput v13, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@d9
    .line 251
    iput v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@db
    .line 253
    if-nez p4, :cond_1

    #@dd
    .line 256
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@e0
    .line 261
    :cond_1
    const/4 v7, 0x4

    #@e1
    .line 262
    .local v7, "flags":I
    if-eqz p6, :cond_2

    #@e3
    .line 263
    const/16 v7, 0x84

    #@e5
    .line 273
    :cond_2
    :try_start_0
    new-instance v1, Landroid/view/SurfaceControl;

    #@e7
    const-string/jumbo v3, "ScreenshotSurface"

    #@ea
    .line 274
    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    #@ec
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    #@ee
    .line 275
    const/4 v6, -0x1

    #@ef
    move-object/from16 v2, p3

    #@f1
    .line 273
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@f4
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@f6
    .line 278
    new-instance v14, Landroid/view/Surface;

    #@f8
    invoke-direct {v14}, Landroid/view/Surface;-><init>()V

    #@fb
    .line 279
    .local v14, "sur":Landroid/view/Surface;
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@fd
    invoke-virtual {v14, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    #@100
    .line 282
    const/4 v1, 0x0

    #@101
    .line 281
    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    #@104
    move-result-object v1

    #@105
    invoke-static {v1, v14}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    #@108
    .line 283
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@10a
    invoke-virtual {v8}, Landroid/view/Display;->getLayerStack()I

    #@10d
    move-result v2

    #@10e
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@111
    .line 284
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@113
    const v2, 0x1eab91

    #@116
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@119
    .line 285
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@11b
    const/4 v2, 0x0

    #@11c
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@11f
    .line 286
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@121
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    #@124
    .line 287
    invoke-virtual {v14}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@127
    .line 295
    .end local v14    # "sur":Landroid/view/Surface;
    :goto_2
    :try_start_1
    invoke-direct {p0, v12}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12a
    .line 297
    if-nez p4, :cond_3

    #@12c
    .line 298
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@12f
    .line 219
    :cond_3
    return-void

    #@130
    .line 237
    .end local v7    # "flags":I
    .end local v11    # "originalHeight":I
    .end local v13    # "originalWidth":I
    :cond_4
    iget v13, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    #@132
    .line 238
    .restart local v13    # "originalWidth":I
    iget v11, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    #@134
    .restart local v11    # "originalHeight":I
    goto :goto_0

    #@135
    .line 245
    :cond_5
    iput v13, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    #@137
    .line 246
    iput v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    #@139
    goto :goto_1

    #@13a
    .line 288
    .restart local v7    # "flags":I
    :catch_0
    move-exception v10

    #@13b
    .line 289
    .local v10, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    sget-object v1, Lcom/android/server/wm/ScreenRotationAnimation;->TAG:Ljava/lang/String;

    #@13d
    const-string/jumbo v2, "Unable to allocate freeze surface"

    #@140
    invoke-static {v1, v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@143
    goto :goto_2

    #@144
    .line 296
    .end local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v1

    #@145
    .line 297
    if-nez p4, :cond_6

    #@147
    .line 298
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@14a
    .line 296
    :cond_6
    throw v1
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 338
    packed-switch p0, :pswitch_data_0

    #@4
    .line 337
    :goto_0
    return-void

    #@5
    .line 340
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    #@8
    goto :goto_0

    #@9
    .line 343
    :pswitch_1
    const/high16 v0, 0x42b40000    # 90.0f

    #@b
    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@e
    .line 344
    int-to-float v0, p2

    #@f
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@12
    goto :goto_0

    #@13
    .line 347
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    #@15
    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@18
    .line 348
    int-to-float v0, p1

    #@19
    int-to-float v1, p2

    #@1a
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@1d
    goto :goto_0

    #@1e
    .line 351
    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    #@20
    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@23
    .line 352
    int-to-float v0, p1

    #@24
    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@27
    goto :goto_0

    #@28
    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasAnimations()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 741
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 735
    :cond_0
    :goto_0
    return v0

    #@6
    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@8
    if-nez v1, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private setRotationInTransaction(I)V
    .locals 4
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 359
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    #@2
    .line 364
    const/4 v1, 0x0

    #@3
    invoke-static {p1, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    #@6
    move-result v0

    #@7
    .line 365
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    #@9
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    #@b
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    #@d
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    #@10
    .line 368
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    #@12
    const/high16 v2, 0x3f800000    # 1.0f

    #@14
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    #@17
    .line 358
    return-void
.end method

.method private setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V
    .locals 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "alpha"    # F

    #@0
    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 311
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@6
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@9
    .line 312
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@b
    const/4 v3, 0x2

    #@c
    aget v0, v2, v3

    #@e
    .line 313
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@10
    const/4 v3, 0x5

    #@11
    aget v1, v2, v3

    #@13
    .line 314
    .local v1, "y":F
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 315
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@19
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@1e
    .line 316
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@20
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@22
    int-to-float v2, v2

    #@23
    sub-float/2addr v0, v2

    #@24
    .line 317
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@26
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@28
    int-to-float v2, v2

    #@29
    sub-float/2addr v1, v2

    #@2a
    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2c
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@2f
    .line 320
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@31
    .line 321
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@33
    const/4 v4, 0x0

    #@34
    aget v3, v3, v4

    #@36
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@38
    const/4 v5, 0x3

    #@39
    aget v4, v4, v5

    #@3b
    .line 322
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@3d
    const/4 v6, 0x1

    #@3e
    aget v5, v5, v6

    #@40
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    #@42
    const/4 v7, 0x4

    #@43
    aget v6, v6, v7

    #@45
    .line 320
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@48
    .line 323
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4a
    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@4d
    .line 309
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z
    .locals 12
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "dismissing"    # Z
    .param p8, "exitAnim"    # I
    .param p9, "enterAnim"    # I

    #@0
    .prologue
    .line 390
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 392
    const/4 v2, 0x0

    #@5
    return v2

    #@6
    .line 394
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 395
    const/4 v2, 0x1

    #@b
    return v2

    #@c
    .line 398
    :cond_1
    const/4 v2, 0x1

    #@d
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    #@f
    .line 403
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    #@11
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    #@13
    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    #@16
    move-result v10

    #@17
    .line 432
    .local v10, "delta":I
    if-eqz p8, :cond_4

    #@19
    if-eqz p9, :cond_4

    #@1b
    .line 433
    const/4 v9, 0x1

    #@1c
    .line 434
    .local v9, "customAnim":Z
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@1e
    move/from16 v0, p8

    #@20
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@26
    .line 435
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@28
    move/from16 v0, p9

    #@2a
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@30
    .line 509
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@32
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@34
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@36
    move/from16 v0, p5

    #@38
    move/from16 v1, p6

    #@3a
    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@3d
    .line 510
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@3f
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@41
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@43
    move/from16 v0, p5

    #@45
    move/from16 v1, p6

    #@47
    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@4a
    .line 515
    const/4 v2, 0x0

    #@4b
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    #@4d
    .line 516
    const/4 v2, 0x0

    #@4e
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@50
    .line 517
    const-wide/16 v2, -0x1

    #@52
    iput-wide v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    #@54
    .line 535
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@56
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@59
    .line 536
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@5b
    move/from16 v0, p4

    #@5d
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@60
    .line 537
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@62
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    #@65
    .line 538
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@67
    move/from16 v0, p4

    #@69
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    #@6c
    .line 544
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@6e
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    #@75
    move-result v7

    #@76
    .line 576
    .local v7, "layerStack":I
    if-nez v9, :cond_2

    #@78
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@7a
    if-nez v2, :cond_2

    #@7c
    .line 580
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@7f
    .line 588
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@81
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@83
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    #@85
    invoke-static {v10, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    #@88
    .line 592
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@8a
    if-eqz v2, :cond_5

    #@8c
    .line 596
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@8e
    .line 597
    .local v4, "outer":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    #@90
    .line 603
    .local v5, "inner":Landroid/graphics/Rect;
    :goto_1
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    #@92
    .line 604
    iget-boolean v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@94
    const v6, 0x1eab92

    #@97
    move-object v3, p1

    #@98
    .line 603
    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    #@9b
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@9d
    .line 605
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@9f
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    #@a1
    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a4
    .line 609
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@a7
    .line 616
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    #@a9
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@ab
    if-nez v2, :cond_3

    #@ad
    .line 620
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@b0
    .line 623
    :try_start_1
    new-instance v4, Landroid/graphics/Rect;

    #@b2
    move/from16 v0, p5

    #@b4
    neg-int v2, v0

    #@b5
    mul-int/lit8 v2, v2, 0x1

    #@b7
    move/from16 v0, p6

    #@b9
    neg-int v3, v0

    #@ba
    mul-int/lit8 v3, v3, 0x1

    #@bc
    .line 624
    mul-int/lit8 v6, p5, 0x2

    #@be
    mul-int/lit8 v8, p6, 0x2

    #@c0
    .line 623
    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@c3
    .line 625
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    #@c5
    const/4 v2, 0x0

    #@c6
    const/4 v3, 0x0

    #@c7
    move/from16 v0, p5

    #@c9
    move/from16 v1, p6

    #@cb
    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@ce
    .line 626
    .restart local v5    # "inner":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    #@d0
    .line 627
    const v6, 0x1eab90

    #@d3
    const/4 v8, 0x0

    #@d4
    move-object v3, p1

    #@d5
    .line 626
    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    #@d8
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@da
    .line 631
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@dd
    .line 638
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_3
    :goto_3
    const/4 v2, 0x1

    #@de
    return v2

    #@df
    .line 437
    .end local v7    # "layerStack":I
    .end local v9    # "customAnim":Z
    :cond_4
    const/4 v9, 0x0

    #@e0
    .line 438
    .restart local v9    # "customAnim":Z
    packed-switch v10, :pswitch_data_0

    #@e3
    goto/16 :goto_0

    #@e5
    .line 440
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@e7
    .line 441
    const v3, 0x10a0070

    #@ea
    .line 440
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@ed
    move-result-object v2

    #@ee
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@f0
    .line 442
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@f2
    .line 443
    const v3, 0x10a006f

    #@f5
    .line 442
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@f8
    move-result-object v2

    #@f9
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@fb
    goto/16 :goto_0

    #@fd
    .line 450
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@ff
    .line 451
    const v3, 0x10a007c

    #@102
    .line 450
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@105
    move-result-object v2

    #@106
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@108
    .line 452
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@10a
    .line 453
    const v3, 0x10a007b

    #@10d
    .line 452
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@110
    move-result-object v2

    #@111
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@113
    goto/16 :goto_0

    #@115
    .line 460
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@117
    .line 461
    const v3, 0x10a0073

    #@11a
    .line 460
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@11d
    move-result-object v2

    #@11e
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@120
    .line 462
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@122
    .line 463
    const v3, 0x10a0072

    #@125
    .line 462
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@128
    move-result-object v2

    #@129
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@12b
    goto/16 :goto_0

    #@12d
    .line 470
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@12f
    .line 471
    const v3, 0x10a0079

    #@132
    .line 470
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@135
    move-result-object v2

    #@136
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@138
    .line 472
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    #@13a
    .line 473
    const v3, 0x10a0078

    #@13d
    .line 472
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@140
    move-result-object v2

    #@141
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@143
    goto/16 :goto_0

    #@145
    .line 599
    .restart local v7    # "layerStack":I
    :cond_5
    :try_start_2
    new-instance v4, Landroid/graphics/Rect;

    #@147
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@149
    neg-int v2, v2

    #@14a
    mul-int/lit8 v2, v2, 0x1

    #@14c
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@14e
    neg-int v3, v3

    #@14f
    mul-int/lit8 v3, v3, 0x1

    #@151
    .line 600
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@153
    mul-int/lit8 v6, v6, 0x2

    #@155
    iget v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@157
    mul-int/lit8 v8, v8, 0x2

    #@159
    .line 599
    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@15c
    .line 601
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    #@15e
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@160
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@162
    const/4 v6, 0x0

    #@163
    const/4 v8, 0x0

    #@164
    invoke-direct {v5, v6, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@167
    .restart local v5    # "inner":Landroid/graphics/Rect;
    goto/16 :goto_1

    #@169
    .line 606
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :catch_0
    move-exception v11

    #@16a
    .line 607
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    sget-object v2, Lcom/android/server/wm/ScreenRotationAnimation;->TAG:Ljava/lang/String;

    #@16c
    const-string/jumbo v3, "Unable to allocate black surface"

    #@16f
    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@172
    .line 609
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@175
    goto/16 :goto_2

    #@177
    .line 608
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    #@178
    .line 609
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@17b
    .line 608
    throw v2

    #@17c
    .line 628
    :catch_1
    move-exception v11

    #@17d
    .line 629
    .restart local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_4
    sget-object v2, Lcom/android/server/wm/ScreenRotationAnimation;->TAG:Ljava/lang/String;

    #@17f
    const-string/jumbo v3, "Unable to allocate black surface"

    #@182
    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@185
    .line 631
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@188
    goto/16 :goto_3

    #@18a
    .line 630
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_1
    move-exception v2

    #@18b
    .line 631
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@18e
    .line 630
    throw v2

    #@18f
    .line 438
    nop

    #@190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .locals 11
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 745
    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    #@4
    cmp-long v3, p1, v4

    #@6
    if-lez v3, :cond_0

    #@8
    .line 746
    const-wide v4, 0x7fffffffffffffffL

    #@d
    iput-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    #@f
    .line 748
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@11
    if-eqz v3, :cond_1

    #@13
    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    #@15
    const-wide/16 v6, 0x0

    #@17
    cmp-long v3, v4, v6

    #@19
    if-gez v3, :cond_1

    #@1b
    .line 750
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    #@1d
    .line 774
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@1f
    if-eqz v3, :cond_6

    #@21
    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    #@23
    sub-long v0, p1, v4

    #@25
    .line 798
    .local v0, "finishNow":J
    :goto_0
    iput-boolean v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    #@27
    .line 799
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@29
    if-eqz v3, :cond_2

    #@2b
    .line 800
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@2d
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    #@2f
    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@32
    move-result v3

    #@33
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    #@35
    .line 804
    :cond_2
    iput-boolean v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    #@37
    .line 805
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@39
    if-eqz v3, :cond_3

    #@3b
    .line 806
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@3d
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    #@3f
    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@42
    move-result v3

    #@43
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    #@45
    .line 818
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    #@47
    if-nez v3, :cond_4

    #@49
    .line 833
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@4b
    if-eqz v3, :cond_4

    #@4d
    .line 835
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@4f
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    #@52
    .line 836
    iput-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@54
    .line 837
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    #@56
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@59
    .line 841
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    #@5b
    if-nez v3, :cond_5

    #@5d
    .line 856
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@5f
    if-eqz v3, :cond_5

    #@61
    .line 858
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@63
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    #@66
    .line 859
    iput-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@68
    .line 860
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    #@6a
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    #@6d
    .line 885
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@6f
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    #@71
    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@74
    .line 886
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    #@76
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    #@78
    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    #@7b
    .line 913
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    #@7d
    .line 909
    if-nez v3, :cond_7

    #@7f
    .line 913
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    #@81
    .line 909
    if-nez v3, :cond_7

    #@83
    .line 914
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@85
    if-eqz v3, :cond_8

    #@87
    const/4 v2, 0x0

    #@88
    .line 916
    .local v2, "more":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    #@8a
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@8c
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@8f
    move-result-object v4

    #@90
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    #@92
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    #@95
    .line 920
    return v2

    #@96
    .line 774
    .end local v0    # "finishNow":J
    .end local v2    # "more":Z
    :cond_6
    const-wide/16 v0, 0x0

    #@98
    .restart local v0    # "finishNow":J
    goto :goto_0

    #@99
    .line 909
    :cond_7
    const/4 v2, 0x1

    #@9a
    .restart local v2    # "more":Z
    goto :goto_1

    #@9b
    .line 914
    .end local v2    # "more":Z
    :cond_8
    const/4 v2, 0x1

    #@9c
    .restart local v2    # "more":Z
    goto :goto_1
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFIIII)Z
    .locals 10
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 649
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    #@8
    if-nez v0, :cond_1

    #@a
    .line 653
    const/4 v7, 0x1

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-wide v2, p2

    #@e
    move v4, p4

    #@f
    move v5, p5

    #@10
    move/from16 v6, p6

    #@12
    move/from16 v8, p7

    #@14
    move/from16 v9, p8

    #@16
    .line 652
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z

    #@19
    .line 655
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 656
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 659
    :cond_2
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@22
    .line 660
    const/4 v0, 0x1

    #@23
    return v0
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    #@0
    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    #@2
    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    #@0
    .prologue
    .line 727
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public isRotating()Z
    .locals 2

    #@0
    .prologue
    .line 731
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    #@2
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public kill()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 665
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 669
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@a
    .line 670
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@c
    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 673
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@12
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    #@15
    .line 674
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@17
    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 677
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    #@20
    .line 678
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@22
    .line 680
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 681
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@28
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    #@2b
    .line 682
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@2d
    .line 716
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@2f
    if-eqz v0, :cond_4

    #@31
    .line 717
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@33
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@36
    .line 718
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@38
    .line 720
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@3a
    if-eqz v0, :cond_5

    #@3c
    .line 721
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@3e
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    #@41
    .line 722
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@43
    .line 663
    :cond_5
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mSurface="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@e
    .line 152
    const-string/jumbo v0, " mWidth="

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@19
    .line 153
    const-string/jumbo v0, " mHeight="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@24
    .line 160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    const-string/jumbo v0, "mExitingBlackFrame="

    #@2a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@32
    .line 161
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@34
    if-eqz v0, :cond_0

    #@36
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    const-string/jumbo v2, "  "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@4f
    .line 164
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    const-string/jumbo v0, "mEnteringBlackFrame="

    #@55
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@5a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5d
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@5f
    if-eqz v0, :cond_1

    #@61
    .line 166
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    const-string/jumbo v2, "  "

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@7a
    .line 168
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    const-string/jumbo v0, "mCurRotation="

    #@80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@83
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    #@85
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@88
    .line 169
    const-string/jumbo v0, " mOriginalRotation="

    #@8b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    #@90
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@93
    .line 170
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@96
    const-string/jumbo v0, "mOriginalWidth="

    #@99
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9c
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    #@9e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@a1
    .line 171
    const-string/jumbo v0, " mOriginalHeight="

    #@a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    #@a9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@ac
    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    const-string/jumbo v0, "mStarted="

    #@b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    #@b7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ba
    .line 173
    const-string/jumbo v0, " mAnimRunning="

    #@bd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    #@c2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@c5
    .line 174
    const-string/jumbo v0, " mFinishAnimReady="

    #@c8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cb
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@cd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d0
    .line 175
    const-string/jumbo v0, " mFinishAnimStartTime="

    #@d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    #@d8
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    #@db
    .line 176
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@de
    const-string/jumbo v0, "mStartExitAnimation="

    #@e1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    #@e6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@e9
    .line 177
    const-string/jumbo v0, " "

    #@ec
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    #@f1
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@f4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@f7
    .line 178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    const-string/jumbo v0, "mStartEnterAnimation="

    #@fd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@100
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    #@102
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@105
    .line 179
    const-string/jumbo v0, " "

    #@108
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    #@10d
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@110
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@113
    .line 180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@116
    const-string/jumbo v0, "mStartFrameAnimation="

    #@119
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    #@11e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@121
    .line 181
    const-string/jumbo v0, " "

    #@124
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@127
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    #@129
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@12c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@12f
    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    const-string/jumbo v0, "mFinishExitAnimation="

    #@135
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    #@13a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@13d
    .line 183
    const-string/jumbo v0, " "

    #@140
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    #@145
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@148
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@14b
    .line 184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14e
    const-string/jumbo v0, "mFinishEnterAnimation="

    #@151
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@154
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    #@156
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@159
    .line 185
    const-string/jumbo v0, " "

    #@15c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    #@161
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@164
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@167
    .line 186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    const-string/jumbo v0, "mFinishFrameAnimation="

    #@16d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    #@172
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@175
    .line 187
    const-string/jumbo v0, " "

    #@178
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    #@17d
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@180
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@183
    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@186
    const-string/jumbo v0, "mRotateExitAnimation="

    #@189
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@18e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@191
    .line 189
    const-string/jumbo v0, " "

    #@194
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@197
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    #@199
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@19c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@19f
    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    const-string/jumbo v0, "mRotateEnterAnimation="

    #@1a5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@1aa
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1ad
    .line 191
    const-string/jumbo v0, " "

    #@1b0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    #@1b5
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@1b8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1bb
    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    const-string/jumbo v0, "mRotateFrameAnimation="

    #@1c1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    #@1c6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@1c9
    .line 193
    const-string/jumbo v0, " "

    #@1cc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cf
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    #@1d1
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@1d4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1d7
    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1da
    const-string/jumbo v0, "mExitTransformation="

    #@1dd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@1e2
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@1e5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1e8
    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1eb
    const-string/jumbo v0, "mEnterTransformation="

    #@1ee
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f1
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    #@1f3
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@1f6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1f9
    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fc
    const-string/jumbo v0, "mFrameTransformation="

    #@1ff
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@202
    .line 199
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    #@204
    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    #@207
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@20a
    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20d
    const-string/jumbo v0, "mFrameInitialMatrix="

    #@210
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@213
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    #@215
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    #@218
    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@21b
    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21e
    const-string/jumbo v0, "mSnapshotInitialMatrix="

    #@221
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@224
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    #@226
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    #@229
    .line 205
    const-string/jumbo v0, " mSnapshotFinalMatrix="

    #@22c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22f
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    #@231
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    #@234
    .line 206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@237
    .line 207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23a
    const-string/jumbo v0, "mExitFrameFinalMatrix="

    #@23d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@240
    .line 208
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    #@242
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    #@245
    .line 209
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@248
    .line 210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24b
    const-string/jumbo v0, "mForceDefaultOrientation="

    #@24e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@251
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@253
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@256
    .line 211
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@258
    if-eqz v0, :cond_2

    #@25a
    .line 212
    const-string/jumbo v0, " mOriginalDisplayRect="

    #@25d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@260
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    #@262
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@265
    move-result-object v0

    #@266
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@269
    .line 213
    const-string/jumbo v0, " mCurrentDisplayRect="

    #@26c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26f
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    #@271
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@274
    move-result-object v0

    #@275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@278
    .line 150
    :cond_2
    return-void
.end method

.method public setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "maxAnimationDuration"    # J
    .param p5, "animationScale"    # F
    .param p6, "finalWidth"    # I
    .param p7, "finalHeight"    # I

    #@0
    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V

    #@3
    .line 381
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public stepAnimationLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 970
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 972
    iput-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    #@9
    .line 973
    return v1

    #@a
    .line 976
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    #@c
    if-nez v0, :cond_3

    #@e
    .line 1003
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1004
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@14
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@17
    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    #@1d
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@20
    .line 1009
    :cond_2
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    #@23
    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    #@25
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    #@28
    move-result-wide v0

    #@29
    const-wide/16 v2, 0x2

    #@2b
    div-long/2addr v0, v2

    #@2c
    add-long/2addr v0, p1

    #@2d
    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    #@2f
    .line 1013
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    #@32
    move-result v0

    #@33
    return v0
.end method

.method updateSurfacesInTransaction()V
    .locals 3

    #@0
    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 925
    return-void

    #@5
    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 929
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    #@b
    if-nez v0, :cond_1

    #@d
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    #@f
    if-eqz v0, :cond_8

    #@11
    .line 935
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@13
    if-eqz v0, :cond_3

    #@15
    .line 936
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    #@17
    if-nez v0, :cond_2

    #@19
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    #@1b
    if-eqz v0, :cond_9

    #@1d
    .line 940
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@1f
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    #@21
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    #@28
    .line 944
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@2a
    if-eqz v0, :cond_5

    #@2c
    .line 945
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    #@2e
    if-nez v0, :cond_4

    #@30
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    #@32
    if-eqz v0, :cond_a

    #@34
    .line 949
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    #@36
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@38
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    #@3e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    #@41
    .line 950
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@43
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    #@45
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    #@48
    .line 951
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    #@4a
    if-eqz v0, :cond_5

    #@4c
    .line 952
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@4e
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@50
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    #@53
    move-result v1

    #@54
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(F)V

    #@57
    .line 957
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@59
    if-eqz v0, :cond_7

    #@5b
    .line 958
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    #@5d
    if-nez v0, :cond_6

    #@5f
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    #@61
    if-eqz v0, :cond_b

    #@63
    .line 962
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@65
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    #@67
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    #@6e
    .line 966
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    #@70
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    #@72
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    #@75
    move-result v1

    #@76
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    #@79
    .line 923
    return-void

    #@7a
    .line 929
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    #@7c
    if-nez v0, :cond_1

    #@7e
    .line 931
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@80
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    #@83
    goto :goto_0

    #@84
    .line 936
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    #@86
    if-nez v0, :cond_2

    #@88
    .line 938
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@8a
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    #@8d
    goto :goto_1

    #@8e
    .line 945
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    #@90
    if-nez v0, :cond_4

    #@92
    .line 947
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@94
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    #@97
    goto :goto_2

    #@98
    .line 958
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    #@9a
    if-nez v0, :cond_6

    #@9c
    .line 960
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    #@9e
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    #@a1
    goto :goto_3
.end method
