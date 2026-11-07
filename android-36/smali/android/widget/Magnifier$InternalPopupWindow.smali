.class Landroid/widget/Magnifier$InternalPopupWindow;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalPopupWindow"
.end annotation


# static fields
.field private static final greylist-max-o SURFACE_Z:I = 0x5


# instance fields
.field private final blacklist mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private final blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field private greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mBitmapRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mCallback:Landroid/widget/Magnifier$Callback;

.field private greylist-max-o mContentHeight:I

.field private final greylist-max-o mContentWidth:I

.field private blacklist mCurrentContent:Landroid/graphics/Bitmap;

.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private greylist-max-o mFirstDraw:Z

.field private greylist-max-o mFrameDrawScheduled:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsFishEyeStyle:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMagnifierUpdater:Ljava/lang/Runnable;

.field private blacklist mMeshHeight:I

.field private blacklist mMeshLeft:[F

.field private blacklist mMeshRight:[F

.field private blacklist mMeshWidth:I

.field private final greylist-max-o mOffsetX:I

.field private final greylist-max-o mOffsetY:I

.field private final blacklist mOverlay:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverlayRenderNode:Landroid/graphics/RenderNode;

.field private greylist-max-o mPendingWindowPositionUpdate:Z

.field private final blacklist mRamp:I

.field private final greylist-max-o mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final greylist-max-o mSurface:Landroid/view/Surface;

.field private final greylist-max-o mSurfaceControl:Landroid/view/SurfaceControl;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mWindowPositionX:I

.field private greylist-max-o mWindowPositionY:I

.field private blacklist mZoom:F


# direct methods
.method public static synthetic blacklist $r8$lambda$anz8nud3Iq6rx1egcDwS_UvEQMc(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/Magnifier$InternalPopupWindow;->lambda$doDraw$0(ZIIZJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mVc55Ea-sk0FReygcyspBh5G-GU(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->doDraw()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmap(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentContent(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/Magnifier$InternalPopupWindow;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/widget/Magnifier$InternalPopupWindow;Landroid/widget/Magnifier$Callback;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdrawOverlay(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateContentFactors(Landroid/widget/Magnifier$InternalPopupWindow;IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Magnifier$InternalPopupWindow;->updateContentFactors(IF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCurrentContentForTesting(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceControl;IIFIFFLandroid/graphics/drawable/Drawable;Landroid/os/Handler;Ljava/lang/Object;Landroid/widget/Magnifier$Callback;Z)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "parentSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "zoom"    # F
    .param p7, "ramp"    # I
    .param p8, "elevation"    # F
    .param p9, "cornerRadius"    # F
    .param p10, "overlay"    # Landroid/graphics/drawable/Drawable;
    .param p11, "handler"    # Landroid/os/Handler;
    .param p12, "lock"    # Ljava/lang/Object;
    .param p13, "callback"    # Landroid/widget/Magnifier$Callback;
    .param p14, "isFishEyeStyle"    # Z

    .line 993
    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 944
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 994
    move-object/from16 v6, p2

    iput-object v6, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    .line 995
    move-object/from16 v7, p10

    iput-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 996
    move-object/from16 v8, p12

    iput-object v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    .line 997
    move-object/from16 v9, p13

    iput-object v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    .line 999
    iput v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    .line 1000
    iput v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1001
    move/from16 v10, p6

    iput v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    .line 1002
    move/from16 v11, p7

    iput v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    .line 1003
    const v12, 0x3f866666    # 1.05f

    mul-float v13, v4, v12

    float-to-int v13, v13

    iput v13, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    .line 1004
    mul-float/2addr v12, v4

    float-to-int v12, v12

    iput v12, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    .line 1006
    iget v12, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v13, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    .line 1007
    .local v12, "surfaceWidth":I
    iget v13, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    iget v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1008
    .local v13, "surfaceHeight":I
    new-instance v14, Landroid/view/SurfaceSession;

    invoke-direct {v14}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v14, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 1009
    new-instance v14, Landroid/view/SurfaceControl$Builder;

    iget-object v15, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v14, v15}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1010
    const-string v15, "magnifier surface"

    invoke-virtual {v14, v15}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v14

    .line 1011
    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1013
    move-object/from16 v14, p3

    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1014
    const-string v6, "InternalPopupWindow"

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1016
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v7}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1017
    const-string v7, "magnifier surface bbq wrapper"

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1018
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1019
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1020
    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1021
    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1024
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    const/4 v6, 0x1

    invoke-direct {v0, v15, v6}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 1025
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v6, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, -0x3

    invoke-virtual {v0, v6, v12, v13, v7}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1027
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    .line 1032
    new-instance v0, Landroid/view/ThreadedRenderer$SimpleRenderer;

    const-string v6, "magnifier renderer"

    iget-object v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v6, v7}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 1037
    const-string v0, "magnifier content"

    invoke-direct {v1, v0, v4, v5}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    .line 1042
    const-string v0, "magnifier overlay"

    invoke-direct {v1, v0, v5}, Landroid/widget/Magnifier$InternalPopupWindow;->createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    .line 1046
    invoke-direct {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V

    .line 1048
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v6

    .line 1050
    .local v6, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_e4
    invoke-virtual {v6}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 1051
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1052
    invoke-virtual {v6}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 1053
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v6, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1054
    invoke-virtual {v6}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_f7
    .catchall {:try_start_e4 .. :try_end_f7} :catchall_12e

    .line 1056
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1057
    nop

    .line 1058
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v0, :cond_114

    .line 1059
    iget v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1060
    invoke-static {v0, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    .line 1061
    invoke-direct {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    .line 1065
    :cond_114
    move-object/from16 v2, p11

    iput-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    .line 1066
    new-instance v0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    iput-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    .line 1067
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 1068
    move/from16 v7, p14

    iput-boolean v7, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    .line 1070
    iget-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-eqz v0, :cond_12d

    .line 1071
    invoke-direct {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->createMeshMatrixForFishEyeEffect()V

    .line 1073
    :cond_12d
    return-void

    .line 1056
    :catchall_12e
    move-exception v0

    move-object/from16 v2, p11

    move/from16 v7, p14

    move-object/from16 v16, v0

    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1057
    throw v16
.end method

.method private blacklist createMeshMatrixForFishEyeEffect()V
    .registers 4

    .line 1120
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    .line 1121
    const/4 v1, 0x6

    iput v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    .line 1122
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    .line 1123
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    .line 1124
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    .line 1125
    return-void
.end method

.method private blacklist createRenderNodeForBitmap(Ljava/lang/String;FF)Landroid/graphics/RenderNode;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elevation"    # F
    .param p3, "cornerRadius"    # F

    .line 1153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v1

    .line 1157
    .local v1, "bitmapRenderNode":Landroid/graphics/RenderNode;
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1159
    invoke-virtual {v1, p2}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 1161
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    move-object v2, v0

    .line 1162
    .local v2, "outline":Landroid/graphics/Outline;
    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, p3

    .end local p3    # "cornerRadius":F
    .local v7, "cornerRadius":F
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1163
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p3}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1164
    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1165
    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 1168
    iget p3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-virtual {v1, p3, v0}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p3

    .line 1171
    .local p3, "canvas":Landroid/graphics/RecordingCanvas;
    const v0, -0xff0100

    :try_start_40
    invoke-virtual {p3, v0}, Landroid/graphics/RecordingCanvas;->drawColor(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 1173
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1174
    nop

    .line 1176
    return-object v1

    .line 1173
    :catchall_48
    move-exception v0

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1174
    throw v0
.end method

.method private blacklist createRenderNodeForOverlay(Ljava/lang/String;F)Landroid/graphics/RenderNode;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cornerRadius"    # F

    .line 1180
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    .line 1184
    .local v0, "overlayRenderNode":Landroid/graphics/RenderNode;
    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1187
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    move-object v2, v1

    .line 1188
    .local v2, "outline":Landroid/graphics/Outline;
    iget v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v6, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, p2

    .end local p2    # "cornerRadius":F
    .local v7, "cornerRadius":F
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1189
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v2, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1190
    invoke-virtual {v0, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1191
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    .line 1193
    return-object v0
.end method

.method private greylist-max-o doDraw()V
    .registers 18

    .line 1301
    move-object/from16 v1, p0

    iget-object v6, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1302
    :try_start_5
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1304
    monitor-exit v6

    return-void

    .line 1307
    :cond_f
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1308
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_f1

    move-object v7, v0

    .line 1310
    .local v7, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_1a
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1311
    .local v0, "w":I
    iget-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1312
    .local v2, "h":I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1313
    .local v15, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1314
    iget-boolean v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_90

    .line 1315
    iget v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v3, v3

    iget v5, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 1319
    .local v3, "margin":I
    new-instance v5, Landroid/graphics/Rect;

    sub-int v8, v0, v3

    invoke-direct {v5, v3, v4, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1320
    .local v5, "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    iget v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    sub-int/2addr v10, v11

    iget v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v8, v9, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1322
    .local v8, "dstRect":Landroid/graphics/Rect;
    iget-object v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v9, v5, v8, v15}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1325
    iget-object v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    .line 1326
    invoke-static {v9, v4, v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v10, v8

    move-object v8, v9

    .end local v8    # "dstRect":Landroid/graphics/Rect;
    .local v10, "dstRect":Landroid/graphics/Rect;
    iget v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    move-object v11, v10

    .end local v10    # "dstRect":Landroid/graphics/Rect;
    .local v11, "dstRect":Landroid/graphics/Rect;
    iget v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    move-object v12, v11

    .end local v11    # "dstRect":Landroid/graphics/Rect;
    .local v12, "dstRect":Landroid/graphics/Rect;
    iget-object v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    .line 1325
    move-object v13, v12

    .end local v12    # "dstRect":Landroid/graphics/Rect;
    .local v13, "dstRect":Landroid/graphics/Rect;
    const/4 v12, 0x0

    move-object v14, v13

    .end local v13    # "dstRect":Landroid/graphics/Rect;
    .local v14, "dstRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    move-object/from16 v16, v14

    .end local v14    # "dstRect":Landroid/graphics/Rect;
    .local v16, "dstRect":Landroid/graphics/Rect;
    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v15}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 1328
    iget-object v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    sub-int v9, v0, v3

    .line 1329
    invoke-static {v8, v9, v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    iget v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    iget v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    iget-object v11, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    .line 1328
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v15}, Landroid/graphics/RecordingCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 1331
    .end local v3    # "margin":I
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v16    # "dstRect":Landroid/graphics/Rect;
    goto :goto_a3

    .line 1332
    :cond_90
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1333
    .local v3, "srcRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    iget v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    invoke-direct {v5, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1334
    .local v5, "dstRect":Landroid/graphics/Rect;
    iget-object v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v3, v5, v15}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_a3
    .catchall {:try_start_1a .. :try_end_a3} :catchall_e9

    .line 1337
    .end local v0    # "w":I
    .end local v2    # "h":I
    .end local v3    # "srcRect":Landroid/graphics/Rect;
    .end local v5    # "dstRect":Landroid/graphics/Rect;
    .end local v15    # "paint":Landroid/graphics/Paint;
    :goto_a3
    :try_start_a3
    iget-object v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1338
    nop

    .line 1339
    iget-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    if-nez v0, :cond_b5

    iget-boolean v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    if-eqz v0, :cond_b2

    goto :goto_b5

    .line 1368
    :cond_b2
    const/4 v0, 0x0

    move v8, v4

    .local v0, "callback":Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
    goto :goto_d4

    .line 1341
    .end local v0    # "callback":Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
    :cond_b5
    :goto_b5
    iget-boolean v5, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 1342
    .local v5, "firstDraw":Z
    iput-boolean v4, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFirstDraw:Z

    .line 1343
    iget-boolean v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 1344
    .local v2, "updateWindowPosition":Z
    iput-boolean v4, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 1345
    iget v3, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    .line 1346
    .local v3, "pendingX":I
    iget v0, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    .line 1348
    .local v0, "pendingY":I
    move v8, v4

    move v4, v0

    .end local v0    # "pendingY":I
    .local v4, "pendingY":I
    new-instance v0, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v5}, Landroid/widget/Magnifier$InternalPopupWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;ZIIZ)V

    .line 1363
    .local v0, "callback":Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
    iget-boolean v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mIsFishEyeStyle:Z

    if-nez v9, :cond_d3

    .line 1365
    iget-object v9, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v10, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v10, v3, v4}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightCenter(Landroid/view/Display;II)V

    .line 1367
    .end local v2    # "updateWindowPosition":Z
    .end local v3    # "pendingX":I
    .end local v4    # "pendingY":I
    .end local v5    # "firstDraw":Z
    :cond_d3
    nop

    .line 1371
    :goto_d4
    iput-boolean v8, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 1372
    .end local v7    # "canvas":Landroid/graphics/RecordingCanvas;
    monitor-exit v6
    :try_end_d7
    .catchall {:try_start_a3 .. :try_end_d7} :catchall_f1

    .line 1374
    iget-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v2, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 1375
    iget-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    if-eqz v2, :cond_e8

    .line 1379
    invoke-direct {v1}, Landroid/widget/Magnifier$InternalPopupWindow;->updateCurrentContentForTesting()V

    .line 1380
    iget-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mCallback:Landroid/widget/Magnifier$Callback;

    invoke-interface {v2}, Landroid/widget/Magnifier$Callback;->onOperationComplete()V

    .line 1382
    :cond_e8
    return-void

    .line 1337
    .end local v0    # "callback":Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
    .restart local v7    # "canvas":Landroid/graphics/RecordingCanvas;
    :catchall_e9
    move-exception v0

    :try_start_ea
    iget-object v2, v1, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1338
    nop

    .end local p0    # "this":Landroid/widget/Magnifier$InternalPopupWindow;
    throw v0

    .line 1372
    .end local v7    # "canvas":Landroid/graphics/RecordingCanvas;
    .restart local p0    # "this":Landroid/widget/Magnifier$InternalPopupWindow;
    :catchall_f1
    move-exception v0

    monitor-exit v6
    :try_end_f3
    .catchall {:try_start_ea .. :try_end_f3} :catchall_f1

    throw v0
.end method

.method private blacklist drawOverlay()V
    .registers 6

    .line 1224
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1225
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 1227
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_a
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1228
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_20

    .line 1230
    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1231
    nop

    .line 1232
    return-void

    .line 1230
    :catchall_20
    move-exception v1

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1231
    throw v1
.end method

.method private blacklist fillMeshMatrix()V
    .registers 17

    .line 1128
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    .line 1129
    const/4 v2, 0x6

    iput v2, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    .line 1130
    iget v2, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    int-to-float v2, v2

    .line 1131
    .local v2, "w":F
    iget v3, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    int-to-float v3, v3

    .line 1132
    .local v3, "h":F
    iget v4, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    div-float v4, v3, v4

    .line 1133
    .local v4, "h0":F
    sub-float v5, v3, v4

    .line 1134
    .local v5, "dh":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    iget v7, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    iget v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    add-int/2addr v8, v1

    mul-int/2addr v7, v8

    if-ge v6, v7, :cond_82

    .line 1136
    iget v7, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x2

    rem-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    .line 1137
    .local v7, "colIndex":I
    iget-object v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    int-to-float v9, v7

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v6

    .line 1138
    iget-object v8, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    iget v9, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mRamp:I

    mul-int/2addr v10, v7

    iget v11, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    div-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v8, v6

    .line 1141
    div-int/lit8 v8, v6, 0x2

    iget v9, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    add-int/2addr v9, v1

    div-int/2addr v8, v9

    .line 1142
    .local v8, "rowIndex":I
    int-to-float v9, v7

    mul-float/2addr v9, v5

    iget v10, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v9, v4

    .line 1143
    .local v9, "hl":F
    sub-float v10, v3, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 1144
    .local v10, "yl":F
    iget-object v12, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshLeft:[F

    add-int/lit8 v13, v6, 0x1

    int-to-float v14, v8

    mul-float/2addr v14, v9

    iget v15, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float/2addr v14, v10

    aput v14, v12, v13

    .line 1145
    int-to-float v12, v7

    mul-float/2addr v12, v5

    iget v13, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshWidth:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v12, v3, v12

    .line 1146
    .local v12, "hr":F
    sub-float v13, v3, v12

    div-float/2addr v13, v11

    .line 1147
    .local v13, "yr":F
    iget-object v11, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshRight:[F

    add-int/lit8 v14, v6, 0x1

    int-to-float v15, v8

    mul-float/2addr v15, v12

    iget v1, v0, Landroid/widget/Magnifier$InternalPopupWindow;->mMeshHeight:I

    int-to-float v1, v1

    div-float/2addr v15, v1

    add-float/2addr v15, v13

    aput v15, v11, v14

    .line 1134
    .end local v7    # "colIndex":I
    .end local v8    # "rowIndex":I
    .end local v9    # "hl":F
    .end local v10    # "yl":F
    .end local v12    # "hr":F
    .end local v13    # "yr":F
    add-int/lit8 v6, v6, 0x2

    const/4 v1, 0x1

    goto :goto_15

    .line 1149
    .end local v6    # "i":I
    :cond_82
    return-void
.end method

.method private synthetic blacklist lambda$doDraw$0(ZIIZJ)V
    .registers 11
    .param p1, "updateWindowPosition"    # Z
    .param p2, "pendingX"    # I
    .param p3, "pendingY"    # I
    .param p4, "firstDraw"    # Z
    .param p5, "frame"    # J

    .line 1349
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1350
    return-void

    .line 1352
    :cond_9
    if-eqz p1, :cond_14

    .line 1353
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1355
    :cond_14
    if-eqz p4, :cond_24

    .line 1356
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1357
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1361
    :cond_24
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 1362
    return-void
.end method

.method private greylist-max-o requestUpdate()V
    .registers 3

    .line 1266
    iget-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    if-eqz v0, :cond_5

    .line 1267
    return-void

    .line 1269
    :cond_5
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1270
    .local v0, "request":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1271
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    iput-boolean v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mFrameDrawScheduled:Z

    .line 1273
    return-void
.end method

.method private blacklist setupOverlay()V
    .registers 3

    .line 1197
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->drawOverlay()V

    .line 1199
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/Magnifier$InternalPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Magnifier$InternalPopupWindow$1;-><init>(Landroid/widget/Magnifier$InternalPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1219
    return-void
.end method

.method private blacklist updateContentFactors(IF)V
    .registers 10
    .param p1, "contentHeight"    # I
    .param p2, "zoom"    # F

    .line 1081
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ne v0, p1, :cond_b

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_b

    .line 1082
    return-void

    .line 1084
    :cond_b
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    if-ge v0, p1, :cond_94

    .line 1086
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1088
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    .line 1090
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    move-object v1, v0

    .line 1091
    .local v1, "outline":Landroid/graphics/Outline;
    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, p1

    .end local p1    # "contentHeight":I
    .local v5, "contentHeight":I
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1092
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1094
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1096
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1098
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 1100
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v1}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 1102
    iget-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 1103
    invoke-virtual {p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object p1

    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    invoke-virtual {p1, v0, v5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object p1

    .line 1105
    .local p1, "canvas":Landroid/graphics/RecordingCanvas;
    :try_start_6c
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 1106
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmapRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1107
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 1108
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlayRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 1109
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->disableZ()V
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_89

    .line 1111
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1112
    goto :goto_95

    .line 1111
    :catchall_89
    move-exception v0

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->getRootNode()Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1112
    throw v0

    .line 1084
    .end local v1    # "outline":Landroid/graphics/Outline;
    .end local v5    # "contentHeight":I
    .local p1, "contentHeight":I
    :cond_94
    move v5, p1

    .line 1114
    .end local p1    # "contentHeight":I
    .restart local v5    # "contentHeight":I
    :goto_95
    iput v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    .line 1115
    iput p2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mZoom:F

    .line 1116
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->fillMeshMatrix()V

    .line 1117
    return-void
.end method

.method private blacklist updateCurrentContentForTesting()V
    .registers 7

    .line 1390
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mCurrentContent:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1391
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mContentHeight:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1392
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1393
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1394
    .local v2, "originalBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1396
    .end local v2    # "originalBounds":Landroid/graphics/Rect;
    :cond_34
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1397
    iget-object v2, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1398
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 3

    .line 1280
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->destroy()V

    .line 1281
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 1282
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1283
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1284
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1285
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1287
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    .line 1288
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mMagnifierUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_38

    .line 1290
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1292
    :cond_38
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1293
    return-void
.end method

.method public greylist-max-o setContentPositionForNextDraw(II)V
    .registers 4
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I

    .line 1243
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionX:I

    .line 1244
    iget v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mOffsetY:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mWindowPositionY:I

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mPendingWindowPositionUpdate:Z

    .line 1246
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    .line 1247
    return-void
.end method

.method public greylist-max-o updateContent(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1258
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 1259
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1261
    :cond_9
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow;->mBitmap:Landroid/graphics/Bitmap;

    .line 1262
    invoke-direct {p0}, Landroid/widget/Magnifier$InternalPopupWindow;->requestUpdate()V

    .line 1263
    return-void
.end method
