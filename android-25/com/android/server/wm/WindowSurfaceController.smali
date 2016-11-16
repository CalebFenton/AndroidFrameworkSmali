.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;,
        Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mHiddenForCrop:Z

.field private mHiddenForOtherReasons:Z

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceH:F

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceW:F

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@5
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;)V
    .locals 10
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@6
    .line 55
    const/4 v1, 0x0

    #@7
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    #@9
    .line 56
    const/4 v1, 0x0

    #@a
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    #@c
    .line 57
    const/4 v1, 0x0

    #@d
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    #@f
    .line 58
    const/4 v1, 0x0

    #@10
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    #@12
    .line 60
    const/4 v1, 0x0

    #@13
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    #@15
    .line 62
    const/4 v1, 0x0

    #@16
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    #@18
    .line 67
    const/4 v1, 0x0

    #@19
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    #@1b
    .line 70
    const/4 v1, 0x1

    #@1c
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    #@1e
    .line 75
    move-object/from16 v0, p7

    #@20
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    .line 77
    int-to-float v1, p3

    #@23
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    #@25
    .line 78
    int-to-float v1, p4

    #@26
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    #@28
    .line 80
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    #@2a
    .line 86
    move-object/from16 v0, p7

    #@2c
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 87
    move-object/from16 v0, p7

    #@36
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@38
    iget v1, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@3a
    if-gez v1, :cond_0

    #@3c
    .line 88
    move-object/from16 v0, p7

    #@3e
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@40
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@42
    if-eqz v1, :cond_0

    #@44
    .line 89
    new-instance v1, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;

    #@46
    .line 90
    move-object/from16 v0, p7

    #@48
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@4a
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4c
    move-object v2, p0

    #@4d
    move-object v3, p1

    #@4e
    move-object v4, p2

    #@4f
    move v5, p3

    #@50
    move v6, p4

    #@51
    move v7, p5

    #@52
    move/from16 v8, p6

    #@54
    .line 89
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;-><init>(Lcom/android/server/wm/WindowSurfaceController;Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/AppWindowToken;)V

    #@57
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@59
    .line 74
    :goto_0
    return-void

    #@5a
    .line 95
    :cond_0
    new-instance v1, Landroid/view/SurfaceControl;

    #@5c
    move-object v2, p1

    #@5d
    move-object v3, p2

    #@5e
    move v4, p3

    #@5f
    move v5, p4

    #@60
    move v6, p5

    #@61
    move/from16 v7, p6

    #@63
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@66
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@68
    goto :goto_0
.end method

.method private hideSurface()V
    .locals 4

    #@0
    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 120
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@7
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 118
    :cond_0
    :goto_0
    return-void

    #@d
    .line 123
    :catch_0
    move-exception v0

    #@e
    .line 124
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Exception hiding surface in "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method private showSurface()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 411
    const/4 v1, 0x1

    #@2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@4
    .line 412
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@6
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 413
    return v4

    #@a
    .line 414
    :catch_0
    move-exception v0

    #@b
    .line 415
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Failure showing surface "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " in "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 418
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@33
    const-string/jumbo v2, "show"

    #@36
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@39
    .line 420
    const/4 v1, 0x0

    #@3a
    return v1
.end method

.method private updateVisibility()Z
    .locals 1

    #@0
    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 397
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface()V

    #@f
    .line 399
    :cond_1
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 401
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@13
    if-nez v0, :cond_3

    #@15
    .line 402
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 404
    :cond_3
    const/4 v0, 0x1

    #@1b
    return v0
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .locals 6
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 211
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, -0x1

    #@5
    const/4 v5, -0x1

    #@6
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    #@9
    .line 212
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@b
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 207
    .end local v0    # "clipRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    #@f
    .line 213
    :catch_0
    move-exception v1

    #@10
    .line 214
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Error setting clearing crop of "

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    .line 215
    if-nez p1, :cond_0

    #@2b
    .line 216
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2d
    const-string/jumbo v3, "crop"

    #@30
    const/4 v4, 0x1

    #@31
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@34
    goto :goto_0
