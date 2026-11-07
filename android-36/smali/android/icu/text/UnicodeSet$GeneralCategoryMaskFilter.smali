.class final Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GeneralCategoryMaskFilter"
.end annotation


# instance fields
.field greylist-max-o mask:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "mask"    # I

    .line 3289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 5
    .param p1, "ch"    # I

    .line 3292
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iget v2, p0, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method
