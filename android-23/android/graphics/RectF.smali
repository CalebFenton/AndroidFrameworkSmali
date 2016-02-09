.class public Landroid/graphics/RectF;
.super Ljava/lang/Object;
.source "RectF.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RectF$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 556
    new-instance v0, Landroid/graphics/RectF$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF$1;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@5
    .line 55
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@7
    .line 56
    iput p3, p0, Landroid/graphics/RectF;->right:F

    #@9
    .line 57
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    #@b
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    if-nez p1, :cond_0

    #@6
    .line 80
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@8
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@a
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@c
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@e
    .line 78
    :goto_0
    return-void

    #@f
    .line 82
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@11
    int-to-float v0, v0

    #@12
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@14
    .line 83
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@16
    int-to-float v0, v0

    #@17
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@19
    .line 84
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@1b
    int-to-float v0, v0

    #@1c
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@1e
    .line 85
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@20
    int-to-float v0, v0

    #@21
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@23
    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 68
    if-nez p1, :cond_0

    #@6
    .line 69
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@8
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@a
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@c
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@e
    .line 67
    :goto_0
    return-void

    #@f
    .line 71
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@11
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@13
    .line 72
    iget v0, p1, Landroid/graphics/RectF;->top:F

    #@15
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@17
    .line 73
    iget v0, p1, Landroid/graphics/RectF;->right:F

    #@19
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@1b
    .line 74
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    #@1d
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@1f
    goto :goto_0
.end method

.method public static intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p0, "a"    # Landroid/graphics/RectF;
    .param p1, "b"    # Landroid/graphics/RectF;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 434
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@3
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #@5
    cmpg-float v1, v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    iget v1, p1, Landroid/graphics/RectF;->left:F

    #@b
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@d
    cmpg-float v1, v1, v2

    #@f
    if-gez v1, :cond_0

    #@11
    .line 435
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@13
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    #@15
    cmpg-float v1, v1, v2

    #@17
    if-gez v1, :cond_0

    #@19
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #@1b
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@1d
    cmpg-float v1, v1, v2

    #@1f
    if-gez v1, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    .line 434
    :cond_0
    return v0
.end method


# virtual methods
.method public final centerX()F
    .locals 2

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@4
    add-float/2addr v0, v1

    #@5
    const/high16 v1, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method

.method public final centerY()F
    .locals 2

    #@0
    .prologue
    .line 177
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@2
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@4
    add-float/2addr v0, v1

    #@5
    const/high16 v1, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v0, v1

    #@8
    return v0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 286
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@3
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@5
    cmpg-float v1, v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@b
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@d
    cmpg-float v1, v1, v2

    #@f
    if-gez v1, :cond_0

    #@11
    .line 287
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@13
    cmpl-float v1, p1, v1

    #@15
    if-ltz v1, :cond_0

    #@17
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@19
    cmpg-float v1, p1, v1

    #@1b
    if-gez v1, :cond_0

    #@1d
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@1f
    cmpl-float v1, p2, v1

    #@21
    if-ltz v1, :cond_0

    #@23
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@25
    cmpg-float v1, p2, v1

    #@27
    if-gez v1, :cond_0

    #@29
    const/4 v0, 0x1

    #@2a
    .line 286
    :cond_0
    return v0
.end method

.method public contains(FFFF)Z
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 304
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@3
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@5
    cmpg-float v1, v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@b
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@d
    cmpg-float v1, v1, v2

    #@f
    if-gez v1, :cond_0

    #@11
    .line 306
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@13
    cmpg-float v1, v1, p1

    #@15
    if-gtz v1, :cond_0

    #@17
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@19
    cmpg-float v1, v1, p2

    #@1b
    if-gtz v1, :cond_0

    #@1d
    .line 307
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@1f
    cmpl-float v1, v1, p3

    #@21
    if-ltz v1, :cond_0

    #@23
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@25
    cmpl-float v1, v1, p4

    #@27
    if-ltz v1, :cond_0

    #@29
    const/4 v0, 0x1

    #@2a
    .line 304
    :cond_0
    return v0