.end method

.method clearWindowContentFrameStats()Z
    .locals 1

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 437
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    #@5
    .line 423
    return-void
.end method

.method destroyInTransaction()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 161
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 166
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@d
    .line 167
    :goto_0
    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@f
    .line 155
    return-void

    #@10
    .line 163
    :catch_0
    move-exception v0

    #@11
    .line 164
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Error destroying surface in: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 166
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@2c
    goto :goto_0

    #@2d
    .line 165
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@2e
    .line 166
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@30
    .line 167
    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@32
    .line 165
    throw v1
.end method

.method disconnectInTransaction()V
    .locals 4

    #@0
    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 178
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@6
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->disconnect()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 171
    :cond_0
    :goto_0
    return-void

    #@a
    .line 180
    :catch_0
    move-exception v0

    #@b
    .line 181
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Error disconnecting surface in: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    .line 499
    if-eqz p3, :cond_0

    #@2
    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v0, "mSurface="

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10
    .line 502
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    const-string/jumbo v0, "Surface: shown="

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1e
    .line 503
    const-string/jumbo v0, " layer="

    #@21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    #@26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@29
    .line 504
    const-string/jumbo v0, " alpha="

    #@2c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    #@31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@34
    .line 505
    const-string/jumbo v0, " rect=("

    #@37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    #@3c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@3f
    .line 506
    const-string/jumbo v0, ","

    #@42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    #@47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@4a
    .line 507
    const-string/jumbo v0, ") "

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    #@52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@55
    .line 508
    const-string/jumbo v0, " x "

    #@58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    #@5d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    #@60
    .line 498
    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .locals 2
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 431
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 432
    .local v0, "scalingMode":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    #@8
    .line 428
    return-void

    #@9
    .line 431
    .end local v0    # "scalingMode":I
    :cond_0
    const/4 v0, -0x1

    #@a
    .restart local v0    # "scalingMode":I
    goto :goto_0
.end method

.method getHandle()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 455
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 456
    return-object v1

    #@6
    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method getHeight()F
    .locals 1

    #@0
    .prologue
    .line 494
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    #@2
    return v0
.end method

.method getLayer()I
    .locals 1

    #@0
    .prologue
    .line 470
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    #@2
    return v0
.end method

.method getShown()Z
    .locals 1

    #@0
    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@2
    return v0
.end method

