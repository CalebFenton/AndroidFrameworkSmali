.class Landroid/icu/text/UnicodeSet$IntPropertyFilter;
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
    name = "IntPropertyFilter"
.end annotation


# instance fields
.field prop:I

.field value:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "prop"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 3145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3146
    iput p1, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    #@5
    .line 3147
    iput p2, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    #@7
    .line 3145
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 3150
    iget v0, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    #@2
    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    #@8
    if-ne v0, v1, :cond_0

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
