.class public final Landroid/graphics/Rect;
.super Ljava/lang/Object;
.source "Rect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Rect$1;,
        Landroid/graphics/Rect$UnflattenHelper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 606
    new-instance v0, Landroid/graphics/Rect$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect$1;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 77
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@7
    .line 78
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@9
    .line 79
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    if-nez p1, :cond_0

    #@6
    .line 91
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@8
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@a
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@c
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@e
    .line 89
    :goto_0
    return-void

    #@f
    .line 93
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@11
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@13
    .line 94
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@15
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@17
    .line 95
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@19
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@1b
    .line 96
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@1d
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@1f
    goto :goto_0
.end method

.method public static intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 507
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    if-ge v1, v2, :cond_0

    #@13
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@15
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@17
    if-ge v1, v2, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    :cond_0
    return v0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    invoke-static {p0}, Landroid/graphics/Rect$UnflattenHelper;->getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    .line 174
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 175
    const/4 v1, 0x0

    #@b
    return-object v1

    #@c
    .line 177
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v2

    #@17
    .line 178
    const/4 v3, 0x2

    #@18
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v3

    #@20
    .line 179
    const/4 v4, 0x3

    #@21
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@28
    move-result v4

    #@29
    .line 180
    const/4 v5, 0x4

    #@2a
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@31
    move-result v5

    #@32
    .line 177
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    #@35
    return-object v1
.end method


# virtual methods
.method public final centerX()I
    .locals 2

    #@0
    .prologue
    .line 222
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@4
    add-int/2addr v0, v1

    #@5
    shr-int/lit8 v0, v0, 0x1

    #@7
    return v0
.end method

.method public final centerY()I
    .locals 2

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@4
    add-int/2addr v0, v1

    #@5
    shr-int/lit8 v0, v0, 0x1

    #@7
    return v0
.end method

