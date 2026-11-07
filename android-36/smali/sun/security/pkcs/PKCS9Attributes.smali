.class public Lsun/security/pkcs/PKCS9Attributes;
.super Ljava/lang/Object;
.source "PKCS9Attributes.java"


# instance fields
.field private final greylist-max-o attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/pkcs/PKCS9Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o derEncoding:[B

.field private greylist-max-o ignoreUnsupportedAttributes:Z

.field private final greylist-max-o permittedAttributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 116
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerInputStream;Z)V
    .registers 5
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .param p2, "ignoreUnsupportedAttributes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 137
    iput-boolean p2, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 139
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 141
    return-void
.end method

.method public constructor greylist <init>([Lsun/security/pkcs/PKCS9Attribute;)V
    .registers 7
    .param p1, "attribs"    # [Lsun/security/pkcs/PKCS9Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_4f

    .line 160
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 161
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 167
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    aget-object v3, p1, v0

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 162
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PKCSAttribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    .line 163
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duplicated while constructing PKCS9Attributes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local v0    # "i":I
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_4f
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 171
    return-void
.end method

.method public constructor blacklist <init>([Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerInputStream;)V
    .registers 7
    .param p1, "permittedAttributes"    # [Lsun/security/util/ObjectIdentifier;
    .param p2, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 86
    if-eqz p1, :cond_29

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 91
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    aget-object v2, p1, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .end local v0    # "i":I
    :cond_28
    goto :goto_2c

    .line 94
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 98
    :goto_2c
    invoke-direct {p0, p2}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 99
    return-void
.end method

.method static greylist-max-o castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;
    .registers 4
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 361
    array-length v0, p0

    new-array v0, v0, [Lsun/security/util/DerEncoder;

    .line 363
    .local v0, "encoders":[Lsun/security/util/DerEncoder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 364
    aget-object v2, p0, v1

    check-cast v2, Lsun/security/util/DerEncoder;

    aput-object v2, v0, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 366
    .end local v1    # "i":I
    :cond_10
    return-object v0
.end method

.method private greylist-max-o decode(Lsun/security/util/DerInputStream;)[B
    .registers 13
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 190
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 191
    .local v1, "derEncoding":[B
    const/4 v2, 0x0

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    .line 193
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 194
    .local v2, "derIn":Lsun/security/util/DerInputStream;
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 198
    .local v3, "derVals":[Lsun/security/util/DerValue;
    const/4 v4, 0x1

    .line 200
    .local v4, "reuseEncoding":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    array-length v6, v3

    if-ge v5, v6, :cond_87

    .line 203
    :try_start_1d
    new-instance v6, Lsun/security/pkcs/PKCS9Attribute;

    aget-object v7, v3, v5

    invoke-direct {v6, v7}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V
    :try_end_24
    .catch Lsun/security/pkcs/ParsingException; {:try_start_1d .. :try_end_24} :catch_7c

    .line 212
    .local v6, "attrib":Lsun/security/pkcs/PKCS9Attribute;
    nop

    .line 213
    invoke-virtual {v6}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 215
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_63

    .line 218
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    if-eqz v8, :cond_5d

    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 219
    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    goto :goto_5d

    .line 220
    :cond_3e
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attribute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not permitted in this attribute set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :cond_5d
    :goto_5d
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v8, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 216
    :cond_63
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate PKCS9 attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 205
    .end local v6    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_7c
    move-exception v6

    .line 206
    .local v6, "e":Lsun/security/pkcs/ParsingException;
    iget-boolean v7, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    if-eqz v7, :cond_86

    .line 207
    const/4 v4, 0x0

    .line 208
    nop

    .line 200
    .end local v6    # "e":Lsun/security/pkcs/ParsingException;
    :goto_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 210
    .restart local v6    # "e":Lsun/security/pkcs/ParsingException;
    :cond_86
    throw v6

    .line 225
    .end local v5    # "i":I
    .end local v6    # "e":Lsun/security/pkcs/ParsingException;
    :cond_87
    if-eqz v4, :cond_8b

    move-object v5, v1

    goto :goto_8f

    :cond_8b
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v5

    :goto_8f
    return-object v5
.end method

.method private greylist-max-o generateDerEncoding()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 244
    .local v0, "out":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "attribVals":[Ljava/lang/Object;
    nop

    .line 247
    invoke-static {v1}, Lsun/security/pkcs/PKCS9Attributes;->castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;

    move-result-object v2

    .line 246
    const/16 v3, 0x31

    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 248
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist encode(BLjava/io/OutputStream;)V
    .registers 6
    .param p1, "tag"    # B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 239
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 240
    return-void
.end method

.method public greylist-max-r getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public blacklist getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;
    .registers 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 264
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public blacklist getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 315
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_b

    .line 319
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 316
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not recognized or not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .registers 6
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    .line 302
    .local v0, "value":Ljava/lang/Object;
    return-object v0

    .line 303
    .end local v0    # "value":Ljava/lang/Object;
    :catch_9
    move-exception v0

    .line 304
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value found for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAttributes()[Lsun/security/pkcs/PKCS9Attribute;
    .registers 5

    .line 279
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Lsun/security/pkcs/PKCS9Attribute;

    .line 281
    .local v0, "attribs":[Lsun/security/pkcs/PKCS9Attribute;
    const/4 v1, 0x0

    .line 282
    .local v1, "j":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    if-ge v2, v3, :cond_2c

    array-length v3, v0

    if-ge v1, v3, :cond_2c

    .line 284
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    if-nez v3, :cond_19

    .line 285
    goto :goto_29

    .line 287
    :cond_19
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    aput-object v3, v0, v1

    .line 289
    aget-object v3, v0, v1

    if-eqz v3, :cond_29

    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 283
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 292
    .end local v2    # "i":I
    :cond_2c
    return-object v0
.end method

.method public greylist getDerEncoding()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PKCS9 Attributes: [\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/4 v1, 0x1

    .line 333
    .local v1, "first":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_e
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 334
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    if-nez v3, :cond_1a

    .line 335
    goto :goto_31

    .line 337
    :cond_1a
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    .line 339
    .local v3, "value":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v3, :cond_25

    goto :goto_31

    .line 342
    :cond_25
    if-eqz v1, :cond_29

    .line 343
    const/4 v1, 0x0

    goto :goto_2e

    .line 345
    :cond_29
    const-string v4, ";\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :goto_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .end local v3    # "value":Lsun/security/pkcs/PKCS9Attribute;
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 350
    .end local v2    # "i":I
    :cond_34
    const-string v2, "\n\t] (end PKCS9 Attributes)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
