.class final Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "StandardPluralRanges.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/range/StandardPluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralRangesDataSink"
.end annotation


# instance fields
.field blacklist output:Landroid/icu/impl/number/range/StandardPluralRanges;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/number/range/StandardPluralRanges;)V
    .registers 2
    .param p1, "output"    # Landroid/icu/impl/number/range/StandardPluralRanges;

    .line 80
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;->output:Landroid/icu/impl/number/range/StandardPluralRanges;

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 11
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 86
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v0

    .line 87
    .local v0, "entriesArray":Landroid/icu/impl/UResource$Array;
    iget-object v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;->output:Landroid/icu/impl/number/range/StandardPluralRanges;

    invoke-interface {v0}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v2

    invoke-static {v1, v2}, Landroid/icu/impl/number/range/StandardPluralRanges;->-$$Nest$msetCapacity(Landroid/icu/impl/number/range/StandardPluralRanges;I)V

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {v0, v1, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 89
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v2

    .line 90
    .local v2, "pluralFormsArray":Landroid/icu/impl/UResource$Array;
    invoke-interface {v2}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4b

    .line 94
    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 95
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    .line 96
    .local v3, "first":Landroid/icu/impl/StandardPlural;
    const/4 v4, 0x1

    invoke-interface {v2, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 97
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v4

    .line 98
    .local v4, "second":Landroid/icu/impl/StandardPlural;
    const/4 v5, 0x2

    invoke-interface {v2, v5, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 99
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v5

    .line 100
    .local v5, "result":Landroid/icu/impl/StandardPlural;
    iget-object v6, p0, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;->output:Landroid/icu/impl/number/range/StandardPluralRanges;

    invoke-static {v6, v3, v4, v5}, Landroid/icu/impl/number/range/StandardPluralRanges;->-$$Nest$maddPluralRange(Landroid/icu/impl/number/range/StandardPluralRanges;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    .line 88
    .end local v2    # "pluralFormsArray":Landroid/icu/impl/UResource$Array;
    .end local v3    # "first":Landroid/icu/impl/StandardPlural;
    .end local v4    # "second":Landroid/icu/impl/StandardPlural;
    .end local v5    # "result":Landroid/icu/impl/StandardPlural;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 91
    .restart local v2    # "pluralFormsArray":Landroid/icu/impl/UResource$Array;
    :cond_4b
    new-instance v3, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v4, "Expected 3 elements in pluralRanges.txt array"

    invoke-direct {v3, v4}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .end local v1    # "i":I
    .end local v2    # "pluralFormsArray":Landroid/icu/impl/UResource$Array;
    :cond_53
    return-void
.end method
