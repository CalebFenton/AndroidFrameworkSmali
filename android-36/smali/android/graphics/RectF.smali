.class public Landroid/graphics/RectF;
.super Ljava/lang/Object;
.source "RectF.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist bottom:F

.field public whitelist left:F

.field public whitelist right:F

.field public whitelist top:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 565
    new-instance v0, Landroid/graphics/RectF$1;

    invoke-direct {v0}, Landroid/graphics/RectF$1;-><init>()V

    sput-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(FFFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 59
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 60
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 61
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p1, :cond_f

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_23

    .line 86
    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 87
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 88
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 89
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 91
    :goto_23
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_f

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_1f

    .line 75
    :cond_f
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 76
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 77
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 78
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 80
    :goto_1f
    return-void
.end method

.method public static whitelist intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 4
    .param p0, "a"    # Landroid/graphics/RectF;
    .param p1, "b"    # Landroid/graphics/RectF;

    .line 441
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method


# virtual methods
.method public final whitelist centerX()F
    .registers 3

    .line 176
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final whitelist centerY()F
    .registers 3

    .line 184
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public whitelist contains(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 293
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public whitelist contains(FFFF)Z
    .registers 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 311
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-ltz v0, :cond_2a

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-ltz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public whitelist contains(Landroid/graphics/RectF;)Z
    .registers 4
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 327
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_32

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_32

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_32

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 98
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/RectF;

    .line 99
    .local v2, "r":Landroid/graphics/RectF;
    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    return v0

    .line 96
    .end local v2    # "r":Landroid/graphics/RectF;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 104
    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    .line 105
    .local v0, "result":I
    :goto_10
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1f

    iget v4, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    add-int/2addr v3, v4

    .line 106
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_30

    iget v4, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_31

    :cond_30
    move v4, v2

    :goto_31
    add-int/2addr v0, v4

    .line 107
    .end local v3    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_40

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_40
    add-int/2addr v3, v2

    .line 108
    .end local v0    # "result":I
    .restart local v3    # "result":I
    return v3
.end method

.method public final whitelist height()F
    .registers 3

    .line 168
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist inset(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 275
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 276
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 277
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 278
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 279
    return-void
.end method

.method public whitelist intersect(FFFF)Z
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 352
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3a

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_3a

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3a

    .line 354
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_20

    .line 355
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 357
    :cond_20
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_28

    .line 358
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 360
    :cond_28
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, p3

    if-lez v0, :cond_30

    .line 361
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 363
    :cond_30
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p4

    if-lez v0, :cond_38

    .line 364
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 366
    :cond_38
    const/4 v0, 0x1

    return v0

    .line 368
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist intersect(Landroid/graphics/RectF;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 383
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    return v0
.end method

.method public whitelist intersects(FFFF)Z
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 426
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_1a

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_1a

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final whitelist isEmpty()Z
    .registers 3

    .line 152
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_13

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist offset(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 245
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 246
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 247
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 248
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 249
    return-void
.end method

.method public whitelist offsetTo(FF)V
    .registers 5
    .param p1, "newLeft"    # F
    .param p2, "newTop"    # F

    .line 259
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 260
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 261
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 262
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 263
    return-void
.end method

.method public greylist-max-o printShortString(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 143
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 144
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 146
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 596
    return-void
.end method

.method public whitelist round(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "dst"    # Landroid/graphics/Rect;

    .line 450
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 451
    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v3

    .line 450
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 452
    return-void
.end method

.method public whitelist roundOut(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "dst"    # Landroid/graphics/Rect;

    .line 459
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 460
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 459
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    return-void
.end method

.method public greylist-max-o scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 603
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1a

    .line 604
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 605
    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 606
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 607
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 609
    :cond_1a
    return-void
.end method

.method public whitelist set(FFFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 205
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 206
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 207
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 208
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 209
    return-void
.end method

.method public whitelist set(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Rect;

    .line 231
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 232
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 233
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 234
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 235
    return-void
.end method

.method public whitelist set(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/RectF;

    .line 218
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 219
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 220
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 221
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 222
    return-void
.end method

.method public whitelist setEmpty()V
    .registers 2

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 192
    return-void
.end method

.method public whitelist setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "a"    # Landroid/graphics/RectF;
    .param p2, "b"    # Landroid/graphics/RectF;

    .line 399
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 401
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 402
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 403
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 404
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 405
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist sort()V
    .registers 3

    .line 532
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 533
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 534
    .local v0, "temp":F
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 535
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 537
    .end local v0    # "temp":F
    :cond_10
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 538
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 539
    .restart local v0    # "temp":F
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 540
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 542
    .end local v0    # "temp":F
    :cond_20
    return-void
.end method

.method public whitelist toShortString()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist union(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 512
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 513
    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_11

    .line 514
    :cond_9
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    .line 515
    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 517
    :cond_11
    :goto_11
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1a

    .line 518
    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_22

    .line 519
    :cond_1a
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_22

    .line 520
    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    .line 522
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist union(FFFF)V
    .registers 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 474
    cmpg-float v0, p1, p3

    if-gez v0, :cond_41

    cmpg-float v0, p2, p4

    if-gez v0, :cond_41

    .line 475
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_39

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_39

    .line 476
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_20

    .line 477
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 478
    :cond_20
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_28

    .line 479
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 480
    :cond_28
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_30

    .line 481
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 482
    :cond_30
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_41

    .line 483
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_41

    .line 485
    :cond_39
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 486
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 487
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 488
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 491
    :cond_41
    :goto_41
    return-void
.end method

.method public whitelist union(Landroid/graphics/RectF;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 501
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->union(FFFF)V

    .line 502
    return-void
.end method

.method public final whitelist width()F
    .registers 3

    .line 160
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 559
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 560
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 561
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 562
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 563
    return-void
.end method