.end method

.method public contains(Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "r"    # Landroid/graphics/RectF;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 320
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@3
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@5
    cmpg-float v1, v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@b
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@d
    cmpg-float v1, v1, v2

    #@f
    if-gez v1, :cond_0

    #@11
    .line 322
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@13
    iget v2, p1, Landroid/graphics/RectF;->left:F

    #@15
    cmpg-float v1, v1, v2

    #@17
    if-gtz v1, :cond_0

    #@19
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@1b
    iget v2, p1, Landroid/graphics/RectF;->top:F

    #@1d
    cmpg-float v1, v1, v2

    #@1f
    if-gtz v1, :cond_0

    #@21
    .line 323
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@23
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #@25
    cmpl-float v1, v1, v2

    #@27
    if-ltz v1, :cond_0

    #@29
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@2b
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    #@2d
    cmpl-float v1, v1, v2

    #@2f
    if-ltz v1, :cond_0

    #@31
    const/4 v0, 0x1

    #@32
    .line 320
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 541
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 91
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 92
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/RectF;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 94
    check-cast v0, Landroid/graphics/RectF;

    #@15
    .line 95
    .local v0, "r":Landroid/graphics/RectF;
    iget v3, p0, Landroid/graphics/RectF;->left:F

    #@17
    iget v4, v0, Landroid/graphics/RectF;->left:F

    #@19
    cmpl-float v3, v3, v4

    #@1b
    if-nez v3, :cond_3

    #@1d
    iget v3, p0, Landroid/graphics/RectF;->top:F

    #@1f
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@21
    cmpl-float v3, v3, v4

    #@23
    if-nez v3, :cond_3

    #@25
    iget v3, p0, Landroid/graphics/RectF;->right:F

    #@27
    iget v4, v0, Landroid/graphics/RectF;->right:F

    #@29
    cmpl-float v3, v3, v4

    #@2b
    if-nez v3, :cond_3

    #@2d
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    #@2f
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    #@31
    cmpl-float v3, v3, v4

    #@33
    if-nez v3, :cond_3

    #@35
    :goto_0
    return v1

    #@36
    :cond_3
    move v1, v2

    #@37
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 100
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@4
    cmpl-float v1, v1, v4

    #@6
    if-eqz v1, :cond_1

    #@8
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@d
    move-result v0

    #@e
    .line 101
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    #@10
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@12
    cmpl-float v1, v1, v4

    #@14
    if-eqz v1, :cond_2

    #@16
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@18
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1b
    move-result v1

    #@1c
    :goto_1
    add-int v0, v3, v1

    #@1e
    .line 102
    mul-int/lit8 v3, v0, 0x1f

    #@20
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@22
    cmpl-float v1, v1, v4

    #@24
    if-eqz v1, :cond_3

    #@26
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@28
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2b
    move-result v1

    #@2c
    :goto_2
    add-int v0, v3, v1

    #@2e
    .line 103
    mul-int/lit8 v1, v0, 0x1f

    #@30
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    #@32
    cmpl-float v3, v3, v4

    #@34
    if-eqz v3, :cond_0

    #@36
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@38
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3b
    move-result v2

    #@3c
    :cond_0
    add-int v0, v1, v2

    #@3e
    .line 104
    return v0

    #@3f
    .line 100
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    #@40
    .restart local v0    # "result":I
    goto :goto_0

    #@41
    :cond_2
    move v1, v2

    #@42
    .line 101
    goto :goto_1

    #@43
    :cond_3
    move v1, v2

    #@44
    .line 102
    goto :goto_2
.end method

.method public final height()F
    .locals 2

    #@0
    .prologue
    .line 161
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@2
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@4
    sub-float/2addr v0, v1

    #@5
    return v0
.end method

.method public inset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    add-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@5
    .line 269
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@7
    add-float/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@a
    .line 270
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@c
    sub-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@f
    .line 271
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@11
    sub-float/2addr v0, p2

    #@12
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    .line 267
    return-void
.end method

.method public intersect(FFFF)Z
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    .line 345
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    cmpg-float v0, v0, p3

    #@4
    if-gez v0, :cond_4

    #@6
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@8
    cmpg-float v0, p1, v0

    #@a
    if-gez v0, :cond_4

    #@c
    .line 346
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@e
    cmpg-float v0, v0, p4

    #@10
    if-gez v0, :cond_4

    #@12
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    cmpg-float v0, p2, v0

    #@16
    if-gez v0, :cond_4

    #@18
    .line 347
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@1a
    cmpg-float v0, v0, p1

    #@1c
    if-gez v0, :cond_0

    #@1e
    .line 348
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@20
    .line 350
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@22
    cmpg-float v0, v0, p2

    #@24
    if-gez v0, :cond_1

    #@26
    .line 351
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@28
    .line 353
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@2a
    cmpl-float v0, v0, p3

    #@2c
    if-lez v0, :cond_2

    #@2e
    .line 354
    iput p3, p0, Landroid/graphics/RectF;->right:F

    #@30
    .line 356
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@32
    cmpl-float v0, v0, p4

    #@34
    if-lez v0, :cond_3

    #@36
    .line 357
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    #@38
    .line 359
    :cond_3
    const/4 v0, 0x1

    #@39
    return v0

    #@3a
    .line 361
    :cond_4
    const/4 v0, 0x0

    #@3b
    return v0
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 376
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public intersects(FFFF)Z
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 419
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@3
    cmpg-float v1, v1, p3

    #@5
    if-gez v1, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@9
    cmpg-float v1, p1, v1

    #@b
    if-gez v1, :cond_0

    #@d
    .line 420
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@f
    cmpg-float v1, v1, p4

    #@11
    if-gez v1, :cond_0

    #@13
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@15
    cmpg-float v1, p2, v1

    #@17
    if-gez v1, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 419
    :cond_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 145
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@3
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@5
    cmpl-float v1, v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@b
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@d
    cmpl-float v1, v1, v2

    #@f
    if-ltz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public offset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    add-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@5
    .line 239
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@7
    add-float/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@a
    .line 240
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@c
    add-float/2addr v0, p1

    #@d
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@f
    .line 241
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@11
    add-float/2addr v0, p2

    #@12
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    .line 237
    return-void
.end method

.method public offsetTo(FF)V
    .locals 2
    .param p1, "newLeft"    # F
    .param p2, "newTop"    # F

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@2
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@4
    sub-float v1, p1, v1

    #@6
    add-float/2addr v0, v1

    #@7
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@9
    .line 253
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@b
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@d
    sub-float v1, p2, v1

    #@f
    add-float/2addr v0, v1

    #@10
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@12
    .line 254
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@14
    .line 255
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@16
    .line 251
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/16 v1, 0x2c

    #@2
    .line 136
    const/16 v0, 0x5b

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@7
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@f
    .line 137
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@14
    const-string/jumbo v0, "]["

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@1f
    .line 138
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@22
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@27
    const/16 v0, 0x5d

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@2c
    .line 135
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@6
    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@c
    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@12
    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@18
    .line 580
    return-void
.end method

.method public round(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "dst"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 443
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@8
    invoke-static {v1}, Lcom/android/internal/util/FastMath;->round(F)I

    #@b
    move-result v1

    #@c
    .line 444
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@e
    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    #@11
    move-result v2

    #@12
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    invoke-static {v3}, Lcom/android/internal/util/FastMath;->round(F)I

    #@17
    move-result v3

    #@18
    .line 443
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@1b
    .line 442
    return-void
.end method

.method public roundOut(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "dst"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 452
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    float-to-double v0, v0

    #@3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@6
    move-result-wide v0

    #@7
    double-to-int v0, v0

    #@8
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@a
    float-to-double v2, v1

    #@b
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@e
    move-result-wide v2

    #@f
    double-to-int v1, v2

    #@10
    .line 453
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@12
    float-to-double v2, v2

    #@13
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@16
    move-result-wide v2

    #@17
    double-to-int v2, v2

    #@18
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    #@1a
    float-to-double v4, v3

    #@1b
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v4

    #@1f
    double-to-int v3, v4

    #@20
    .line 452
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    .line 451
    return-void
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    .line 198
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@2
    .line 199
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@4
    .line 200
    iput p3, p0, Landroid/graphics/RectF;->right:F

    #@6
    .line 201
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    #@8
    .line 197
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 224
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    int-to-float v0, v0

    #@3
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@5
    .line 225
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@7
    int-to-float v0, v0

    #@8
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@a
    .line 226
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@c
    int-to-float v0, v0

    #@d
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@f
    .line 227
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    int-to-float v0, v0

    #@12
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    .line 223
    return-void
.end method

.method public set(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 211
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@2
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@4
    .line 212
    iget v0, p1, Landroid/graphics/RectF;->top:F

    #@6
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@8
    .line 213
    iget v0, p1, Landroid/graphics/RectF;->right:F

    #@a
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@c
    .line 214
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    #@e
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@10
    .line 210
    return-void
.end method

.method public setEmpty()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 184
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@3
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@5
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@7
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@9
    .line 183
    return-void
.end method

.method public setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "a"    # Landroid/graphics/RectF;
    .param p2, "b"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 392
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v1, p2, Landroid/graphics/RectF;->right:F

    #@4
    cmpg-float v0, v0, v1

    #@6
    if-gez v0, :cond_0

    #@8
    iget v0, p2, Landroid/graphics/RectF;->left:F

    #@a
    iget v1, p1, Landroid/graphics/RectF;->right:F

    #@c
    cmpg-float v0, v0, v1

    #@e
    if-gez v0, :cond_0

    #@10
    .line 393
    iget v0, p1, Landroid/graphics/RectF;->top:F

    #@12
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    #@14
    cmpg-float v0, v0, v1

    #@16
    if-gez v0, :cond_0

    #@18
    iget v0, p2, Landroid/graphics/RectF;->top:F

    #@1a
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    #@1c
    cmpg-float v0, v0, v1

    #@1e
    if-gez v0, :cond_0

    #@20
    .line 394
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@22
    iget v1, p2, Landroid/graphics/RectF;->left:F

    #@24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/graphics/RectF;->left:F

    #@2a
    .line 395
    iget v0, p1, Landroid/graphics/RectF;->top:F

    #@2c
    iget v1, p2, Landroid/graphics/RectF;->top:F

    #@2e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@31
    move-result v0

    #@32
    iput v0, p0, Landroid/graphics/RectF;->top:F

    #@34
    .line 396
    iget v0, p1, Landroid/graphics/RectF;->right:F

    #@36
    iget v1, p2, Landroid/graphics/RectF;->right:F

    #@38
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@3e
    .line 397
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    #@40
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    #@42
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@48
    .line 398
    const/4 v0, 0x1

    #@49
    return v0

    #@4a
    .line 400
    :cond_0
    const/4 v0, 0x0

    #@4b
    return v0
.end method

.method public sort()V
    .locals 3

    #@0
    .prologue
    .line 525
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@2
    iget v2, p0, Landroid/graphics/RectF;->right:F

    #@4
    cmpl-float v1, v1, v2

    #@6
    if-lez v1, :cond_0

    #@8
    .line 526
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@a
    .line 527
    .local v0, "temp":F
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@c
    iput v1, p0, Landroid/graphics/RectF;->left:F

    #@e
    .line 528
    iput v0, p0, Landroid/graphics/RectF;->right:F

    #@10
    .line 530
    .end local v0    # "temp":F
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@12
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    cmpl-float v1, v1, v2

    #@16
    if-lez v1, :cond_1

    #@18
    .line 531
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@1a
    .line 532
    .restart local v0    # "temp":F
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@1c
    iput v1, p0, Landroid/graphics/RectF;->top:F

    #@1e
    .line 533
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    #@20
    .line 524
    .end local v0    # "temp":F
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v1, 0x2c

    #@2
    .line 124
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 125
    const/16 v0, 0x5b

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 126
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@18
    const-string/jumbo v0, "]["

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@23
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2b
    const/16 v0, 0x5d

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RectF("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/graphics/RectF;->top:F

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 109
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@28
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 109
    const-string/jumbo v1, ", "

    #@2f
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 109
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@35
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 109
    const-string/jumbo v1, ")"

    #@3c
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public union(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 505
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    cmpg-float v0, p1, v0

    #@4
    if-gez v0, :cond_2

    #@6
    .line 506
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@8
    .line 510
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@a
    cmpg-float v0, p2, v0

    #@c
    if-gez v0, :cond_3

    #@e
    .line 511
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@10
    .line 504
    :cond_1
    :goto_1
    return-void

    #@11
    .line 507
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@13
    cmpl-float v0, p1, v0

    #@15
    if-lez v0, :cond_0

    #@17
    .line 508
    iput p1, p0, Landroid/graphics/RectF;->right:F

    #@19
    goto :goto_0

    #@1a
    .line 512
    :cond_3
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@1c
    cmpl-float v0, p2, v0

    #@1e
    if-lez v0, :cond_1

    #@20
    .line 513
    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    #@22
    goto :goto_1
.end method

.method public union(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    #@0
    .prologue
    .line 467
    cmpg-float v0, p1, p3

    #@2
    if-gez v0, :cond_3

    #@4
    cmpg-float v0, p2, p4

    #@6
    if-gez v0, :cond_3

    #@8
    .line 468
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@a
    iget v1, p0, Landroid/graphics/RectF;->right:F

    #@c
    cmpg-float v0, v0, v1

    #@e
    if-gez v0, :cond_4

    #@10
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@12
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    #@14
    cmpg-float v0, v0, v1

    #@16
    if-gez v0, :cond_4

    #@18
    .line 469
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@1a
    cmpl-float v0, v0, p1

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 470
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@20
    .line 471
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@22
    cmpl-float v0, v0, p2

    #@24
    if-lez v0, :cond_1

    #@26
    .line 472
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@28
    .line 473
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@2a
    cmpg-float v0, v0, p3

    #@2c
    if-gez v0, :cond_2

    #@2e
    .line 474
    iput p3, p0, Landroid/graphics/RectF;->right:F

    #@30
    .line 475
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@32
    cmpg-float v0, v0, p4

    #@34
    if-gez v0, :cond_3

    #@36
    .line 476
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    #@38
    .line 466
    :cond_3
    :goto_0
    return-void

    #@39
    .line 478
    :cond_4
    iput p1, p0, Landroid/graphics/RectF;->left:F

    #@3b
    .line 479
    iput p2, p0, Landroid/graphics/RectF;->top:F

    #@3d
    .line 480
    iput p3, p0, Landroid/graphics/RectF;->right:F

    #@3f
    .line 481
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    #@41
    goto :goto_0
.end method

.method public union(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 494
    iget v0, p1, Landroid/graphics/RectF;->left:F

    #@2
    iget v1, p1, Landroid/graphics/RectF;->top:F

    #@4
    iget v2, p1, Landroid/graphics/RectF;->right:F

    #@6
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->union(FFFF)V

    #@b
    .line 493
    return-void
.end method

.method public final width()F
    .locals 2

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@2
    iget v1, p0, Landroid/graphics/RectF;->left:F

    #@4
    sub-float/2addr v0, v1

    #@5
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 550
    iget v0, p0, Landroid/graphics/RectF;->left:F

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 551
    iget v0, p0, Landroid/graphics/RectF;->top:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 552
    iget v0, p0, Landroid/graphics/RectF;->right:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 553
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 549
    return-void
.end method