.method public contains(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 369
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 370
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@f
    if-lt p1, v1, :cond_0

    #@11
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@13
    if-ge p1, v1, :cond_0

    #@15
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@17
    if-lt p2, v1, :cond_0

    #@19
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@1b
    if-ge p2, v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 369
    :cond_0
    return v0
.end method

.method public contains(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 387
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 389
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@f
    if-gt v1, p1, :cond_0

    #@11
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@13
    if-gt v1, p2, :cond_0

    #@15
    .line 390
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@17
    if-lt v1, p3, :cond_0

    #@19
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@1b
    if-lt v1, p4, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 387
    :cond_0
    return v0
.end method

.method public contains(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 403
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 405
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@11
    if-gt v1, v2, :cond_0

    #@13
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@15
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@17
    if-gt v1, v2, :cond_0

    #@19
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@1b
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@1d
    if-lt v1, v2, :cond_0

    #@1f
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@21
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@23
    if-lt v1, v2, :cond_0

    #@25
    const/4 v0, 0x1

    #@26
    .line 403
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 591
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
    .line 102
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 103
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/Rect;->getClass()Ljava/lang/Class;

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
    .line 105
    check-cast v0, Landroid/graphics/Rect;

    #@15
    .line 106
    .local v0, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/graphics/Rect;->left:I

    #@17
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    iget v3, p0, Landroid/graphics/Rect;->top:I

    #@1d
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@1f
    if-ne v3, v4, :cond_3

    #@21
    iget v3, p0, Landroid/graphics/Rect;->right:I

    #@23
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@25
    if-ne v3, v4, :cond_3

    #@27
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    #@29
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@2b
    if-ne v3, v4, :cond_3

    #@2d
    :goto_0
    return v1

    #@2e
    :cond_3
    move v1, v2

    #@2f
    goto :goto_0
.end method

.method public final exactCenterX()F
    .locals 2

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-float v0, v0

    #@6
    const/high16 v1, 0x3f000000    # 0.5f

    #@8
    mul-float/2addr v0, v1

    #@9
    return v0
.end method

.method public final exactCenterY()F
    .locals 2

    #@0
    .prologue
    .line 245
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@4
    add-int/2addr v0, v1

    #@5
    int-to-float v0, v0

    #@6
    const/high16 v1, 0x3f000000    # 0.5f

    #@8
    mul-float/2addr v0, v1

    #@9
    return v0
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    .line 160
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 162
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 164
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 111
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Landroid/graphics/Rect;->top:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 113
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 114
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@12
    add-int v0, v1, v2

    #@14
    .line 115
    return v0
.end method

.method public final height()I
    .locals 2

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public inset(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 323
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 324
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    add-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@a
    .line 325
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    sub-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    .line 326
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    sub-int/2addr v0, p2

    #@12
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 322
    return-void
.end method

.method public inset(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 351
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 352
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    add-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@a
    .line 353
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    sub-int/2addr v0, p3

    #@d
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    .line 354
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    sub-int/2addr v0, p4

    #@12
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 350
    return-void
.end method

.method public inset(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 336
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@4
    add-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@7
    .line 337
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@9
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@b
    add-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@e
    .line 338
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@10
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@12
    sub-int/2addr v0, v1

    #@13
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@15
    .line 339
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@17
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@19
    sub-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@1c
    .line 335
    return-void
.end method

.method public intersect(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 428
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    if-ge v0, p3, :cond_4

    #@4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@6
    if-ge p1, v0, :cond_4

    #@8
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@a
    if-ge v0, p4, :cond_4

    #@c
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@e
    if-ge p2, v0, :cond_4

    #@10
    .line 429
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@12
    if-ge v0, p1, :cond_0

    #@14
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@16
    .line 430
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@18
    if-ge v0, p2, :cond_1

    #@1a
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@1c
    .line 431
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1e
    if-le v0, p3, :cond_2

    #@20
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@22
    .line 432
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@24
    if-le v0, p4, :cond_3

    #@26
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 433
    :cond_3
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 435
    :cond_4
    const/4 v0, 0x0

    #@2b
    return v0
.end method

.method public intersect(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 451
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public intersects(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 493
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    if-ge v1, p3, :cond_0

    #@5
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@7
    if-ge p1, v1, :cond_0

    #@9
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@b
    if-ge v1, p4, :cond_0

    #@d
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@f
    if-ge p2, v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 197
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    if-lt v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public offset(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 293
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 294
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    add-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@a
    .line 295
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    add-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    .line 296
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    add-int/2addr v0, p2

    #@12
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 292
    return-void
.end method

.method public offsetTo(II)V
    .locals 2
    .param p1, "newLeft"    # I
    .param p2, "newTop"    # I

    #@0
    .prologue
    .line 307
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@4
    sub-int v1, p1, v1

    #@6
    add-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@9
    .line 308
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@d
    sub-int v1, p2, v1

    #@f
    add-int/2addr v0, v1

    #@10
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@12
    .line 309
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@14
    .line 310
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@16
    .line 306
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/16 v1, 0x2c

    #@2
    .line 188
    const/16 v0, 0x5b

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@7
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@f
    .line 189
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@14
    const-string/jumbo v0, "]["

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1f
    .line 190
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@27
    const/16 v0, 0x5d

    #@29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@2c
    .line 187
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@6
    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@c
    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@12
    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@18
    .line 630
    return-void
.end method

.method public scale(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    .line 642
    const/high16 v0, 0x3f800000    # 1.0f

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 643
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@a
    int-to-float v0, v0

    #@b
    mul-float/2addr v0, p1

    #@c
    add-float/2addr v0, v1

    #@d
    float-to-int v0, v0

    #@e
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@10
    .line 644
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@12
    int-to-float v0, v0

    #@13
    mul-float/2addr v0, p1

    #@14
    add-float/2addr v0, v1

    #@15
    float-to-int v0, v0

    #@16
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@18
    .line 645
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1a
    int-to-float v0, v0

    #@1b
    mul-float/2addr v0, p1

    #@1c
    add-float/2addr v0, v1

    #@1d
    float-to-int v0, v0

    #@1e
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@20
    .line 646
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@22
    int-to-float v0, v0

    #@23
    mul-float/2addr v0, p1

    #@24
    add-float/2addr v0, v1

    #@25
    float-to-int v0, v0

    #@26
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 641
    :cond_0
    return-void
.end method

.method public set(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 266
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@2
    .line 267
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@4
    .line 268
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@6
    .line 269
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@8
    .line 265
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 279
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@4
    .line 280
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@6
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@8
    .line 281
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@a
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    .line 282
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@e
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 278
    return-void
.end method

.method public setEmpty()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 252
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@3
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@5
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@7
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@9
    .line 251
    return-void
.end method

.method public setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "a"    # Landroid/graphics/Rect;
    .param p2, "b"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 468
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@8
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@e
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@10
    if-ge v0, v1, :cond_0

    #@12
    iget v0, p2, Landroid/graphics/Rect;->top:I

    #@14
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@16
    if-ge v0, v1, :cond_0

    #@18
    .line 469
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@1a
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@22
    .line 470
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@24
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@2c
    .line 471
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@2e
    iget v1, p2, Landroid/graphics/Rect;->right:I

    #@30
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@36
    .line 472
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@38
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    #@3a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@40
    .line 473
    const/4 v0, 0x1

    #@41
    return v0

    #@42
    .line 475
    :cond_0
    const/4 v0, 0x0

    #@43
    return v0
.end method

.method public sort()V
    .locals 3

    #@0
    .prologue
    .line 575
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@2
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@4
    if-le v1, v2, :cond_0

    #@6
    .line 576
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@8
    .line 577
    .local v0, "temp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@a
    iput v1, p0, Landroid/graphics/Rect;->left:I

    #@c
    .line 578
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@e
    .line 580
    .end local v0    # "temp":I
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@10
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@12
    if-le v1, v2, :cond_1

    #@14
    .line 581
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@16
    .line 582
    .restart local v0    # "temp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@18
    iput v1, p0, Landroid/graphics/Rect;->top:I

    #@1a
    .line 583
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@1c
    .line 574
    .end local v0    # "temp":I
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

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
    .line 139
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 140
    const/16 v0, 0x5b

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 141
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    const-string/jumbo v0, "]["

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    const/16 v0, 0x5d

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 143
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
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 121
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Rect("

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 122
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    const-string/jumbo v1, " - "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 123
    const-string/jumbo v1, ", "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    const-string/jumbo v1, ")"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    return-object v1
.end method

.method public union(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 555
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    if-ge p1, v0, :cond_2

    #@4
    .line 556
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@6
    .line 560
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@8
    if-ge p2, v0, :cond_3

    #@a
    .line 561
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@c
    .line 554
    :cond_1
    :goto_1
    return-void

    #@d
    .line 557
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    if-le p1, v0, :cond_0

    #@11
    .line 558
    iput p1, p0, Landroid/graphics/Rect;->right:I

    #@13
    goto :goto_0

    #@14
    .line 562
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@16
    if-le p2, v0, :cond_1

    #@18
    .line 563
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    #@1a
    goto :goto_1
.end method

.method public union(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 521
    if-ge p1, p3, :cond_3

    #@2
    if-ge p2, p4, :cond_3

    #@4
    .line 522
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@6
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@8
    if-ge v0, v1, :cond_4

    #@a
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@c
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@e
    if-ge v0, v1, :cond_4

    #@10
    .line 523
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@12
    if-le v0, p1, :cond_0

    #@14
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@16
    .line 524
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@18
    if-le v0, p2, :cond_1

    #@1a
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@1c
    .line 525
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1e
    if-ge v0, p3, :cond_2

    #@20
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@22
    .line 526
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@24
    if-ge v0, p4, :cond_3

    #@26
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 520
    :cond_3
    :goto_0
    return-void

    #@29
    .line 528
    :cond_4
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@2b
    .line 529
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@2d
    .line 530
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@2f
    .line 531
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@31
    goto :goto_0
.end method

.method public union(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 544
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    #@b
    .line 543
    return-void
.end method

.method public final width()I
    .locals 2

    #@0
    .prologue
    .line 205
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@2
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 600
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 601
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 602
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 603
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 599
    return-void
.end method
