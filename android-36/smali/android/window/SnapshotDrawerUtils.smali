.class public Landroid/window/SnapshotDrawerUtils;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SnapshotDrawerUtils$SnapshotSurface;,
        Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    }
.end annotation


# static fields
.field static final blacklist FLAG_INHERIT_EXCLUDES:I = 0x3186e03a

.field private static final blacklist TAG:Ljava/lang/String; = "SnapshotDrawerUtils"

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 78
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 12
    .param p0, "info"    # Landroid/window/StartingWindowInfo;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "windowType"    # I
    .param p3, "pixelFormat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .line 229
    iget-object v0, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 230
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_e

    .line 231
    const-string v1, "SnapshotDrawerUtils"

    const-string/jumbo v2, "unable to create taskSnapshot surface "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    return-object v1

    .line 234
    :cond_e
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 236
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    .line 237
    .local v2, "appearance":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 238
    .local v3, "windowFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 240
    .local v4, "windowPrivateFlags":I
    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v5, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 241
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 242
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 243
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 244
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 245
    const v5, -0x3186e03b

    and-int/2addr v5, v3

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 248
    const v5, 0x8800

    and-int/2addr v5, v4

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 255
    iput-object p4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 256
    const/4 v5, -0x1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 257
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 258
    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v2, v5, Landroid/view/InsetsFlags;->appearance:I

    .line 259
    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v6, v6, Landroid/view/InsetsFlags;->behavior:I

    iput v6, v5, Landroid/view/InsetsFlags;->behavior:I

    .line 260
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 261
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 262
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 263
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 264
    sget-boolean v5, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v5, :cond_72

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    .line 268
    :cond_72
    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 270
    return-object v1
.end method

.method public static blacklist drawSnapshotOnSurface(Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "rootSurface"    # Landroid/view/SurfaceControl;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "windowBounds"    # Landroid/graphics/Rect;
    .param p4, "releaseAfterDraw"    # Z

    .line 214
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    const-string v0, "SnapshotDrawerUtils"

    const-string v1, "Unable to draw snapshot on an empty windowBounds"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 218
    :cond_e
    new-instance v0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;

    .line 219
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;-><init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Ljava/lang/CharSequence;)V

    .line 220
    .local v0, "drawSurface":Landroid/window/SnapshotDrawerUtils$SnapshotSurface;
    invoke-static {v0, p4}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->-$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V

    .line 221
    return-void
.end method

.method public static blacklist getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;
    .registers 3
    .param p0, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 199
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .local v0, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_10

    .line 202
    .end local v0    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_7
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 203
    .restart local v0    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 205
    :goto_10
    return-object v0
.end method
