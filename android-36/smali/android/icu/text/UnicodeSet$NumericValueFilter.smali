.class final Landroid/icu/text/UnicodeSet$NumericValueFilter;
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
    name = "NumericValueFilter"
.end annotation


# instance fields
.field greylist-max-o value:D


# direct methods
.method constructor greylist-max-o <init>(D)V
    .registers 3
    .param p1, "value"    # D

    .line 3280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/text/UnicodeSet$NumericValueFilter;->value:D

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 6
    .param p1, "ch"    # I

    .line 3283
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide v0

    iget-wide v2, p0, Landroid/icu/text/UnicodeSet$NumericValueFilter;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
