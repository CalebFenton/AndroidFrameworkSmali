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
.field protected greylist-max-o pos:I

.field protected greylist-max-o s:Ljava/lang/CharSequence;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1520
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist-max-o nextRawCodePoint()I
    .registers 4

    .line 1529
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, -0x1

    return v0

    .line 1530
    :cond_c
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1531
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    .line 1532
    return v0
.end method

.method greylist-max-o setText(Ljava/lang/CharSequence;I)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 1522
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->reset()V

    .line 1523
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1524
    iput p2, p0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    .line 1525
    return-void
.end method
