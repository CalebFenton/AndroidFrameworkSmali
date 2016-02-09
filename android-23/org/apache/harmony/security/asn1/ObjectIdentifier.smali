.class public final Lorg/apache/harmony/security/asn1/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private final oid:[I

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "strOid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@9
    .line 68
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    #@b
    .line 66
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "oid"    # [I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->validate([I)V

    #@6
    .line 57
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@8
    .line 55
    return-void
.end method

.method public static isOID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 172
    invoke-static {p0, v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static toIntArray(Ljava/lang/String;Z)[I
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "shouldThrow"    # Z

    #@0
    .prologue
    const/16 v11, 0x2e

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    .line 189
    if-nez p0, :cond_1

    #@7
    .line 190
    if-nez p1, :cond_0

    #@9
    .line 191
    return-object v9

    #@a
    .line 193
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v8, "str == null"

    #@f
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v7

    #@13
    .line 196
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v4

    #@17
    .line 197
    .local v4, "length":I
    if-nez v4, :cond_3

    #@19
    .line 198
    if-nez p1, :cond_2

    #@1b
    .line 199
    return-object v9

    #@1c
    .line 201
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v8, "Incorrect syntax"

    #@21
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v7

    #@25
    .line 204
    :cond_3
    const/4 v1, 0x1

    #@26
    .line 205
    .local v1, "count":I
    const/4 v6, 0x1

    #@27
    .line 207
    .local v6, "wasDot":Z
    const/4 v2, 0x0

    #@28
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_9

    #@2a
    .line 208
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v0

    #@2e
    .line 209
    .local v0, "c":C
    if-ne v0, v11, :cond_6

    #@30
    .line 210
    if-eqz v6, :cond_5

    #@32
    .line 211
    if-nez p1, :cond_4

    #@34
    .line 212
    return-object v9

    #@35
    .line 214
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v8, "Incorrect syntax"

    #@3a
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v7

    #@3e
    .line 216
    :cond_5
    const/4 v6, 0x1

    #@3f
    .line 217
    add-int/lit8 v1, v1, 0x1

    #@41
    .line 207
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 218
    :cond_6
    const/16 v7, 0x30

    #@46
    if-lt v0, v7, :cond_7

    #@48
    const/16 v7, 0x39

    #@4a
    if-gt v0, v7, :cond_7

    #@4c
    .line 219
    const/4 v6, 0x0

    #@4d
    .line 218
    goto :goto_1

    #@4e
    .line 221
    :cond_7
    if-nez p1, :cond_8

    #@50
    .line 222
    return-object v9

    #@51
    .line 224
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v8, "Incorrect syntax"

    #@56
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v7

    #@5a
    .line 228
    .end local v0    # "c":C
    :cond_9
    if-eqz v6, :cond_b

    #@5c
    .line 230
    if-nez p1, :cond_a

    #@5e
    .line 231
    return-object v9

    #@5f
    .line 233
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@61
    const-string/jumbo v8, "Incorrect syntax"

    #@64
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v7

    #@68
    .line 236
    :cond_b
    if-ge v1, v10, :cond_d

    #@6a
    .line 237
    if-nez p1, :cond_c

    #@6c
    .line 238
    return-object v9

    #@6d
    .line 240
    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v8, "Incorrect syntax"

    #@72
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v7

    #@76
    .line 243
    :cond_d
    new-array v5, v1, [I

    #@78
    .line 244
    .local v5, "oid":[I
    const/4 v2, 0x0

    #@79
    const/4 v3, 0x0

    #@7a
    .local v3, "j":I
    :goto_2
    if-ge v2, v4, :cond_f

    #@7c
    .line 245
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@7f
    move-result v0

    #@80
    .line 246
    .restart local v0    # "c":C
    if-ne v0, v11, :cond_e

    #@82
    .line 247
    add-int/lit8 v3, v3, 0x1

    #@84
    .line 244
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@86
    goto :goto_2

    #@87
    .line 249
    :cond_e
    aget v7, v5, v3

    #@89
    mul-int/lit8 v7, v7, 0xa

    #@8b
    add-int/2addr v7, v0

    #@8c
    add-int/lit8 v7, v7, -0x30

    #@8e
    aput v7, v5, v3

    #@90
    goto :goto_3

    #@91
    .line 253
    .end local v0    # "c":C
    :cond_f
    aget v7, v5, v8

    #@93
    if-le v7, v10, :cond_11

    #@95
    .line 254
    if-nez p1, :cond_10

    #@97
    .line 255
    return-object v9

    #@98
    .line 257
    :cond_10
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@9a
    const-string/jumbo v8, "Incorrect syntax"

    #@9d
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v7

    #@a1
    .line 258
    :cond_11
    aget v7, v5, v8

    #@a3
    if-eq v7, v10, :cond_13

    #@a5
    const/4 v7, 0x1

    #@a6
    aget v7, v5, v7

    #@a8
    const/16 v8, 0x27

    #@aa
    if-le v7, v8, :cond_13

    #@ac
    .line 259
    if-nez p1, :cond_12

    #@ae
    .line 260
    return-object v9

    #@af
    .line 262
    :cond_12
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@b1
    const-string/jumbo v8, "Incorrect syntax"

    #@b4
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v7

    #@b8
    .line 265
    :cond_13
    return-object v5
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "oid"    # [I

    #@0
    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    array-length v2, p0

    #@3
    mul-int/lit8 v2, v2, 0x3

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 139
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@a
    add-int/lit8 v2, v2, -0x1

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 140
    aget v2, p0, v0

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    .line 141
    const/16 v2, 0x2e

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 139
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 143
    :cond_0
    array-length v2, p0

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    aget v2, p0, v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method public static validate([I)V
    .locals 4
    .param p0, "oid"    # [I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 104
    if-nez p0, :cond_0

    #@4
    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "oid == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 108
    :cond_0
    array-length v2, p0

    #@e
    if-ge v2, v3, :cond_1

    #@10
    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v2, "OID MUST have at least 2 subidentifiers"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 112
    :cond_1
    aget v2, p0, v1

    #@1b
    if-le v2, v3, :cond_2

    #@1d
    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1f
    .line 114
    const-string/jumbo v2, "Valid values for first subidentifier are 0, 1 and 2"

    #@22
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 115
    :cond_2
    aget v2, p0, v1

    #@28
    if-eq v2, v3, :cond_3

    #@2a
    const/4 v2, 0x1

    #@2b
    aget v2, p0, v2

    #@2d
    const/16 v3, 0x27

    #@2f
    if-le v2, v3, :cond_3

    #@31
    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v2, "If the first subidentifier has 0 or 1 value the second subidentifier value MUST be less than 40"

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 120
    :cond_3
    array-length v2, p0

    #@3b
    :goto_0
    if-ge v1, v2, :cond_5

    #@3d
    aget v0, p0, v1

    #@3f
    .line 121
    .local v0, "anOid":I
    if-gez v0, :cond_4

    #@41
    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v2, "Subidentifier MUST have positive value"

    #@46
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 120
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 103
    .end local v0    # "anOid":I
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    if-ne p0, p1, :cond_0

    #@2
    .line 73
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 75
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    if-eq v0, v1, :cond_2

    #@10
    .line 76
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 78
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@14
    check-cast p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    #@16
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 90
    const/4 v1, 0x0

    #@1
    .line 91
    .local v1, "intHash":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    const/4 v2, 0x4

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 92
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@c
    aget v2, v2, v0

    #@e
    mul-int/lit8 v3, v0, 0x8

    #@10
    shl-int/2addr v2, v3

    #@11
    add-int/2addr v1, v2

    #@12
    .line 91
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 94
    :cond_0
    const v2, 0x7fffffff

    #@18
    and-int/2addr v2, v1

    #@19
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    #@6
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    #@c
    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    #@e
    return-object v0
.end method
