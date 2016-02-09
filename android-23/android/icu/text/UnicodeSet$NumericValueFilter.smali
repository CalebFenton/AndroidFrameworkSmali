.class Landroid/icu/text/UnicodeSet$NumericValueFilter;
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
    name = "NumericValueFilter"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 3128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Landroid/icu/text/UnicodeSet$NumericValueFilter;->value:D

    #@5
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 4
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 3130
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/icu/text/UnicodeSet$NumericValueFilter;->value:D

    #@6
    cmpl-double v0, v0, v2

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
