.class Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
.super Landroid/icu/text/RuleBasedCollator$NFDIterator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTF16NFDIterator"
.end annotation


# instance fields
.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1563
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected nextRawCodePoint()I
    .locals 3

    #@0
    .prologue
    .line 1572
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    #@2
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    #@4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 1573
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    #@e
    iget v2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    #@10
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@13
    move-result v0

    #@14
    .line 1574
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    #@16
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@19
    move-result v2

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    #@1d
    .line 1575
    return v0
.end method

.method setText(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    #@0
    .prologue
    .line 1565
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->reset()V

    #@3
    .line 1566
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    #@5
    .line 1567
    iput p2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    #@7
    .line 1564
    return-void
.end method
