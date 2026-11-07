.class public Lsun/security/x509/KeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "KeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CRL_SIGN:Ljava/lang/String; = "crl_sign"

.field public static final blacklist DATA_ENCIPHERMENT:Ljava/lang/String; = "data_encipherment"

.field public static final blacklist DECIPHER_ONLY:Ljava/lang/String; = "decipher_only"

.field public static final blacklist DIGITAL_SIGNATURE:Ljava/lang/String; = "digital_signature"

.field public static final blacklist ENCIPHER_ONLY:Ljava/lang/String; = "encipher_only"

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field public static final blacklist KEY_AGREEMENT:Ljava/lang/String; = "key_agreement"

.field public static final blacklist KEY_CERTSIGN:Ljava/lang/String; = "key_certsign"

.field public static final blacklist KEY_ENCIPHERMENT:Ljava/lang/String; = "key_encipherment"

.field public static final blacklist NAME:Ljava/lang/String; = "KeyUsage"

.field public static final blacklist NON_REPUDIATION:Ljava/lang/String; = "non_repudiation"


# instance fields
.field private blacklist bitString:[Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 180
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 183
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 155
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 166
    move-object v0, p2

    check-cast v0, [B

    .line 167
    .local v0, "extValue":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_22

    .line 168
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, v0}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    goto :goto_24

    .line 170
    :cond_22
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 172
    :goto_24
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 173
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 174
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/BitArray;)V
    .registers 3
    .param p1, "bitString"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 137
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 138
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 140
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 141
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 110
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 111
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 112
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 114
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 115
    return-void
.end method

.method public constructor greylist <init>([Z)V
    .registers 3
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 124
    iput-object p1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 125
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 127
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 128
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 76
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 77
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 78
    return-void
.end method

.method private blacklist isSet(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 86
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist set(IZ)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .line 95
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_14

    .line 96
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Z

    .line 97
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 100
    .end local v0    # "tmp":[Z
    :cond_14
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aput-boolean p2, v0, p1

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const-string v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 251
    invoke-direct {p0, v1, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto/16 :goto_76

    .line 252
    :cond_e
    const-string v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 254
    :cond_1b
    const-string v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 255
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 256
    :cond_28
    const-string v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 257
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 258
    :cond_35
    const-string v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 259
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 260
    :cond_42
    const-string v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 261
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 262
    :cond_4f
    const-string v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 263
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 264
    :cond_5c
    const-string v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 265
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_76

    .line 266
    :cond_69
    const-string v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 267
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 272
    :goto_76
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 273
    return-void

    .line 269
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 324
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 325
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 327
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 329
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 330
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 331
    return-void
.end method

.method public greylist-max-r get(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const-string v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 224
    :cond_12
    const-string v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 226
    :cond_24
    const-string v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 227
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 228
    :cond_36
    const-string v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 229
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 230
    :cond_48
    const-string v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 231
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 232
    :cond_5a
    const-string v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 233
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 234
    :cond_6c
    const-string v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 235
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 236
    :cond_7e
    const-string v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 237
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 238
    :cond_90
    const-string v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 239
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 241
    :cond_a3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic greylist-max-r get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBits()[Z
    .registers 2

    .line 354
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 339
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "digital_signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 340
    const-string v1, "non_repudiation"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 341
    const-string v1, "key_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 342
    const-string v1, "data_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 343
    const-string v1, "key_agreement"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 344
    const-string v1, "key_certsign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 345
    const-string v1, "crl_sign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 346
    const-string v1, "encipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 347
    const-string v1, "decipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 361
    const-string v0, "KeyUsage"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8d

    .line 192
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    .local v0, "val":Z
    const-string v1, "digital_signature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto/16 :goto_81

    .line 195
    :cond_19
    const-string v1, "non_repudiation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 196
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 197
    :cond_26
    const-string v1, "key_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 198
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 199
    :cond_33
    const-string v1, "data_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 200
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 201
    :cond_40
    const-string v1, "key_agreement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 202
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 203
    :cond_4d
    const-string v1, "key_certsign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 204
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 205
    :cond_5a
    const-string v1, "crl_sign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 206
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 207
    :cond_67
    const-string v1, "encipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 208
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_81

    .line 209
    :cond_74
    const-string v1, "decipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 210
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 215
    :goto_81
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 216
    return-void

    .line 212
    :cond_85
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    .end local v0    # "val":Z
    :cond_8d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "KeyUsage [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 284
    const-string v1, "  DigitalSignature\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 287
    const-string v1, "  Non_repudiation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_29
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 290
    const-string v1, "  Key_Encipherment\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_35
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 293
    const-string v1, "  Data_Encipherment\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_41
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 296
    const-string v1, "  Key_Agreement\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_4d
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 299
    const-string v1, "  Key_CertSign\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_59
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 302
    const-string v1, "  Crl_Sign\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_65
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 305
    const-string v1, "  Encipher_Only\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_71
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 308
    const-string v1, "  Decipher_Only\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_7e
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
