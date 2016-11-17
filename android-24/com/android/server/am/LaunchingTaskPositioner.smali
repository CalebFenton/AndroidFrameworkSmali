.class Lcom/android/server/am/LaunchingTaskPositioner;
.super Ljava/lang/Object;
.source "LaunchingTaskPositioner.java"


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformHeight:I

.field private mDefaultFreeformStartX:I

.field private mDefaultFreeformStartY:I

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field private mDefaultFreeformWidth:I

.field private mDefaultStartBoundsConfigurationSet:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    #@5
    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    #@6
    .line 68
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@d
    .line 69
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@14
    .line 70
    new-instance v0, Landroid/graphics/Rect;

    #@16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    #@1b
    .line 40
    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "proposal"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    #@1
    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v3

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@9
    .line 267
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@f
    .line 268
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 269
    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@1d
    .line 270
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_0

    #@29
    .line 271
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@2c
    move-result v3

    #@2d
    .line 270
    if-nez v3, :cond_0

    #@2f
    .line 272
    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@32
    move-result v3

    #@33
    .line 270
    if-eqz v3, :cond_1

    #@35
    .line 273
    :cond_0
    const/4 v3, 0x1

    #@36
    return v3

    #@37
    .line 266
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 277
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v4
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v0, 0x0

    #@2
    .line 291
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@6
    sub-int/2addr v1, v2

    #@7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@a
    move-result v1

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 292
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    sub-int/2addr v1, v2

    #@12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v1

    #@16
    if-ge v1, v3, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 291
    :cond_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v0, 0x0

    #@2
    .line 281
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@6
    sub-int/2addr v1, v2

    #@7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@a
    move-result v1

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 282
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@11
    sub-int/2addr v1, v2

    #@12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v1

    #@16
    if-ge v1, v3, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 281
    :cond_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v0, 0x0

    #@2
    .line 296
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    sub-int/2addr v1, v2

    #@7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@a
    move-result v1

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 297
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    sub-int/2addr v1, v2

    #@12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v1

    #@16
    if-ge v1, v3, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 296
    :cond_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p0, "first"    # Landroid/graphics/Rect;
    .param p1, "second"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v0, 0x0

    #@2
    .line 286
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    sub-int/2addr v1, v2

    #@7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@a
    move-result v1

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 287
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@11
    sub-int/2addr v1, v2

    #@12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v1

    #@16
    if-ge v1, v3, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    .line 286
    :cond_0
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 3
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    #@0
    .prologue
    .line 161
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    #@2
    .line 162
    .local v0, "height":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    #@4
    if-lez v1, :cond_0

    #@6
    .line 163
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    #@8
    .line 165
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    #@a
    const/4 v2, 0x0

    #@b
    cmpl-float v1, v1, v2

    #@d
    if-lez v1, :cond_1

    #@f
    .line 166
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@14
    move-result v1

    #@15
    int-to-float v1, v1

    #@16
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    #@18
    mul-float/2addr v1, v2

    #@19
    float-to-int v0, v1

    #@1a
    .line 168
    :cond_1
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 3
    .param p1, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    #@0
    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    #@2
    .line 151
    .local v0, "width":I
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    #@4
    if-lez v1, :cond_0

    #@6
    .line 152
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    #@8
    .line 154
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    #@a
    const/4 v2, 0x0

    #@b
    cmpl-float v1, v1, v2

    #@d
    if-lez v1, :cond_1

    #@f
    .line 155
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@14
    move-result v1

    #@15
    int-to-float v1, v1

    #@16
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    #@18
    mul-float/2addr v1, v2

    #@19
    float-to-int v0, v1

    #@1a
    .line 157
    :cond_1
    return v0
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "proposal"    # Landroid/graphics/Rect;
    .param p4, "allowRestart"    # Z
    .param p5, "shiftPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 208
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 209
    const/4 v0, 0x0

    #@6
    .line 210
    .local v0, "restarted":Z
    :cond_0
    invoke-static {p3, p2}, Lcom/android/server/am/LaunchingTaskPositioner;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 213
    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    #@f
    .line 214
    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToFar(Landroid/graphics/Rect;I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 217
    if-nez p4, :cond_2

    #@17
    .line 218
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    #@19
    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1c
    .line 237
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@1f
    .line 207
    return-void

    #@20
    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@22
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@24
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@26
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@28
    .line 224
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@2a
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@2c
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@2f
    move-result v4

    #@30
    add-int/2addr v3, v4

    #@31
    .line 225
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@33
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@35
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@38
    move-result v5

    #@39
    add-int/2addr v4, v5

    #@3a
    .line 223
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@3d
    .line 226
    const/4 v0, 0x1

    #@3e
    .line 228
    :cond_3
    if-eqz v0, :cond_0

    #@40
    iget v1, p3, Landroid/graphics/Rect;->left:I

    #@42
    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    #@44
    if-gt v1, v2, :cond_4

    #@46
    .line 229
    iget v1, p3, Landroid/graphics/Rect;->top:I

    #@48
    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    #@4a
    if-le v1, v2, :cond_0

    #@4c
    .line 233
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    #@4e
    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@51
    goto :goto_0
.end method

.method private positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@4
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@6
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@8
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@a
    sub-int/2addr v2, p4

    #@b
    .line 174
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@d
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@f
    add-int/2addr v3, p3

    #@10
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@12
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 173
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 175
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x2

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    move-object v2, p2

    #@1e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    #@21
    .line 172
    return-void
.end method

.method private positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@4
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@6
    sub-int/2addr v1, p3

    #@7
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@9
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@b
    sub-int/2addr v2, p4

    #@c
    .line 181
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@e
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@10
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@12
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 180
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 182
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x3

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    move-object v2, p2

    #@1e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    #@21
    .line 179
    return-void
.end method

.method private positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x1

    #@1
    .line 201
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@3
    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    #@5
    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    #@7
    .line 202
    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    #@9
    add-int/2addr v3, p3

    #@a
    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    #@c
    add-int/2addr v5, p4

    #@d
    .line 201
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@10
    .line 203
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@12
    move-object v0, p0

    #@13
    move-object v1, p1

    #@14
    move-object v2, p2

    #@15
    move v5, v4

    #@16
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    #@19
    .line 200
    return-void
.end method

.method private positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 187
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@4
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@6
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@8
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@a
    .line 188
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@c
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@e
    add-int/2addr v3, p3

    #@f
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@11
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@13
    add-int/2addr v4, p4

    #@14
    .line 187
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 189
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x2

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    move-object v2, p2

    #@1e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    #@21
    .line 186
    return-void
.end method

.method private positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@4
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@6
    sub-int/2addr v1, p3

    #@7
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@9
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@b
    .line 195
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@d
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@f
    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@11
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@13
    add-int/2addr v4, p4

    #@14
    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 196
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    #@19
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x3

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    move-object v2, p2

    #@1e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    #@21
    .line 193
    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "posposal"    # Landroid/graphics/Rect;
    .param p2, "shiftPolicy"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    packed-switch p2, :pswitch_data_0

    #@4
    .line 260
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    #@6
    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@b
    .line 251
    :goto_0
    return-void

    #@c
    .line 254
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    #@e
    neg-int v0, v0

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@12
    goto :goto_0

    #@13
    .line 257
    :pswitch_1
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@18
    goto :goto_0

    #@19
    .line 252
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedToFar(Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "shiftPolicy"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 241
    packed-switch p2, :pswitch_data_0

    #@5
    .line 247
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@7
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@9
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@b
    if-gt v2, v3, :cond_0

    #@d
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@f
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@11
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@13
    if-le v2, v3, :cond_3

    #@15
    :cond_0
    :goto_0
    return v0

    #@16
    .line 243
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@18
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@1a
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@1c
    if-ge v2, v3, :cond_1

    #@1e
    :goto_1
    return v0

    #@1f
    :cond_1
    move v0, v1

    #@20
    goto :goto_1

    #@21
    .line 245
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@23
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@25
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@27
    if-le v2, v3, :cond_2

    #@29
    :goto_2
    return v0

    #@2a
    :cond_2
    move v0, v1

    #@2b
    goto :goto_2

    #@2c
    :cond_3
    move v0, v1

    #@2d
    .line 247
    goto :goto_0

    #@2e
    .line 241
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method configure(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 89
    if-nez p1, :cond_0

    #@4
    .line 90
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@6
    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    #@8
    iget v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    #@a
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    .line 94
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@12
    move-result v1

    #@13
    .line 95
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@15
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@18
    move-result v0

    #@19
    .line 96
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@1b
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@1d
    div-int/lit8 v3, v1, 0x4

    #@1f
    add-int/2addr v2, v3

    #@20
    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    #@22
    .line 97
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@24
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@26
    div-int/lit8 v3, v0, 0x4

    #@28
    add-int/2addr v2, v3

    #@29
    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    #@2b
    .line 98
    div-int/lit8 v2, v1, 0x2

    #@2d
    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    #@2f
    .line 99
    div-int/lit8 v2, v0, 0x2

    #@31
    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    #@33
    .line 100
    div-int/lit8 v2, v1, 0x10

    #@35
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v2

    #@39
    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    #@3b
    .line 101
    div-int/lit8 v2, v0, 0x10

    #@3d
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v2

    #@41
    iput v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    #@43
    .line 102
    iput-boolean v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    #@45
    .line 88
    return-void

    #@46
    .line 92
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b
    goto :goto_0
.end method

.method reset()V
    .locals 1

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    #@3
    .line 300
    return-void
.end method

.method setDisplay(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Point;

    #@2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@5
    .line 83
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@8
    .line 84
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@a
    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    #@c
    .line 85
    iget v1, v0, Landroid/graphics/Point;->y:I

    #@e
    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    #@10
    .line 81
    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x5

    #@1
    .line 117
    iget-boolean v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 118
    return-void

    #@6
    .line 120
    :cond_0
    if-nez p3, :cond_1

    #@8
    .line 121
    iget v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    #@a
    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    #@c
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    #@f
    .line 122
    return-void

    #@10
    .line 124
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    #@13
    move-result v3

    #@14
    .line 125
    .local v3, "width":I
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    #@17
    move-result v0

    #@18
    .line 126
    .local v0, "height":I
    iget v4, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@1a
    and-int/lit8 v2, v4, 0x70

    #@1c
    .line 127
    .local v2, "verticalGravity":I
    iget v4, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@1e
    and-int/lit8 v1, v4, 0x7

    #@20
    .line 128
    .local v1, "horizontalGravity":I
    const/16 v4, 0x30

    #@22
    if-ne v2, v4, :cond_3

    #@24
    .line 129
    if-ne v1, v5, :cond_2

    #@26
    .line 130
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    #@29
    .line 116
    :goto_0
    return-void

    #@2a
    .line 132
    :cond_2
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    #@2d
    goto :goto_0

    #@2e
    .line 134
    :cond_3
    const/16 v4, 0x50

    #@30
    if-ne v2, v4, :cond_5

    #@32
    .line 135
    if-ne v1, v5, :cond_4

    #@34
    .line 136
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    #@37
    goto :goto_0

    #@38
    .line 138
    :cond_4
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    #@3b
    goto :goto_0

    #@3c
    .line 143
    :cond_5
    sget-object v4, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "Received unsupported gravity: "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    iget v6, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 144
    const-string/jumbo v6, ", positioning in the center instead."

    #@53
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 145
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    #@61
    goto :goto_0
.end method
