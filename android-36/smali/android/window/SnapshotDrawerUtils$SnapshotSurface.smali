.class public Landroid/window/SnapshotDrawerUtils$SnapshotSurface;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotSurface"
.end annotation


# instance fields
.field private final blacklist mContainerH:I

.field private final blacklist mContainerW:I

.field private final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field private final blacklist mSnapshot:Landroid/window/TaskSnapshot;

.field private final blacklist mSnapshotH:I

.field private final blacklist mSnapshotW:I

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSnapshot(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "rootSurface"    # Landroid/view/SurfaceControl;
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "windowBounds"    # Landroid/graphics/Rect;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 118
    iput-object p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    .line 119
    iput-object p2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 120
    iput-object p4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 122
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    .line 123
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    .line 124
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    .line 125
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    .line 126
    return-void
.end method

.method private blacklist drawSizeMatchSnapshot()V
    .registers 4

    .line 152
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 153
    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 155
    return-void
.end method

.method private blacklist drawSizeMismatchSnapshot()V
    .registers 10

    .line 158
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 161
    .local v0, "buffer":Landroid/hardware/HardwareBuffer;
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - task-snapshot-surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    .line 165
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 166
    const-string v2, "TaskSnapshotWindow.drawSizeMismatchSnapshot"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 169
    .local v1, "childSurfaceControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 170
    .local v2, "letterboxInsets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 171
    .local v3, "offsetX":F
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 174
    .local v4, "offsetY":F
    iget-object v5, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 177
    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_5a

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_7d

    .line 178
    :cond_5a
    iget-object v5, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    neg-float v6, v3

    iget v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 179
    invoke-virtual {v7}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    neg-float v7, v4

    iget v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 180
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 178
    invoke-virtual {v5, v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 183
    :cond_7d
    iget v5, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    int-to-float v5, v5

    iget v6, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 184
    .local v5, "scaleX":F
    iget v6, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    int-to-float v6, v6

    iget v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 185
    .local v6, "scaleY":F
    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 186
    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 187
    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 188
    iget-object v7, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 189
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 190
    return-void
.end method

.method private blacklist drawSnapshot(Z)V
    .registers 6
    .param p1, "releaseAfterDraw"    # Z

    .line 129
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 130
    .local v0, "letterboxInsets":Landroid/graphics/Rect;
    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    if-ne v1, v2, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    .line 132
    .local v1, "sizeMismatch":Z
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawing snapshot surface sizeMismatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SnapshotDrawerUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v1, :cond_3c

    .line 137
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_3f

    .line 139
    :cond_3c
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMatchSnapshot()V

    .line 143
    :goto_3f
    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 144
    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V

    .line 146
    :cond_50
    if-eqz p1, :cond_57

    .line 147
    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 149
    :cond_57
    return-void
.end method
