.class public Landroid/icu/impl/number/SimpleModifier;
.super Ljava/lang/Object;
.source "SimpleModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ARG_NUM_LIMIT:I = 0x100


# instance fields
.field private final blacklist compiledPattern:Ljava/lang/String;

.field private final blacklist field:Ljava/text/Format$Field;

.field private final blacklist parameters:Landroid/icu/impl/number/Modifier$Parameters;

.field private final blacklist strong:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/text/Format$Field;Z)V
    .registers 5
    .param p1, "compiledPattern"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/text/Format$Field;
    .param p3, "strong"    # Z

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLandroid/icu/impl/number/Modifier$Parameters;)V

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/text/Format$Field;ZLandroid/icu/impl/number/Modifier$Parameters;)V
    .registers 5
    .param p1, "compiledPattern"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/text/Format$Field;
    .param p3, "strong"    # Z
    .param p4, "parameters"    # Landroid/icu/impl/number/Modifier$Parameters;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    nop

    .line 37
    iput-object p1, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    .line 39
    iput-boolean p3, p0, Landroid/icu/impl/number/SimpleModifier;->strong:Z

    .line 40
    iput-object p4, p0, Landroid/icu/impl/number/SimpleModifier;->parameters:Landroid/icu/impl/number/Modifier$Parameters;

    .line 41
    return-void
.end method

.method public static blacklist formatTwoArgPattern(Ljava/lang/String;Landroid/icu/impl/FormattedStringBuilder;ILandroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;Ljava/text/Format$Field;)V
    .registers 16
    .param p0, "compiledPattern"    # Ljava/lang/String;
    .param p1, "result"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "index"    # I
    .param p3, "h"    # Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;
    .param p4, "field"    # Ljava/text/Format$Field;

    .line 97
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v6

    .line 98
    .local v6, "argLimit":I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_64

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "offset":I
    const/4 v7, 0x0

    .line 104
    .local v7, "length":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 105
    .local v1, "prefixLength":I
    add-int/lit8 v3, v0, 0x1

    .line 106
    .end local v0    # "offset":I
    .local v3, "offset":I
    const/16 v8, 0x100

    if-ge v1, v8, :cond_16

    .line 108
    const/4 v0, 0x0

    move v9, v0

    .end local v1    # "prefixLength":I
    .local v0, "prefixLength":I
    goto :goto_26

    .line 110
    .end local v0    # "prefixLength":I
    .restart local v1    # "prefixLength":I
    :cond_16
    add-int/lit16 v9, v1, -0x100

    .line 111
    .end local v1    # "prefixLength":I
    .local v9, "prefixLength":I
    add-int v1, p2, v7

    add-int v4, v3, v9

    move-object v2, p0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    .line 112
    add-int/2addr v3, v9

    .line 113
    add-int/2addr v7, v9

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 117
    :goto_26
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    .local v0, "infixLength":I
    add-int/lit8 v3, v3, 0x1

    .line 119
    if-ge v0, v8, :cond_31

    .line 121
    const/4 v0, 0x0

    move v10, v0

    goto :goto_41

    .line 123
    :cond_31
    add-int/lit16 v10, v0, -0x100

    .line 124
    .end local v0    # "infixLength":I
    .local v10, "infixLength":I
    add-int v1, p2, v7

    add-int v4, v3, v10

    move-object v2, p0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    .line 125
    add-int/2addr v3, v10

    .line 126
    add-int/2addr v7, v10

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 131
    :goto_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_49

    .line 133
    const/4 v0, 0x0

    .local v0, "suffixLength":I
    goto :goto_5d

    .line 135
    .end local v0    # "suffixLength":I
    :cond_49
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit16 v8, v0, -0x100

    .line 136
    .local v8, "suffixLength":I
    add-int/lit8 v3, v3, 0x1

    .line 137
    add-int v1, p2, v7

    add-int v4, v3, v8

    move-object v2, p0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    .line 138
    add-int/2addr v7, v8

    move v0, v8

    .line 141
    .end local v8    # "suffixLength":I
    .restart local v0    # "suffixLength":I
    :goto_5d
    iput v9, p3, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 142
    iput v10, p3, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 143
    iput v0, p3, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 144
    return-void

    .line 99
    .end local v0    # "suffixLength":I
    .end local v3    # "offset":I
    .end local v7    # "length":I
    .end local v9    # "prefixLength":I
    .end local v10    # "infixLength":I
    :cond_64
    new-instance v0, Landroid/icu/util/ICUException;

    invoke-direct {v0}, Landroid/icu/util/ICUException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 6
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 45
    iget-object v0, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    invoke-static {v0, v1, p2, p3, p1}, Landroid/icu/impl/SimpleFormatterImpl;->formatPrefixSuffix(Ljava/lang/String;Ljava/text/Format$Field;IILandroid/icu/impl/FormattedStringBuilder;)I

    move-result v0

    return v0
.end method

.method public blacklist containsField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 66
    nop

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCodePointCount()I
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->getLength(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/icu/impl/number/SimpleModifier;->parameters:Landroid/icu/impl/number/Modifier$Parameters;

    return-object v0
.end method

.method public blacklist getPrefixLength()I
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/SimpleFormatterImpl;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist isStrong()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Landroid/icu/impl/number/SimpleModifier;->strong:Z

    return v0
.end method

.method public blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 77
    instance-of v0, p1, Landroid/icu/impl/number/SimpleModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 78
    return v1

    .line 80
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/SimpleModifier;

    .line 81
    .local v0, "_other":Landroid/icu/impl/number/SimpleModifier;
    iget-object v2, p0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    iget-object v3, v0, Landroid/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    if-ne v2, v3, :cond_20

    iget-boolean v2, p0, Landroid/icu/impl/number/SimpleModifier;->strong:Z

    iget-boolean v3, v0, Landroid/icu/impl/number/SimpleModifier;->strong:Z

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method
