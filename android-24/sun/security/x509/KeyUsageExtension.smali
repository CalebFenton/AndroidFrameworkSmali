.class public Lsun/security/x509/KeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "KeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CRL_SIGN:Ljava/lang/String; = "crl_sign"

.field public static final DATA_ENCIPHERMENT:Ljava/lang/String; = "data_encipherment"

.field public static final DECIPHER_ONLY:Ljava/lang/String; = "decipher_only"

.field public static final DIGITAL_SIGNATURE:Ljava/lang/String; = "digital_signature"

.field public static final ENCIPHER_ONLY:Ljava/lang/String; = "encipher_only"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field public static final KEY_AGREEMENT:Ljava/lang/String; = "key_agreement"

.field public static final KEY_CERTSIGN:Ljava/lang/String; = "key_certsign"

.field public static final KEY_ENCIPHERMENT:Ljava/lang/String; = "key_encipherment"

.field public static final NAME:Ljava/lang/String; = "KeyUsage"

.field public static final NON_REPUDIATION:Ljava/lang/String; = "non_repudiation"


# instance fields
.field private bitString:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 179
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 180
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    #@a
    .line 181
    const/4 v0, 0x0

    #@b
    new-array v0, v0, [Z

    #@d
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@f
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 154
    sget-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v2

    #@b
    iput-boolean v2, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    #@d
    move-object v0, p2

    #@e
    .line 165
    check-cast v0, [B

    #@10
    .line 166
    .local v0, "extValue":[B
    const/4 v2, 0x0

    #@11
    aget-byte v2, v0, v2

    #@13
    const/4 v3, 0x4

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 167
    new-instance v2, Lsun/security/util/DerValue;

    #@18
    invoke-direct {v2, v0}, Lsun/security/util/DerValue;-><init>([B)V

    #@1b
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    #@21
    .line 171
    :goto_0
    new-instance v1, Lsun/security/util/DerValue;

    #@23
    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    #@25
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@28
    .line 172
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@32
    .line 153
    return-void

    #@33
    .line 169
    .end local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    #@35
    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "bitString"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 136
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@9
    .line 137
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 138
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    #@10
    .line 139
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    #@13
    .line 135
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 110
    new-instance v0, Lsun/security/util/BitArray;

    #@5
    array-length v1, p1

    #@6
    mul-int/lit8 v1, v1, 0x8

    #@8
    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@b
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@e
    move-result-object v0

    #@f
    .line 109
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@11
    .line 111
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@13
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@15
    .line 112
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    #@18
    .line 113
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    #@1b
    .line 108
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 123
    iput-object p1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@5
    .line 124
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 125
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    #@c
    .line 126
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    #@f
    .line 122
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 76
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    #@7
    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@9
    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    #@c
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    #@f
    .line 77
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    #@15
    .line 74
    return-void
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 94
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@3
    array-length v1, v1

    #@4
    if-lt p1, v1, :cond_0

    #@6
    .line 95
    add-int/lit8 v1, p1, 0x1

    #@8
    new-array v0, v1, [Z

    #@a
    .line 96
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@c
    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@e
    array-length v2, v2

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@12
    .line 97
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@14
    .line 99
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@16
    aput-boolean p2, v1, p1

    #@18
    .line 92
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    const-string/jumbo v0, "digital_signature"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 250
    invoke-direct {p0, v1, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@d
    .line 271
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    #@10
    .line 248
    return-void

    #@11
    .line 251
    :cond_0
    const-string/jumbo v0, "non_repudiation"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 252
    const/4 v0, 0x1

    #@1b
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@1e
    goto :goto_0

    #@1f
    .line 253
    :cond_1
    const-string/jumbo v0, "key_encipherment"

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 254
    const/4 v0, 0x2

    #@29
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@2c
    goto :goto_0

    #@2d
    .line 255
    :cond_2
    const-string/jumbo v0, "data_encipherment"

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 256
    const/4 v0, 0x3

    #@37
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@3a
    goto :goto_0

    #@3b
    .line 257
    :cond_3
    const-string/jumbo v0, "key_agreement"

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 258
    const/4 v0, 0x4

    #@45
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@48
    goto :goto_0

    #@49
    .line 259
    :cond_4
    const-string/jumbo v0, "key_certsign"

    #@4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_5

    #@52
    .line 260
    const/4 v0, 0x5

    #@53
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@56
    goto :goto_0

    #@57
    .line 261
    :cond_5
    const-string/jumbo v0, "crl_sign"

    #@5a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_6

    #@60
    .line 262
    const/4 v0, 0x6

    #@61
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@64
    goto :goto_0

    #@65
    .line 263
    :cond_6
    const-string/jumbo v0, "encipher_only"

    #@68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_7

    #@6e
    .line 264
    const/4 v0, 0x7

    #@6f
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@72
    goto :goto_0

    #@73
    .line 265
    :cond_7
    const-string/jumbo v0, "decipher_only"

    #@76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_8

    #@7c
    .line 266
    const/16 v0, 0x8

    #@7e
    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@81
    goto :goto_0

    #@82
    .line 268
    :cond_8
    new-instance v0, Ljava/io/IOException;

    #@84
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    #@87
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 324
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 325
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 326
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    #@10
    .line 327
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    #@13
    .line 329
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 330
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 321
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    const-string/jumbo v0, "digital_signature"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 222
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@d
    move-result v0

    #@e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 223
    :cond_0
    const-string/jumbo v0, "non_repudiation"

    #@16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 224
    const/4 v0, 0x1

    #@1d
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@20
    move-result v0

    #@21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 225
    :cond_1
    const-string/jumbo v0, "key_encipherment"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 226
    const/4 v0, 0x2

    #@30
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@33
    move-result v0

    #@34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@37
    move-result-object v0

    #@38
    return-object v0

    #@39
    .line 227
    :cond_2
    const-string/jumbo v0, "data_encipherment"

    #@3c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_3

    #@42
    .line 228
    const/4 v0, 0x3

    #@43
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@46
    move-result v0

    #@47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4a
    move-result-object v0

    #@4b
    return-object v0

    #@4c
    .line 229
    :cond_3
    const-string/jumbo v0, "key_agreement"

    #@4f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 230
    const/4 v0, 0x4

    #@56
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@59
    move-result v0

    #@5a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5d
    move-result-object v0

    #@5e
    return-object v0

    #@5f
    .line 231
    :cond_4
    const-string/jumbo v0, "key_certsign"

    #@62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_5

    #@68
    .line 232
    const/4 v0, 0x5

    #@69
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@6c
    move-result v0

    #@6d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@70
    move-result-object v0

    #@71
    return-object v0

    #@72
    .line 233
    :cond_5
    const-string/jumbo v0, "crl_sign"

    #@75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_6

    #@7b
    .line 234
    const/4 v0, 0x6

    #@7c
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@7f
    move-result v0

    #@80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@83
    move-result-object v0

    #@84
    return-object v0

    #@85
    .line 235
    :cond_6
    const-string/jumbo v0, "encipher_only"

    #@88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8b
    move-result v0

    #@8c
    if-eqz v0, :cond_7

    #@8e
    .line 236
    const/4 v0, 0x7

    #@8f
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@92
    move-result v0

    #@93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@96
    move-result-object v0

    #@97
    return-object v0

    #@98
    .line 237
    :cond_7
    const-string/jumbo v0, "decipher_only"

    #@9b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9e
    move-result v0

    #@9f
    if-eqz v0, :cond_8

    #@a1
    .line 238
    const/16 v0, 0x8

    #@a3
    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@a6
    move-result v0

    #@a7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@aa
    move-result-object v0

    #@ab
    return-object v0

    #@ac
    .line 240
    :cond_8
    new-instance v0, Ljava/io/IOException;

    #@ae
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    #@b1
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v0
.end method

.method public getBits()[Z
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Z

    #@8
    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 339
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "digital_signature"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 340
    const-string/jumbo v1, "non_repudiation"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 341
    const-string/jumbo v1, "key_encipherment"

    #@14
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@17
    .line 342
    const-string/jumbo v1, "data_encipherment"

    #@1a
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 343
    const-string/jumbo v1, "key_agreement"

    #@20
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@23
    .line 344
    const-string/jumbo v1, "key_certsign"

    #@26
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@29
    .line 345
    const-string/jumbo v1, "crl_sign"

    #@2c
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@2f
    .line 346
    const-string/jumbo v1, "encipher_only"

    #@32
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@35
    .line 347
    const-string/jumbo v1, "decipher_only"

    #@38
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@3b
    .line 349
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    const-string/jumbo v0, "KeyUsage"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    instance-of v1, p2, Ljava/lang/Boolean;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 189
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Attribute must be of type Boolean."

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 191
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    #@f
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v0

    #@13
    .line 192
    .local v0, "val":Z
    const-string/jumbo v1, "digital_signature"

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 193
    const/4 v1, 0x0

    #@1d
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@20
    .line 214
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    #@23
    .line 187
    return-void

    #@24
    .line 194
    :cond_1
    const-string/jumbo v1, "non_repudiation"

    #@27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 195
    const/4 v1, 0x1

    #@2e
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@31
    goto :goto_0

    #@32
    .line 196
    :cond_2
    const-string/jumbo v1, "key_encipherment"

    #@35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 197
    const/4 v1, 0x2

    #@3c
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@3f
    goto :goto_0

    #@40
    .line 198
    :cond_3
    const-string/jumbo v1, "data_encipherment"

    #@43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_4

    #@49
    .line 199
    const/4 v1, 0x3

    #@4a
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@4d
    goto :goto_0

    #@4e
    .line 200
    :cond_4
    const-string/jumbo v1, "key_agreement"

    #@51
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_5

    #@57
    .line 201
    const/4 v1, 0x4

    #@58
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@5b
    goto :goto_0

    #@5c
    .line 202
    :cond_5
    const-string/jumbo v1, "key_certsign"

    #@5f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_6

    #@65
    .line 203
    const/4 v1, 0x5

    #@66
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@69
    goto :goto_0

    #@6a
    .line 204
    :cond_6
    const-string/jumbo v1, "crl_sign"

    #@6d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_7

    #@73
    .line 205
    const/4 v1, 0x6

    #@74
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@77
    goto :goto_0

    #@78
    .line 206
    :cond_7
    const-string/jumbo v1, "encipher_only"

    #@7b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_8

    #@81
    .line 207
    const/4 v1, 0x7

    #@82
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@85
    goto :goto_0

    #@86
    .line 208
    :cond_8
    const-string/jumbo v1, "decipher_only"

    #@89
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_9

    #@8f
    .line 209
    const/16 v1, 0x8

    #@91
    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    #@94
    goto :goto_0

    #@95
    .line 211
    :cond_9
    new-instance v1, Ljava/io/IOException;

    #@97
    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:KeyUsage."

    #@9a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "KeyUsage [\n"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 281
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    #@19
    :try_start_0
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, "  DigitalSignature\n"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 284
    :cond_0
    const/4 v2, 0x1

    #@34
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, "  Non_repudiation\n"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 287
    :cond_1
    const/4 v2, 0x2

    #@4f
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_2

    #@55
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    const-string/jumbo v3, "  Key_Encipherment\n"

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    .line 290
    :cond_2
    const/4 v2, 0x3

    #@6a
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_3

    #@70
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    const-string/jumbo v3, "  Data_Encipherment\n"

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 293
    :cond_3
    const/4 v2, 0x4

    #@85
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_4

    #@8b
    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    const-string/jumbo v3, "  Key_Agreement\n"

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    .line 296
    :cond_4
    const/4 v2, 0x5

    #@a0
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_5

    #@a6
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    const-string/jumbo v3, "  Key_CertSign\n"

    #@b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    .line 299
    :cond_5
    const/4 v2, 0x6

    #@bb
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@be
    move-result v2

    #@bf
    if-eqz v2, :cond_6

    #@c1
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    const-string/jumbo v3, "  Crl_Sign\n"

    #@cd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v2

    #@d1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    .line 302
    :cond_6
    const/4 v2, 0x7

    #@d6
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@d9
    move-result v2

    #@da
    if-eqz v2, :cond_7

    #@dc
    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v2

    #@e5
    const-string/jumbo v3, "  Encipher_Only\n"

    #@e8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v2

    #@ec
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v1

    #@f0
    .line 305
    :cond_7
    const/16 v2, 0x8

    #@f2
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    #@f5
    move-result v2

    #@f6
    if-eqz v2, :cond_8

    #@f8
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v2

    #@101
    const-string/jumbo v3, "  Decipher_Only\n"

    #@104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v2

    #@108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@10b
    move-result-object v1

    #@10c
    .line 310
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v2

    #@115
    const-string/jumbo v3, "]\n"

    #@118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v2

    #@11c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v1

    #@120
    .line 312
    return-object v1

    #@121
    .line 308
    :catch_0
    move-exception v0

    #@122
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method
