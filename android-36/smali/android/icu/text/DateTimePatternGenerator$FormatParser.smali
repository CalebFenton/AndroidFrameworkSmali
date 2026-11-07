.class public Landroid/icu/text/DateTimePatternGenerator$FormatParser;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatParser"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

.field private static final greylist-max-o SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;


# instance fields
.field private greylist-max-o items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o tokenizer:Landroid/icu/impl/PatternTokenizer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetitems(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1694
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[a-zA-Z]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    .line 1695
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[[:script=Latn:][:script=Cyrl:]]&[[:L:][:M:]]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    new-instance v0, Landroid/icu/impl/PatternTokenizer;

    invoke-direct {v0}, Landroid/icu/impl/PatternTokenizer;-><init>()V

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    .line 1697
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    .line 1698
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    .line 1699
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    .line 1710
    return-void
.end method

.method private greylist-max-o addVariable(Ljava/lang/StringBuffer;Z)V
    .registers 6
    .param p1, "variable"    # Ljava/lang/StringBuffer;
    .param p2, "strict"    # Z

    .line 1760
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1761
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1764
    :cond_18
    return-void
.end method


# virtual methods
.method public greylist-max-o getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1817
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o hasDateAndTimeFields()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1865
    const/4 v0, 0x0

    .line 1866
    .local v0, "foundMask":I
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1867
    .local v2, "item":Ljava/lang/Object;
    instance-of v4, v2, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v4, :cond_1f

    .line 1868
    move-object v4, v2

    check-cast v4, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {v4}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v4

    .line 1869
    .local v4, "type":I
    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 1871
    .end local v2    # "item":Ljava/lang/Object;
    .end local v4    # "type":I
    :cond_1f
    goto :goto_7

    .line 1872
    :cond_20
    and-int/lit16 v1, v0, 0x3ff

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    .line 1873
    .local v1, "isDate":Z
    :goto_28
    const v4, 0xfc00

    and-int/2addr v4, v0

    if-eqz v4, :cond_30

    move v4, v3

    goto :goto_31

    :cond_30
    move v4, v2

    .line 1874
    .local v4, "isTime":Z
    :goto_31
    if-eqz v1, :cond_36

    if-eqz v4, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    :goto_37
    return v3
.end method

.method public greylist-max-o quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1978
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v0, p1}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .registers 9
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1736
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1737
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    return-object p0

    .line 1738
    :cond_c
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v0, p1}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    .line 1739
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1740
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1742
    .local v1, "variable":Ljava/lang/StringBuffer;
    :goto_1b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1743
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v3, v0}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v3

    .line 1744
    .local v3, "status":I
    if-nez v3, :cond_2b

    .line 1755
    .end local v3    # "status":I
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    .line 1756
    return-object p0

    .line 1745
    .restart local v3    # "status":I
    :cond_2b
    const/4 v4, 0x1

    if-ne v3, v4, :cond_45

    .line 1746
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_41

    .line 1747
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    .line 1749
    :cond_41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 1751
    :cond_45
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    .line 1752
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1754
    .end local v3    # "status":I
    :goto_51
    goto :goto_1b
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1829
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(II)Ljava/lang/String;
    .registers 8
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1844
    .local v0, "result":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-ge v1, p2, :cond_2f

    .line 1845
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1846
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 1847
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1848
    .local v3, "itemString":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v4, v3}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    .end local v3    # "itemString":Ljava/lang/String;
    goto :goto_2c

    .line 1850
    :cond_1f
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    .end local v2    # "item":Ljava/lang/Object;
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1853
    .end local v1    # "i":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
