.class public Landroid/support/v4/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBoolean(Landroid/content/res/TypedArray;IIZ)Z
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Z

    #@0
    .prologue
    .line 31
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3
    move-result v0

    #@4
    .line 32
    .local v0, "val":Z
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 38
    .local v0, "val":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@6
    .line 39
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 41
    :cond_0
    return-object v0
.end method

.method public static getInt(Landroid/content/res/TypedArray;III)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I

    #@0
    .prologue
    .line 46
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3
    move-result v0

    #@4
    .line 47
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static getResourceId(Landroid/content/res/TypedArray;III)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I
        .annotation build Landroid/support/annotation/AnyRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyRes;
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3
    move-result v0

    #@4
    .line 53
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public static getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 59
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 60
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 62
    :cond_0
    return-object v0
.end method

.method public static getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 68
    .local v0, "val":[Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    #@6
    .line 69
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    .line 71
    :cond_0
    return-object v0
.end method
