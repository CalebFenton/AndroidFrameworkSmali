.class Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeneralCategoryMaskFilter"
.end annotation


# instance fields
.field mask:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    #@0
    .prologue
    .line 3136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I

    #@5
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 4
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3138
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@5
    move-result v2

    #@6
    shl-int v2, v0, v2

    #@8
    iget v3, p0, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I

    #@a
    and-int/2addr v2, v3

    #@b
    if-eqz v2, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    goto :goto_0
.end method
