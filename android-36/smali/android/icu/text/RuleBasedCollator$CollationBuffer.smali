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
.field greylist-max-o leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

.field greylist-max-o leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field greylist-max-o leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

.field greylist-max-o leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

.field greylist-max-o rawCollationKey:Landroid/icu/text/RawCollationKey;

.field greylist-max-o rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

.field greylist-max-o rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field greylist-max-o rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

.field greylist-max-o rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/impl/coll/CollationData;)V
    .registers 3
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 1735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1736
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    .line 1737
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    .line 1738
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1739
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1740
    new-instance v0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    .line 1741
    new-instance v0, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    .line 1742
    new-instance v0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    .line 1743
    new-instance v0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    .line 1744
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method
