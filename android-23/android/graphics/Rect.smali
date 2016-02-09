.class public final Landroid/graphics/Rect;
.super Ljava/lang/Object;
.source "Rect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Rect$UnflattenHelper;,
        Landroid/graphics/Rect$1;
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
    .line 573
    new-instance v0, Landroid/graphics/Rect$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect$1;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 72
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@7
    .line 73
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@9
    .line 74
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@b
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 85
    if-nez p1, :cond_0

    #@6
    .line 86
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@8
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@a
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@c
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@e
    .line 84
    :goto_0
    return-void

    #@f
    .line 88
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@11
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@13
    .line 89
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@15
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@17
    .line 90
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@19
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@1b
    .line 91
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
    .line 474
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
    .line 168
    invoke-static {p0}, Landroid/graphics/Rect$UnflattenHelper;->getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    .line 169
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 170
    const/4 v1, 0x0

    #@b
    return-object v1

    #@c
    .line 172
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
    .line 173
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
    .line 174
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
    .line 175
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
    .line 172
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    #@35
    return-object v1
.end method


# virtual methods
.method public final centerX()I
    .locals 2

    #@0
    .prologue
    .line 217
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
    .line 226
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
    .line 336
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
    .line 337
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
    .line 336
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
    .line 354
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
    .line 356
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@f
    if-gt v1, p1, :cond_0

    #@11
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@13
    if-gt v1, p2, :cond_0

    #@15
    .line 357
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
    .line 354
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
    .line 370
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
    .line 372
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
    .line 370
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 558
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
    .line 97
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 98
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
    .line 100
    check-cast v0, Landroid/graphics/Rect;

    #@15
    .line 101
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
    .line 233
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
    .line 240
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
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    .line 155
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 157
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 159
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    .line 160
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
    .line 106
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    .line 107
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Landroid/graphics/Rect;->top:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 108
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 109
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@12
    add-int v0, v1, v2

    #@14
    .line 110
    return v0
.end method

.method public final height()I
    .locals 2

    #@0
    .prologue
    .line 208
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
    .line 318
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 319
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    add-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@a
    .line 320
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    sub-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    .line 321
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    sub-int/2addr v0, p2

    #@12
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 317
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
    .line 395
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
    .line 396
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@12
    if-ge v0, p1, :cond_0

    #@14
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@16
    .line 397
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@18
    if-ge v0, p2, :cond_1

    #@1a
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@1c
    .line 398
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1e
    if-le v0, p3, :cond_2

    #@20
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@22
    .line 399
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@24
    if-le v0, p4, :cond_3

    #@26
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 400
    :cond_3
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 402
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
    .line 418
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
    .line 460
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
    .line 192
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
    .line 288
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    add-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@5
    .line 289
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    add-int/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@a
    .line 290
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    add-int/2addr v0, p1

    #@d
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    .line 291
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    add-int/2addr v0, p2

    #@12
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@14
    .line 287
    return-void
.end method

.method public offsetTo(II)V
    .locals 2
    .param p1, "newLeft"    # I
    .param p2, "newTop"    # I

    #@0
    .prologue
    .line 302
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
    .line 303
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
    .line 304
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@14
    .line 305
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@16
    .line 301
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/16 v1, 0x2c

    #@2
    .line 183
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
    .line 184
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
    .line 185
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
    .line 182
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@6
    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@c
    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@12
    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@18
    .line 597
    return-void
.end method

