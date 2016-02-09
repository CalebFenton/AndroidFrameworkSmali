.class public final Lorg/apache/harmony/security/x501/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field public bytes:[B

.field public encoded:[B

.field public final escapedString:Ljava/lang/String;

.field private hasConsecutiveSpaces:Z

.field public hasQE:Z

.field private hexString:Ljava/lang/String;

.field public final rawString:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;

.field private final tag:I

.field public wasEncoded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .locals 2
    .param p1, "parsedString"    # Ljava/lang/String;
    .param p2, "hasQorE"    # Z
    .param p3, "oid"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    #@6
    .line 61
    iput-boolean p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    #@8
    .line 62
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@a
    .line 63
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@c
    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@12
    .line 66
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@14
    if-eq p3, v1, :cond_0

    #@16
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@18
    if-ne p3, v1, :cond_1

    #@1a
    .line 69
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@1c
    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@1e
    .line 75
    .local v0, "tag":I
    :goto_0
    iput v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@20
    .line 58
    return-void

    #@21
    .line 70
    .end local v0    # "tag":I
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@23
    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeValue;->isPrintableString(Ljava/lang/String;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 71
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@2b
    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@2d
    .restart local v0    # "tag":I
    goto :goto_0

    #@2e
    .line 73
    .end local v0    # "tag":I
    :cond_2
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@30
    iget v0, v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@32
    .restart local v0    # "tag":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const/4 v3, 0x1

    #@4
    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    #@6
    .line 81
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    #@8
    .line 82
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@a
    .line 85
    :try_start_0
    new-instance v2, Lorg/apache/harmony/security/asn1/DerInputStream;

    #@c
    invoke-direct {v2, p2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    #@f
    .line 87
    .local v2, "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v3, v2, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    #@11
    iput v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@13
    .line 89
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@15
    iget v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@17
    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 91
    sget-object v3, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@1f
    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@27
    .line 92
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@29
    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@2f
    .line 78
    :goto_0
    return-void

    #@30
    .line 94
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@32
    .line 95
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    goto :goto_0

    #@35
    .line 97
    .end local v2    # "in":Lorg/apache/harmony/security/asn1/DerInputStream;
    :catch_0
    move-exception v0

    #@36
    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@38
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3b
    .line 99
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3e
    .line 100
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "rawString"    # Ljava/lang/String;
    .param p2, "encoded"    # [B
    .param p3, "tag"    # I

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    #@6
    .line 107
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@8
    .line 108
    iput p3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@a
    .line 110
    if-nez p1, :cond_0

    #@c
    .line 111
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@12
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    #@14
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@16
    .line 104
    :goto_0
    return-void

    #@17
    .line 114
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@19
    .line 115
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/AttributeValue;->makeEscaped(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@1f
    goto :goto_0
.end method

.method private static isPrintableString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_5

    #@7
    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 125
    .local v0, "ch":C
    const/16 v2, 0x20

    #@d
    if-eq v0, v2, :cond_4

    #@f
    .line 126
    const/16 v2, 0x27

    #@11
    if-lt v0, v2, :cond_0

    #@13
    const/16 v2, 0x29

    #@15
    if-le v0, v2, :cond_4

    #@17
    .line 127
    :cond_0
    const/16 v2, 0x2b

    #@19
    if-lt v0, v2, :cond_1

    #@1b
    const/16 v2, 0x3a

    #@1d
    if-le v0, v2, :cond_4

    #@1f
    .line 128
    :cond_1
    const/16 v2, 0x3d

    #@21
    if-eq v0, v2, :cond_4

    #@23
    .line 129
    const/16 v2, 0x3f

    #@25
    if-eq v0, v2, :cond_4

    #@27
    .line 130
    const/16 v2, 0x41

    #@29
    if-lt v0, v2, :cond_2

    #@2b
    const/16 v2, 0x5a

    #@2d
    if-le v0, v2, :cond_4

    #@2f
    .line 131
    :cond_2
    const/16 v2, 0x61

    #@31
    if-lt v0, v2, :cond_3

    #@33
    const/16 v2, 0x7a

    #@35
    if-le v0, v2, :cond_4

    #@37
    .line 132
    :cond_3
    const/4 v2, 0x0

    #@38
    return v2

    #@39
    .line 123
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 135
    .end local v0    # "ch":C
    :cond_5
    const/4 v2, 0x1

    #@3d
    return v2
.end method

.method private makeEscaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x5c

    #@2
    const/16 v7, 0x20

    #@4
    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    .line 211
    .local v4, "length":I
    if-nez v4, :cond_0

    #@a
    .line 212
    return-object p1

    #@b
    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    mul-int/lit8 v6, v4, 0x2

    #@f
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    .line 217
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@13
    .line 219
    .local v2, "escapeSpaces":Z
    const/4 v3, 0x0

    #@14
    .local v3, "index":I
    :goto_0
    if-ge v3, v4, :cond_7

    #@16
    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    .line 221
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    #@1d
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 271
    :goto_1
    if-eqz v2, :cond_1

    #@22
    if-eq v1, v7, :cond_1

    #@24
    .line 272
    const/4 v2, 0x0

    #@25
    .line 219
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 233
    :sswitch_0
    add-int/lit8 v6, v4, -0x1

    #@2a
    if-ge v3, v6, :cond_6

    #@2c
    .line 234
    add-int/lit8 v6, v3, 0x1

    #@2e
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v6

    #@32
    if-ne v6, v7, :cond_4

    #@34
    const/4 v5, 0x1

    #@35
    .line 235
    .local v5, "nextIsSpace":Z
    :goto_2
    if-nez v2, :cond_2

    #@37
    if-nez v5, :cond_2

    #@39
    if-nez v3, :cond_5

    #@3b
    :cond_2
    const/4 v2, 0x1

    #@3c
    .line 236
    :goto_3
    iget-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    #@3e
    or-int/2addr v6, v5

    #@3f
    iput-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    #@41
    .line 241
    .end local v5    # "nextIsSpace":Z
    :goto_4
    if-eqz v2, :cond_3

    #@43
    .line 242
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 245
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    goto :goto_1

    #@4a
    .line 234
    :cond_4
    const/4 v5, 0x0

    #@4b
    .restart local v5    # "nextIsSpace":Z
    goto :goto_2

    #@4c
    .line 235
    :cond_5
    const/4 v2, 0x0

    #@4d
    goto :goto_3

    #@4e
    .line 238
    .end local v5    # "nextIsSpace":Z
    :cond_6
    const/4 v2, 0x1

    #@4f
    goto :goto_4

    #@50
    .line 250
    :sswitch_1
    const/4 v6, 0x1

    #@51
    iput-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    #@53
    .line 251
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    goto :goto_1

    #@5a
    .line 262
    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    goto :goto_1

    #@61
    .line 276
    .end local v1    # "ch":C
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    return-object v6

    #@66
    .line 221
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x3d -> :sswitch_2
        0x3e -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public appendQEString(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x5c

    #@2
    const/16 v3, 0x22

    #@4
    .line 184
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7
    .line 185
    iget-boolean v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasQE:Z

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 187
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    if-ge v1, v2, :cond_3

    #@14
    .line 188
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    .line 189
    .local v0, "c":C
    if-eq v0, v3, :cond_0

    #@1c
    if-ne v0, v4, :cond_1

    #@1e
    .line 190
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 192
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 187
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 195
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@29
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 197
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 183
    return-void
.end method

.method public getHexString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 143
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    #@4
    if-nez v3, :cond_6

    #@6
    .line 144
    iget-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    #@8
    if-nez v3, :cond_0

    #@a
    .line 146
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@c
    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@e
    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@10
    if-ne v3, v4, :cond_1

    #@12
    .line 147
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@14
    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@16
    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@1c
    .line 153
    :goto_0
    const/4 v3, 0x1

    #@1d
    iput-boolean v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->wasEncoded:Z

    #@1f
    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@23
    array-length v3, v3

    #@24
    mul-int/lit8 v3, v3, 0x2

    #@26
    add-int/lit8 v3, v3, 0x1

    #@28
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2b
    .line 157
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x23

    #@2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 159
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@33
    array-length v3, v3

    #@34
    if-ge v2, v3, :cond_5

    #@36
    .line 160
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@38
    aget-byte v3, v3, v2

    #@3a
    shr-int/lit8 v3, v3, 0x4

    #@3c
    and-int/lit8 v1, v3, 0xf

    #@3e
    .line 161
    .local v1, "c":I
    if-ge v1, v5, :cond_3

    #@40
    .line 162
    add-int/lit8 v3, v1, 0x30

    #@42
    int-to-char v3, v3

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 167
    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@48
    aget-byte v3, v3, v2

    #@4a
    and-int/lit8 v1, v3, 0xf

    #@4c
    .line 168
    if-ge v1, v5, :cond_4

    #@4e
    .line 169
    add-int/lit8 v3, v1, 0x30

    #@50
    int-to-char v3, v3

    #@51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 159
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@56
    goto :goto_1

    #@57
    .line 148
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "c":I
    .end local v2    # "i":I
    :cond_1
    iget v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@59
    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@5b
    iget v4, v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    #@5d
    if-ne v3, v4, :cond_2

    #@5f
    .line 149
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@61
    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@63
    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    #@66
    move-result-object v3

    #@67
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@69
    goto :goto_0

    #@6a
    .line 151
    :cond_2
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@6c
    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@6e
    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1StringType;->encode(Ljava/lang/Object;)[B

    #@71
    move-result-object v3

    #@72
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@74
    goto :goto_0

    #@75
    .line 164
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "c":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v3, v1, 0x57

    #@77
    int-to-char v3, v3

    #@78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_2

    #@7c
    .line 171
    :cond_4
    add-int/lit8 v3, v1, 0x57

    #@7e
    int-to-char v3, v3

    #@7f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    goto :goto_3

    #@83
    .line 174
    .end local v1    # "c":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    iput-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    #@89
    .line 176
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hexString:Ljava/lang/String;

    #@8b
    return-object v3
.end method

.method public getRFC2253String()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x5c

    #@2
    const/16 v8, 0x20

    #@4
    .line 334
    iget-boolean v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->hasConsecutiveSpaces:Z

    #@6
    if-nez v6, :cond_0

    #@8
    .line 335
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@a
    return-object v6

    #@b
    .line 338
    :cond_0
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    #@d
    if-nez v6, :cond_8

    #@f
    .line 340
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@14
    move-result v6

    #@15
    add-int/lit8 v3, v6, -0x2

    #@17
    .line 341
    .local v3, "lastIndex":I
    move v2, v3

    #@18
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    #@1a
    .line 342
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@1c
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v6

    #@20
    if-ne v6, v9, :cond_1

    #@22
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@24
    add-int/lit8 v7, v2, 0x1

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v6

    #@2a
    if-ne v6, v8, :cond_1

    #@2c
    .line 343
    add-int/lit8 v3, v2, -0x1

    #@2e
    .line 341
    :cond_1
    add-int/lit8 v2, v2, -0x2

    #@30
    goto :goto_0

    #@31
    .line 347
    :cond_2
    const/4 v0, 0x1

    #@32
    .line 348
    .local v0, "beginning":Z
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@36
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@39
    move-result v6

    #@3a
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3d
    .line 349
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@3e
    :goto_1
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@43
    move-result v6

    #@44
    if-ge v2, v6, :cond_7

    #@46
    .line 350
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@48
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v1

    #@4c
    .line 351
    .local v1, "ch":C
    if-eq v1, v9, :cond_3

    #@4e
    .line 352
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 353
    const/4 v0, 0x0

    #@52
    .line 349
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_1

    #@55
    .line 355
    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@57
    add-int/lit8 v7, v2, 0x1

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v4

    #@5d
    .line 356
    .local v4, "nextCh":C
    if-ne v4, v8, :cond_6

    #@5f
    .line 357
    if-nez v0, :cond_4

    #@61
    if-le v2, v3, :cond_5

    #@63
    .line 358
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@66
    .line 360
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    .line 367
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 362
    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    .line 363
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    .line 364
    const/4 v0, 0x0

    #@73
    goto :goto_3

    #@74
    .line 370
    .end local v1    # "ch":C
    .end local v4    # "nextCh":C
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    iput-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    #@7a
    .line 372
    .end local v0    # "beginning":Z
    .end local v2    # "i":I
    .end local v3    # "lastIndex":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v6, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rfc2253String:Ljava/lang/String;

    #@7c
    return-object v6
.end method

.method public getTag()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lorg/apache/harmony/security/x501/AttributeValue;->tag:I

    #@2
    return v0
.end method

.method public getValues(Lorg/apache/harmony/security/asn1/ASN1Type;)Ljava/util/Collection;
    .locals 2
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/security/asn1/ASN1Type;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@5
    iget-object v1, p0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    #@7
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->decode([B)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Collection;

    #@d
    return-object v0
.end method

.method public makeCanonical()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x5c

    #@2
    const/16 v8, 0x23

    #@4
    const/16 v7, 0x20

    #@6
    const/4 v6, 0x0

    #@7
    .line 280
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    .line 281
    .local v4, "length":I
    if-nez v4, :cond_0

    #@f
    .line 282
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@11
    return-object v5

    #@12
    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    mul-int/lit8 v5, v4, 0x2

    #@16
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@19
    .line 286
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@1a
    .line 287
    .local v3, "index":I
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v5

    #@20
    if-ne v5, v8, :cond_1

    #@22
    .line 288
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 289
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 290
    const/4 v3, 0x1

    #@29
    .line 294
    :cond_1
    :goto_0
    if-ge v3, v4, :cond_3

    #@2b
    .line 295
    iget-object v5, p0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@2d
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v2

    #@31
    .line 297
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_0

    #@34
    .line 316
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 294
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 299
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@3d
    move-result v1

    #@3e
    .line 300
    .local v1, "bufLength":I
    if-eqz v1, :cond_2

    #@40
    add-int/lit8 v5, v1, -0x1

    #@42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@45
    move-result v5

    #@46
    if-eq v5, v7, :cond_2

    #@48
    .line 303
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_2

    #@4c
    .line 313
    .end local v1    # "bufLength":I
    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    goto :goto_1

    #@50
    .line 321
    .end local v2    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@53
    move-result v5

    #@54
    add-int/lit8 v1, v5, -0x1

    #@56
    .restart local v1    # "bufLength":I
    :goto_3
    const/4 v5, -0x1

    #@57
    if-le v1, v5, :cond_4

    #@59
    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@5c
    move-result v5

    #@5d
    if-ne v5, v7, :cond_4

    #@5f
    add-int/lit8 v1, v1, -0x1

    #@61
    goto :goto_3

    #@62
    .line 324
    :cond_4
    add-int/lit8 v5, v1, 0x1

    #@64
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@67
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    return-object v5

    #@6c
    .line 297
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3e -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