.method getSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outSurface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {p1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    #@5
    .line 465
    return-void
.end method

.method getTransformToDisplayInverse()Z
    .locals 1

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getTransformToDisplayInverse()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getWidth()F
    .locals 1

    #@0
    .prologue
    .line 490
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    #@2
    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 1
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 444
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@8
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method getX()F
    .locals 1

    #@0
    .prologue
    .line 482
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    #@2
    return v0
.end method

.method getY()F
    .locals 1

    #@0
    .prologue
    .line 486
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    #@2
    return v0
.end method

.method hasSurface()Z
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

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

.method hideInTransaction(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    #@3
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    #@8
    .line 115
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    #@b
    .line 110
    return-void
.end method

.method logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/RuntimeException;

    #@0
    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "  SURFACE "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ": "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 103
    .local v0, "str":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@23
    .line 104
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@25
    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 101
    :goto_0
    return-void

    #@29
    .line 106
    :cond_0
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@2b
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    goto :goto_0
.end method

.method prepareToShowInTransaction(FIFFFFZ)Z
    .locals 5
    .param p1, "alpha"    # F
    .param p2, "layer"    # I
    .param p3, "dsdx"    # F
    .param p4, "dtdx"    # F
    .param p5, "dsdy"    # F
    .param p6, "dtdy"    # F
    .param p7, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 315
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 317
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    #@7
    .line 318
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@c
    .line 319
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    #@e
    .line 320
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@10
    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@13
    .line 321
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@15
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 332
    :cond_0
    return v4

    #@19
    .line 324
    :catch_0
    move-exception v0

    #@1a
    .line 325
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Error updating surface in "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    .line 326
    if-nez p7, :cond_1

    #@37
    .line 327
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@39
    const-string/jumbo v2, "update"

    #@3c
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@3f
    .line 329
    :cond_1
    const/4 v1, 0x0

    #@40
    return v1
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_1

    #@d
    .line 190
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@f
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    #@12
    .line 191
    const/4 v1, 0x0

    #@13
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    #@15
    .line 192
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    #@18
    .line 185
    :cond_0
    :goto_0
    return-void

    #@19
    .line 194
    :cond_1
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    #@1c
    .line 195
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    #@21
    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 198
    :catch_0
    move-exception v0

    #@26
    .line 199
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Error setting crop surface of "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 200
    const-string/jumbo v3, " crop="

    #@3b
    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 200
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 201
    if-nez p2, :cond_0

    #@50
    .line 202
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@52
    const-string/jumbo v2, "crop"

    #@55
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@58
    goto :goto_0
.end method

.method setFinalCropInTransaction(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 221
    :goto_0
    return-void

    #@6
    .line 226
    :catch_0
    move-exception v0

    #@7
    .line 227
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Error disconnecting surface in: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method setGeometryAppliesWithResizeInTransaction(Z)V
    .locals 1
    .param p1, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    #@5
    .line 263
    return-void
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 233
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@7
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 237
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@f
    .line 231
    :cond_0
    return-void

    #@10
    .line 236
    :catchall_0
    move-exception v0

    #@11
    .line 237
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@14
    .line 236
    throw v0
.end method

.method setMatrixInTransaction(FFFFZ)V
    .locals 4
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F
    .param p5, "recoveringMemory"    # Z

    #@0
    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 284
    :cond_0
    :goto_0
    return-void

    #@6
    .line 274
    :catch_0
    move-exception v0

    #@7
    .line 278
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Error setting matrix on surface surface"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 279
    const-string/jumbo v3, " MATRIX ["

    #@1e
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 279
    const-string/jumbo v3, ","

    #@29
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 279
    const-string/jumbo v3, ","

    #@34
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 279
    const-string/jumbo v3, ","

    #@3f
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 279
    const-string/jumbo v3, "]"

    #@4a
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 279
    const/4 v3, 0x0

    #@53
    .line 278
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    .line 280
    if-nez p5, :cond_0

    #@58
    .line 281
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@5a
    const-string/jumbo v2, "matrix"

    #@5d
    const/4 v3, 0x1

    #@5e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@61
    goto :goto_0
.end method

.method setOpaque(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 356
    return-void

    #@5
    .line 359
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@8
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 363
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@10
    .line 351
    return-void

    #@11
    .line 362
    :catchall_0
    move-exception v0

    #@12
    .line 363
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@15
    .line 362
    throw v0
.end method

.method setPositionAndLayer(FFII)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "layerStack"    # I
    .param p4, "layer"    # I

    #@0
    .prologue
    .line 130
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@3
    .line 132
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    #@5
    .line 133
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 138
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    invoke-virtual {v1, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@c
    .line 139
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@e
    invoke-virtual {v1, p3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@11
    .line 141
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@13
    invoke-virtual {v1, p4}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@16
    .line 142
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@1c
    .line 143
    const/4 v1, 0x0

    #@1d
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .line 149
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@22
    .line 129
    return-void

    #@23
    .line 144
    :catch_0
    move-exception v0

    #@24
    .line 145
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Error creating surface in "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 146
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3f
    const-string/jumbo v2, "create-init"

    #@42
    const/4 v3, 0x1

    #@43
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 148
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    #@48
    .line 149
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@4b
    .line 148
    throw v1
.end method

.method setPositionInTransaction(FFZ)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 243
    iget v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    #@3
    cmpl-float v3, v3, p1

    #@5
    if-nez v3, :cond_0

    #@7
    iget v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    #@9
    cmpl-float v3, v3, p2

    #@b
    if-eqz v3, :cond_2

    #@d
    :cond_0
    move v1, v2

    #@e
    .line 244
    .local v1, "surfaceMoved":Z
    :goto_0
    if-eqz v1, :cond_1

    #@10
    .line 245
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    #@12
    .line 246
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    #@14
    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@16
    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 242
    :cond_1
    :goto_1
    return-void

    #@1a
    .line 243
    .end local v1    # "surfaceMoved":Z
    :cond_2
    const/4 v1, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 253
    .restart local v1    # "surfaceMoved":Z
    :catch_0
    move-exception v0

    #@1d
    .line 254
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Error positioning surface of "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 255
    const-string/jumbo v5, " pos=("

    #@32
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 255
    const-string/jumbo v5, ","

    #@3d
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 255
    const-string/jumbo v5, ")"

    #@48
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 256
    if-nez p3, :cond_1

    #@55
    .line 257
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@57
    const-string/jumbo v4, "position"

    #@5a
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@5d
    goto :goto_1
.end method

.method setSecure(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 373
    return-void

    #@5
    .line 376
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@8
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@a
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 380
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@10
    .line 368
    return-void

    #@11
    .line 379
    :catchall_0
    move-exception v0

    #@12
    .line 380
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@15
    .line 379
    throw v0
.end method

.method setShown(Z)V
    .locals 0
    .param p1, "surfaceShown"    # Z

    #@0
    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    #@2
    .line 477
    return-void
.end method

.method setSizeInTransaction(IIZ)Z
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "recoveringMemory"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 288
    iget v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    #@4
    int-to-float v5, p1

    #@5
    cmpl-float v4, v4, v5

    #@7
    if-nez v4, :cond_0

    #@9
    iget v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    #@b
    int-to-float v5, p2

    #@c
    cmpl-float v4, v4, v5

    #@e
    if-eqz v4, :cond_1

    #@10
    :cond_0
    move v1, v2

    #@11
    .line 289
    .local v1, "surfaceResized":Z
    :goto_0
    if-eqz v1, :cond_3

    #@13
    .line 290
    int-to-float v4, p1

    #@14
    iput v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:F

    #@16
    .line 291
    int-to-float v4, p2

    #@17
    iput v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:F

    #@19
    .line 296
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1b
    invoke-virtual {v4, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 308
    return v2

    #@1f
    .end local v1    # "surfaceResized":Z
    :cond_1
    move v1, v3

    #@20
    .line 288
    goto :goto_0

    #@21
    .line 297
    .restart local v1    # "surfaceResized":Z
    :catch_0
    move-exception v0

    #@22
    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Error resizing surface of "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    .line 302
    const-string/jumbo v6, " size=("

    #@39
    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 302
    const-string/jumbo v6, "x"

    #@44
    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 302
    const-string/jumbo v6, ")"

    #@4f
    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    .line 303
    if-nez p3, :cond_2

    #@5c
    .line 304
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@5e
    const-string/jumbo v5, "size"

    #@61
    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    #@64
    .line 306
    :cond_2
    return v3

    #@65
    .line 310
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return v3
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 337
    sget-object v0, Lcom/android/server/wm/WindowSurfaceController;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    #@9
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 338
    return-void

    #@d
    .line 341
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@10
    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@12
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 345
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@18
    .line 335
    return-void

    #@19
    .line 344
    :catchall_0
    move-exception v0

    #@1a
    .line 345
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1d
    .line 344
    throw v0
.end method

.method showRobustlyInTransaction()Z
    .locals 1

    #@0
    .prologue
    .line 390
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    #@3
    .line 391
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