.method public scale(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    .line 609
    const/high16 v0, 0x3f800000    # 1.0f

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 610
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
    .line 611
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
    .line 612
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
    .line 613
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
    .line 608
    :cond_0
    return-void
.end method

.method public scaleRoundIn(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 622
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 623
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@8
    int-to-float v0, v0

    #@9
    mul-float/2addr v0, p1

    #@a
    float-to-double v0, v0

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@e
    move-result-wide v0

    #@f
    double-to-int v0, v0

    #@10
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@12
    .line 624
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@14
    int-to-float v0, v0

    #@15
    mul-float/2addr v0, p1

    #@16
    float-to-double v0, v0

    #@17
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@1a
    move-result-wide v0

    #@1b
    double-to-int v0, v0

    #@1c
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@1e
    .line 625
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@20
    int-to-float v0, v0

    #@21
    mul-float/2addr v0, p1

    #@22
    float-to-double v0, v0

    #@23
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@26
    move-result-wide v0

    #@27
    double-to-int v0, v0

    #@28
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@2a
    .line 626
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@2c
    int-to-float v0, v0

    #@2d
    mul-float/2addr v0, p1

    #@2e
    float-to-double v0, v0

    #@2f
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@32
    move-result-wide v0

    #@33
    double-to-int v0, v0

    #@34
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@36
    .line 621
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
    .line 261
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@2
    .line 262
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@4
    .line 263
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@6
    .line 264
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@8
    .line 260
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 274
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@4
    .line 275
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@6
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@8
    .line 276
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@a
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    .line 277
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@e
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 273
    return-void
.end method

.method public setEmpty()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 247
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@3
    iput v0, p0, Landroid/graphics/Rect;->top:I

    #@5
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@7
    iput v0, p0, Landroid/graphics/Rect;->left:I

    #@9
    .line 246
    return-void
.end method

.method public setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "a"    # Landroid/graphics/Rect;
    .param p2, "b"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 435
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
    .line 436
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
    .line 437
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
    .line 438
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
    .line 439
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
    .line 440
    const/4 v0, 0x1

    #@41
    return v0

    #@42
    .line 442
    :cond_0
    const/4 v0, 0x0

    #@43
    return v0
.end method

.method public sort()V
    .locals 3

    #@0
    .prologue
    .line 542
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@2
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@4
    if-le v1, v2, :cond_0

    #@6
    .line 543
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@8
    .line 544
    .local v0, "temp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    #@a
    iput v1, p0, Landroid/graphics/Rect;->left:I

    #@c
    .line 545
    iput v0, p0, Landroid/graphics/Rect;->right:I

    #@e
    .line 547
    .end local v0    # "temp":I
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@10
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@12
    if-le v1, v2, :cond_1

    #@14
    .line 548
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@16
    .line 549
    .restart local v0    # "temp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    #@18
    iput v1, p0, Landroid/graphics/Rect;->top:I

    #@1a
    .line 550
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    #@1c
    .line 541
    .end local v0    # "temp":I
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 126
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
    .line 134
    const/4 v0, 0x0

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 135
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
    .line 136
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
    .line 137
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
    .line 138
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
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x20

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 116
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
    .line 117
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
    .line 118
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
    .line 119
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
    .line 522
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    if-ge p1, v0, :cond_2

    #@4
    .line 523
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@6
    .line 527
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@8
    if-ge p2, v0, :cond_3

    #@a
    .line 528
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@c
    .line 521
    :cond_1
    :goto_1
    return-void

    #@d
    .line 524
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@f
    if-le p1, v0, :cond_0

    #@11
    .line 525
    iput p1, p0, Landroid/graphics/Rect;->right:I

    #@13
    goto :goto_0

    #@14
    .line 529
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@16
    if-le p2, v0, :cond_1

    #@18
    .line 530
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
    .line 488
    if-ge p1, p3, :cond_3

    #@2
    if-ge p2, p4, :cond_3

    #@4
    .line 489
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
    .line 490
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@12
    if-le v0, p1, :cond_0

    #@14
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@16
    .line 491
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@18
    if-le v0, p2, :cond_1

    #@1a
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@1c
    .line 492
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@1e
    if-ge v0, p3, :cond_2

    #@20
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@22
    .line 493
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@24
    if-ge v0, p4, :cond_3

    #@26
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@28
    .line 487
    :cond_3
    :goto_0
    return-void

    #@29
    .line 495
    :cond_4
    iput p1, p0, Landroid/graphics/Rect;->left:I

    #@2b
    .line 496
    iput p2, p0, Landroid/graphics/Rect;->top:I

    #@2d
    .line 497
    iput p3, p0, Landroid/graphics/Rect;->right:I

    #@2f
    .line 498
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    #@31
    goto :goto_0
.end method

.method public union(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 511
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
    .line 510
    return-void
.end method

.method public final width()I
    .locals 2

    #@0
    .prologue
    .line 200
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
    .line 567
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 568
    iget v0, p0, Landroid/graphics/Rect;->top:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 569
    iget v0, p0, Landroid/graphics/Rect;->right:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 570
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 566
    return-void
.end method
