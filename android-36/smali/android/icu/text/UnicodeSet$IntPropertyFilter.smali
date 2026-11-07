.class final Landroid/icu/text/UnicodeSet$IntPropertyFilter;
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
    name = "IntPropertyFilter"
.end annotation


# instance fields
.field greylist-max-o prop:I

.field greylist-max-o value:I


# direct methods
.method constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "prop"    # I
    .param p2, "value"    # I

    .line 3299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3300
    iput p1, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    .line 3301
    iput p2, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    .line 3302
    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 4
    .param p1, "ch"    # I

    .line 3305
    iget v0, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    iget v1, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
