.class public Landroid/icu/impl/number/ConstantMultiFieldModifier;
.super Ljava/lang/Object;
.source "ConstantMultiFieldModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# instance fields
.field private final blacklist overwrite:Z

.field private final blacklist parameters:Landroid/icu/impl/number/Modifier$Parameters;

.field protected final blacklist prefixChars:[C

.field protected final blacklist prefixFields:[Ljava/lang/Object;

.field private final greylist-max-o strong:Z

.field protected final blacklist suffixChars:[C

.field protected final blacklist suffixFields:[Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZ)V
    .registers 11
    .param p1, "prefix"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "suffix"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "overwrite"    # Z
    .param p4, "strong"    # Z

    .line 36
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "prefix":Landroid/icu/impl/FormattedStringBuilder;
    .end local p2    # "suffix":Landroid/icu/impl/FormattedStringBuilder;
    .end local p3    # "overwrite":Z
    .end local p4    # "strong":Z
    .local v1, "prefix":Landroid/icu/impl/FormattedStringBuilder;
    .local v2, "suffix":Landroid/icu/impl/FormattedStringBuilder;
    .local v3, "overwrite":Z
    .local v4, "strong":Z
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/number/ConstantMultiFieldModifier;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZLandroid/icu/impl/number/Modifier$Parameters;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/FormattedStringBuilder;ZZLandroid/icu/impl/number/Modifier$Parameters;)V
    .registers 7
    .param p1, "prefix"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "suffix"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p3, "overwrite"    # Z
    .param p4, "strong"    # Z
    .param p5, "parameters"    # Landroid/icu/impl/number/Modifier$Parameters;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/icu/impl/FormattedStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    .line 46
    invoke-virtual {p2}, Landroid/icu/impl/FormattedStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    .line 47
    invoke-virtual {p1}, Landroid/icu/impl/FormattedStringBuilder;->toFieldArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    .line 48
    invoke-virtual {p2}, Landroid/icu/impl/FormattedStringBuilder;->toFieldArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    .line 49
    iput-boolean p3, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    .line 50
    iput-boolean p4, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    .line 51
    iput-object p5, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->parameters:Landroid/icu/impl/number/Modifier$Parameters;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 13
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 56
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Landroid/icu/impl/FormattedStringBuilder;->insert(I[C[Ljava/lang/Object;)I

    move-result v0

    .line 57
    .local v0, "length":I
    iget-boolean v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    if-eqz v1, :cond_1c

    .line 58
    add-int v3, p2, v0

    add-int v4, p3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    move-object v2, p1

    .end local p1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .local v2, "output":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual/range {v2 .. v8}, Landroid/icu/impl/FormattedStringBuilder;->splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1d

    .line 57
    .end local v2    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .restart local p1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    :cond_1c
    move-object v2, p1

    .line 60
    .end local p1    # "output":Landroid/icu/impl/FormattedStringBuilder;
    .restart local v2    # "output":Landroid/icu/impl/FormattedStringBuilder;
    :goto_1d
    add-int p1, p3, v0

    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v3, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v1, v3}, Landroid/icu/impl/FormattedStringBuilder;->insert(I[C[Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    .line 61
    return v0
.end method

.method public blacklist containsField(Ljava/text/Format$Field;)Z
    .registers 5
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_11

    .line 83
    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 84
    return v2

    .line 82
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 88
    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1e

    .line 89
    return v2

    .line 87
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 92
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCodePointCount()I
    .registers 5

    .line 71
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v3, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    array-length v3, v3

    .line 72
    invoke-static {v1, v2, v3}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    return v0
.end method

.method public blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->parameters:Landroid/icu/impl/number/Modifier$Parameters;

    return-object v0
.end method

.method public blacklist getPrefixLength()I
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    array-length v0, v0

    return v0
.end method

.method public blacklist isStrong()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    return v0
.end method

.method public blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 102
    instance-of v0, p1, Landroid/icu/impl/number/ConstantMultiFieldModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 103
    return v1

    .line 105
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;

    .line 106
    .local v0, "_other":Landroid/icu/impl/number/ConstantMultiFieldModifier;
    iget-object v2, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v3, v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    iget-object v3, v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v3, v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    .line 107
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    iget-object v3, v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-boolean v2, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    iget-boolean v3, v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    iget-boolean v3, v0, Landroid/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    if-ne v2, v3, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    nop

    .line 106
    :goto_40
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 113
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 114
    .local v0, "temp":Landroid/icu/impl/FormattedStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/impl/number/ConstantMultiFieldModifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    .line 115
    invoke-virtual {p0}, Landroid/icu/impl/number/ConstantMultiFieldModifier;->getPrefixLength()I

    move-result v2

    .line 116
    .local v2, "prefixLength":I
    nop

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 116
    const-string v3, "<ConstantMultiFieldModifier prefix:\'%s\' suffix:\'%s\'>"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
