.class public Lsun/security/pkcs/PKCS9Attributes;
.super Ljava/lang/Object;
.source "PKCS9Attributes.java"


# instance fields
.field private final attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/pkcs/PKCS9Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final derEncoding:[B

.field private ignoreUnsupportedAttributes:Z

.field private final permittedAttributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@4
    .line 115
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .param p2, "ignoreUnsupportedAttributes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/util/Hashtable;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    #@9
    .line 46
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@b
    .line 64
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    #@e
    .line 138
    iput-boolean p2, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    #@10
    .line 140
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    #@16
    .line 141
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@19
    .line 136
    return-void
.end method

.method public constructor <init>([Lsun/security/pkcs/PKCS9Attribute;)V
    .locals 5
    .param p1, "attribs"    # [Lsun/security/pkcs/PKCS9Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v2, Ljava/util/Hashtable;

    #@5
    const/4 v3, 0x3

    #@6
    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    #@9
    .line 46
    iput-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@b
    .line 64
    const/4 v2, 0x0

    #@c
    iput-boolean v2, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    #@e
    .line 160
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@10
    if-ge v0, v2, :cond_1

    #@12
    .line 161
    aget-object v2, p1, v0

    #@14
    invoke-virtual {v2}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    #@17
    move-result-object v1

    #@18
    .line 162
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@1a
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "PKCSAttribute "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    aget-object v4, p1, v0

    #@30
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    .line 165
    const-string/jumbo v4, " duplicated while constructing "

    #@3b
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 166
    const-string/jumbo v4, "PKCS9Attributes."

    #@42
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 163
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 168
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@50
    aget-object v3, p1, v0

    #@52
    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 160
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 170
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_1
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    #@5e
    .line 171
    const/4 v2, 0x0

    #@5f
    iput-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@61
    .line 158
    return-void
.end method

.method public constructor <init>([Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "permittedAttributes"    # [Lsun/security/util/ObjectIdentifier;
    .param p2, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    new-instance v1, Ljava/util/Hashtable;

    #@6
    const/4 v2, 0x3

    #@7
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    #@a
    .line 46
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@c
    .line 64
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    #@f
    .line 86
    if-eqz p1, :cond_0

    #@11
    .line 88
    new-instance v1, Ljava/util/Hashtable;

    #@13
    .line 89
    array-length v2, p1

    #@14
    .line 88
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    #@17
    .line 87
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@19
    .line 91
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@1b
    if-ge v0, v1, :cond_1

    #@1d
    .line 92
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@1f
    aget-object v2, p1, v0

    #@21
    .line 93
    aget-object v3, p1, v0

    #@23
    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 91
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 95
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@2b
    .line 99
    :cond_1
    invoke-direct {p0, p2}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    #@31
    .line 85
    return-void
.end method

.method static castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;
    .locals 3
    .param p0, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 358
    array-length v2, p0

    #@1
    new-array v0, v2, [Lsun/security/util/DerEncoder;

    #@3
    .line 360
    .local v0, "encoders":[Lsun/security/util/DerEncoder;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 361
    aget-object v2, p0, v1

    #@9
    check-cast v2, Lsun/security/util/DerEncoder;

    #@b
    aput-object v2, v0, v1

    #@d
    .line 360
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 363
    :cond_0
    return-object v0
.end method

.method private decode(Lsun/security/util/DerInputStream;)[B
    .locals 12
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3
    move-result-object v8

    #@4
    .line 191
    .local v8, "val":Lsun/security/util/DerValue;
    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    #@7
    move-result-object v1

    #@8
    .line 192
    .local v1, "derEncoding":[B
    const/16 v9, 0x31

    #@a
    const/4 v10, 0x0

    #@b
    aput-byte v9, v1, v10

    #@d
    .line 194
    new-instance v2, Lsun/security/util/DerInputStream;

    #@f
    invoke-direct {v2, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@12
    .line 195
    .local v2, "derIn":Lsun/security/util/DerInputStream;
    const/4 v9, 0x3

    #@13
    const/4 v10, 0x1

    #@14
    invoke-virtual {v2, v9, v10}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    #@17
    move-result-object v3

    #@18
    .line 199
    .local v3, "derVals":[Lsun/security/util/DerValue;
    const/4 v7, 0x1

    #@19
    .line 201
    .local v7, "reuseEncoding":Z
    const/4 v5, 0x0

    #@1a
    .local v5, "i":I
    :goto_0
    array-length v9, v3

    #@1b
    if-ge v5, v9, :cond_4

    #@1d
    .line 204
    :try_start_0
    new-instance v0, Lsun/security/pkcs/PKCS9Attribute;

    #@1f
    aget-object v9, v3, v5

    #@21
    invoke-direct {v0, v9}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 214
    .local v0, "attrib":Lsun/security/pkcs/PKCS9Attribute;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    #@27
    move-result-object v6

    #@28
    .line 216
    .local v6, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@2a
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v9

    #@2e
    if-eqz v9, :cond_1

    #@30
    .line 217
    new-instance v9, Ljava/io/IOException;

    #@32
    new-instance v10, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v11, "Duplicate PKCS9 attribute: "

    #@3a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v10

    #@3e
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    throw v9

    #@4a
    .line 206
    .end local v0    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v4

    #@4b
    .line 207
    .local v4, "e":Lsun/security/pkcs/ParsingException;
    iget-boolean v9, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    #@4d
    if-eqz v9, :cond_0

    #@4f
    .line 208
    const/4 v7, 0x0

    #@50
    .line 201
    .end local v4    # "e":Lsun/security/pkcs/ParsingException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@52
    goto :goto_0

    #@53
    .line 211
    .restart local v4    # "e":Lsun/security/pkcs/ParsingException;
    :cond_0
    throw v4

    #@54
    .line 219
    .end local v4    # "e":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_1
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@56
    if-eqz v9, :cond_2

    #@58
    .line 220
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    #@5a
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@5d
    move-result v9

    #@5e
    if-eqz v9, :cond_3

    #@60
    .line 224
    :cond_2
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@62
    invoke-virtual {v9, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    goto :goto_1

    #@66
    .line 221
    :cond_3
    new-instance v9, Ljava/io/IOException;

    #@68
    new-instance v10, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v11, "Attribute "

    #@70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v10

    #@74
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    .line 222
    const-string/jumbo v11, " not permitted in this attribute set"

    #@7b
    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v10

    #@83
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@86
    throw v9

    #@87
    .line 226
    .end local v0    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_4
    if-eqz v7, :cond_5

    #@89
    .end local v1    # "derEncoding":[B
    :goto_2
    return-object v1

    #@8a
    .restart local v1    # "derEncoding":[B
    :cond_5
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    #@8d
    move-result-object v1

    #@8e
    goto :goto_2
.end method

.method private generateDerEncoding()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 245
    .local v1, "out":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 248
    .local v0, "attribVals":[Ljava/lang/Object;
    invoke-static {v0}, Lsun/security/pkcs/PKCS9Attributes;->castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;

    #@12
    move-result-object v2

    #@13
    .line 247
    const/16 v3, 0x31

    #@15
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@18
    .line 249
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method


# virtual methods
.method public encode(BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    #@3
    .line 240
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    #@5
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    #@e
    .line 238
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    #@c
    return-object v0
.end method

.method public getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    #@8
    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    #@3
    move-result-object v0

    #@4
    .line 314
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_0

    #@6
    .line 315
    new-instance v1, Ljava/io/IOException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Attribute name "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 316
    const-string/jumbo v3, " not recognized or not supported."

    #@1b
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 318
    :cond_0
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .locals 5
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    .line 301
    .local v1, "value":Ljava/lang/Object;
    return-object v1

    #@9
    .line 302
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@a
    .line 303
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/io/IOException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "No value found for attribute "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2
.end method

.method public getAttributes()[Lsun/security/pkcs/PKCS9Attribute;
    .locals 4

    #@0
    .prologue
    .line 280
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    #@5
    move-result v3

    #@6
    new-array v0, v3, [Lsun/security/pkcs/PKCS9Attribute;

    #@8
    .line 283
    .local v0, "attribs":[Lsun/security/pkcs/PKCS9Attribute;
    const/4 v2, 0x0

    #@9
    .line 284
    .local v2, "j":I
    const/4 v1, 0x1

    #@a
    .local v1, "i":I
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@c
    array-length v3, v3

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 285
    array-length v3, v0

    #@10
    if-ge v2, v3, :cond_1

    #@12
    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@14
    aget-object v3, v3, v1

    #@16
    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    #@19
    move-result-object v3

    #@1a
    aput-object v3, v0, v2

    #@1c
    .line 288
    aget-object v3, v0, v2

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 289
    add-int/lit8 v2, v2, 0x1

    #@22
    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 291
    :cond_1
    return-object v0
.end method

.method public getDerEncoding()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v4, 0xc8

    #@4
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    .line 327
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "PKCS9 Attributes: [\n\t"

    #@a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 332
    const/4 v1, 0x1

    #@e
    .line 333
    .local v1, "first":Z
    const/4 v2, 0x1

    #@f
    .local v2, "i":I
    :goto_0
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@11
    array-length v4, v4

    #@12
    if-ge v2, v4, :cond_2

    #@14
    .line 334
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@16
    aget-object v4, v4, v2

    #@18
    invoke-virtual {p0, v4}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    #@1b
    move-result-object v3

    #@1c
    .line 336
    .local v3, "value":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v3, :cond_0

    #@1e
    .line 333
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 339
    :cond_0
    if-eqz v1, :cond_1

    #@23
    .line 340
    const/4 v1, 0x0

    #@24
    .line 344
    :goto_2
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS9Attribute;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    goto :goto_1

    #@2c
    .line 342
    :cond_1
    const-string/jumbo v4, ";\n\t"

    #@2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    goto :goto_2

    #@33
    .line 347
    .end local v3    # "value":Lsun/security/pkcs/PKCS9Attribute;
    :cond_2
    const-string/jumbo v4, "\n\t] (end PKCS9 Attributes)"

    #@36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    return-object v4
.end method
