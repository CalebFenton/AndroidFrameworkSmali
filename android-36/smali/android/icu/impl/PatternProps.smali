.class public final Landroid/icu/impl/PatternProps;
.super Ljava/lang/Object;
.source "PatternProps.java"


# static fields
.field private static final blacklist index2000:[B

.field private static final blacklist latin1:[B

.field private static final blacklist syntax2000:[I

.field private static final blacklist syntaxOrWhiteSpace2000:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 203
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Landroid/icu/impl/PatternProps;->latin1:[B

    .line 238
    const/16 v0, 0x82

    new-array v0, v0, [B

    fill-array-data v0, :array_a8

    sput-object v0, Landroid/icu/impl/PatternProps;->index2000:[B

    .line 262
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_ee

    sput-object v1, Landroid/icu/impl/PatternProps;->syntax2000:[I

    .line 279
    new-array v0, v0, [I

    fill-array-data v0, :array_106

    sput-object v0, Landroid/icu/impl/PatternProps;->syntaxOrWhiteSpace2000:[I

    return-void

    nop

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x3t
        0x3t
        0x0t
        0x3t
        0x0t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a8
    .array-data 1
        0x2t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x6t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x9t
    .end array-data

    nop

    :array_ee
    .array-data 4
        0x0
        -0x1
        -0x10000
        0x7fff00ff
        0x7feffffe
        -0x10000
        0x3fffff
        -0x100000
        -0xf2
        0x10001
    .end array-data

    :array_106
    .array-data 4
        0x0
        -0x1
        -0x4000
        0x7fff03ff
        0x7feffffe
        -0x10000
        0x3fffff
        -0x100000
        -0xf2
        0x10001
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isIdentifier(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 153
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 154
    .local v0, "limit":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 155
    return v1

    .line 157
    :cond_8
    const/4 v2, 0x0

    .line 159
    .local v2, "start":I
    :goto_9
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "start":I
    .local v3, "start":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isSyntaxOrWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 160
    return v1

    .line 162
    :cond_16
    if-lt v3, v0, :cond_1a

    .line 163
    const/4 v1, 0x1

    return v1

    .line 162
    :cond_1a
    move v2, v3

    goto :goto_9
.end method

.method public static blacklist isIdentifier(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 173
    const/4 v0, 0x0

    if-lt p1, p2, :cond_4

    .line 174
    return v0

    .line 177
    :cond_4
    :goto_4
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isSyntaxOrWhiteSpace(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 178
    return v0

    .line 180
    :cond_11
    if-lt v1, p2, :cond_15

    .line 181
    const/4 p1, 0x1

    return p1

    .line 180
    :cond_15
    move p1, v1

    goto :goto_4
.end method

.method public static blacklist isSyntax(I)Z
    .registers 6
    .param p0, "c"    # I

    .line 40
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 41
    return v0

    .line 42
    :cond_4
    const/16 v1, 0xff

    const/4 v2, 0x1

    if-gt p0, v1, :cond_12

    .line 43
    sget-object v1, Landroid/icu/impl/PatternProps;->latin1:[B

    aget-byte v1, v1, p0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_11

    move v0, v2

    :cond_11
    return v0

    .line 44
    :cond_12
    const/16 v1, 0x2010

    if-ge p0, v1, :cond_17

    .line 45
    return v0

    .line 46
    :cond_17
    const/16 v1, 0x3030

    if-gt p0, v1, :cond_30

    .line 47
    sget-object v1, Landroid/icu/impl/PatternProps;->syntax2000:[I

    sget-object v3, Landroid/icu/impl/PatternProps;->index2000:[B

    add-int/lit16 v4, p0, -0x2000

    shr-int/lit8 v4, v4, 0x5

    aget-byte v3, v3, v4

    aget v1, v1, v3

    .line 48
    .local v1, "bits":I
    and-int/lit8 v3, p0, 0x1f

    shr-int v3, v1, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_2f

    move v0, v2

    :cond_2f
    return v0

    .line 49
    .end local v1    # "bits":I
    :cond_30
    const v1, 0xfd3e

    if-gt v1, p0, :cond_46

    const v1, 0xfe46

    if-gt p0, v1, :cond_46

    .line 50
    const v1, 0xfd3f

    if-le p0, v1, :cond_44

    const v1, 0xfe45

    if-gt v1, p0, :cond_45

    :cond_44
    move v0, v2

    :cond_45
    return v0

    .line 52
    :cond_46
    return v0
.end method

.method public static blacklist isSyntaxOrWhiteSpace(I)Z
    .registers 6
    .param p0, "c"    # I

    .line 60
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 61
    return v0

    .line 62
    :cond_4
    const/16 v1, 0xff

    const/4 v2, 0x1

    if-gt p0, v1, :cond_11

    .line 63
    sget-object v1, Landroid/icu/impl/PatternProps;->latin1:[B

    aget-byte v1, v1, p0

    if-eqz v1, :cond_10

    move v0, v2

    :cond_10
    return v0

    .line 64
    :cond_11
    const/16 v1, 0x200e

    if-ge p0, v1, :cond_16

    .line 65
    return v0

    .line 66
    :cond_16
    const/16 v1, 0x3030

    if-gt p0, v1, :cond_2f

    .line 67
    sget-object v1, Landroid/icu/impl/PatternProps;->syntaxOrWhiteSpace2000:[I

    sget-object v3, Landroid/icu/impl/PatternProps;->index2000:[B

    add-int/lit16 v4, p0, -0x2000

    shr-int/lit8 v4, v4, 0x5

    aget-byte v3, v3, v4

    aget v1, v1, v3

    .line 68
    .local v1, "bits":I
    and-int/lit8 v3, p0, 0x1f

    shr-int v3, v1, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_2e

    move v0, v2

    :cond_2e
    return v0

    .line 69
    .end local v1    # "bits":I
    :cond_2f
    const v1, 0xfd3e

    if-gt v1, p0, :cond_45

    const v1, 0xfe46

    if-gt p0, v1, :cond_45

    .line 70
    const v1, 0xfd3f

    if-le p0, v1, :cond_43

    const v1, 0xfe45

    if-gt v1, p0, :cond_44

    :cond_43
    move v0, v2

    :cond_44
    return v0

    .line 72
    :cond_45
    return v0
.end method

.method public static blacklist isWhiteSpace(I)Z
    .registers 5
    .param p0, "c"    # I

    .line 80
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 81
    return v0

    .line 82
    :cond_4
    const/16 v1, 0xff

    const/4 v2, 0x1

    if-gt p0, v1, :cond_12

    .line 83
    sget-object v1, Landroid/icu/impl/PatternProps;->latin1:[B

    aget-byte v1, v1, p0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_11

    move v0, v2

    :cond_11
    return v0

    .line 84
    :cond_12
    const/16 v1, 0x200e

    if-gt v1, p0, :cond_24

    const/16 v1, 0x2029

    if-gt p0, v1, :cond_24

    .line 85
    const/16 v1, 0x200f

    if-le p0, v1, :cond_22

    const/16 v1, 0x2028

    if-gt v1, p0, :cond_23

    :cond_22
    move v0, v2

    :cond_23
    return v0

    .line 87
    :cond_24
    return v0
.end method

.method public static blacklist skipIdentifier(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I

    .line 190
    nop

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isSyntaxOrWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 191
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 193
    :cond_14
    return p1
.end method

.method public static blacklist skipWhiteSpace(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I

    .line 96
    nop

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 97
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 99
    :cond_14
    return p1
.end method

.method public static blacklist trimSpaceChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4c

    .line 132
    :cond_22
    const/4 v0, 0x0

    .line 133
    .local v0, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 134
    .local v1, "limit":I
    :goto_27
    if-ge v0, v1, :cond_36

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 137
    :cond_36
    if-ge v0, v1, :cond_47

    .line 140
    :goto_38
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 141
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 144
    :cond_47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 130
    .end local v0    # "start":I
    .end local v1    # "limit":I
    :cond_4c
    :goto_4c
    return-object p0
.end method

.method public static blacklist trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4c

    .line 109
    :cond_22
    const/4 v0, 0x0

    .line 110
    .local v0, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, "limit":I
    :goto_27
    if-ge v0, v1, :cond_36

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 114
    :cond_36
    if-ge v0, v1, :cond_47

    .line 117
    :goto_38
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 118
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 121
    :cond_47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 107
    .end local v0    # "start":I
    .end local v1    # "limit":I
    :cond_4c
    :goto_4c
    return-object p0
.end method
