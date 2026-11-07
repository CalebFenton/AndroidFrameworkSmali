.class public Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;
.super Ljava/text/Format;
.source "LocalizedNumberFormatterAsFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final transient blacklist formatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private final transient blacklist locale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/number/LocalizedNumberFormatter;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "formatter"    # Landroid/icu/number/LocalizedNumberFormatter;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 38
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    .line 40
    iput-object p2, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->locale:Landroid/icu/util/ULocale;

    .line 41
    return-void
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 118
    new-instance v0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;

    invoke-direct {v0}, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;-><init>()V

    .line 119
    .local v0, "proxy":Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;
    iget-object v1, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1}, Landroid/icu/number/LocalizedNumberFormatter;->toSkeleton()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    .line 121
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 105
    if-ne p0, p1, :cond_4

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 109
    return v0

    .line 111
    :cond_8
    instance-of v1, p1, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;

    if-nez v1, :cond_d

    .line 112
    return v0

    .line 114
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;

    invoke-virtual {v1}, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->getNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 50
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_45

    .line 53
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 54
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 55
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v2, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 57
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 58
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 59
    invoke-static {v1, p3}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    move-result v2

    .line 60
    .local v2, "found":Z
    if-eqz v2, :cond_41

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_41

    .line 61
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 62
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 64
    :cond_41
    invoke-static {v1, p2}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 65
    return-object p2

    .line 51
    .end local v0    # "dq":Landroid/icu/impl/number/DecimalQuantity;
    .end local v1    # "string":Landroid/icu/impl/FormattedStringBuilder;
    .end local v2    # "found":Z
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_12

    .line 78
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/number/FormattedNumber;->toCharacterIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0

    .line 76
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist getNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0}, Landroid/icu/number/LocalizedNumberFormatter;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
