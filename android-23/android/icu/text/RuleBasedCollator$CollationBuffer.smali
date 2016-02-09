.class final Landroid/icu/text/RuleBasedCollator$CollationBuffer;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationBuffer"
.end annotation


# instance fields
.field leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

.field leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

.field leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

.field rawCollationKey:Landroid/icu/text/RawCollationKey;

.field rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

.field rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

.field rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;


# direct methods
.method private constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1778
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@5
    invoke-direct {v0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@8
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@a
    .line 1779
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@c
    invoke-direct {v0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@f
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@11
    .line 1780
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@13
    invoke-direct {v0, p1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@16
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@18
    .line 1781
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@1a
    invoke-direct {v0, p1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@1d
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@1f
    .line 1782
    new-instance v0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@21
    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    #@24
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@26
    .line 1783
    new-instance v0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@28
    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@2d
    .line 1784
    new-instance v0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@2f
    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    #@32
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@34
    .line 1785
    new-instance v0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@36
    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    #@39
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@3b
    .line 1777
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 0
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@3
    return-void
.end method
