.class public Lsun/security/x509/AuthorityKeyIdentifierExtension;
.super Lsun/security/x509/Extension;
.source "AuthorityKeyIdentifierExtension.java"

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
.field public static final blacklist AUTH_NAME:Ljava/lang/String; = "auth_name"

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field public static final blacklist KEY_ID:Ljava/lang/String; = "key_id"

.field public static final blacklist NAME:Ljava/lang/String; = "AuthorityKeyIdentifier"

.field public static final blacklist SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final blacklist TAG_ID:B = 0x0t

.field private static final blacklist TAG_NAMES:B = 0x1t

.field private static final blacklist TAG_SERIAL_NUM:B = 0x2t


# instance fields
.field private blacklist id:Lsun/security/x509/KeyIdentifier;

.field private blacklist names:Lsun/security/x509/GeneralNames;

.field private blacklist serialNum:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 79
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    .line 80
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 148
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    .line 151
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    .line 152
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 153
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_ae

    .line 161
    :goto_26
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v1, :cond_ad

    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_ad

    .line 162
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 167
    .local v1, "opt":Lsun/security/util/DerValue;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 168
    iget-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-nez v3, :cond_55

    .line 171
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 172
    new-instance v3, Lsun/security/x509/KeyIdentifier;

    invoke-direct {v3, v1}, Lsun/security/x509/KeyIdentifier;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    goto :goto_9c

    .line 169
    :cond_55
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Duplicate KeyIdentifier in AuthorityKeyIdentifier."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_5d
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 175
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 176
    iget-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-nez v3, :cond_79

    .line 179
    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 180
    new-instance v3, Lsun/security/x509/GeneralNames;

    invoke-direct {v3, v1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_9c

    .line 177
    :cond_79
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Duplicate GeneralNames in AuthorityKeyIdentifier."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_81
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 183
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 184
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-nez v4, :cond_9d

    .line 187
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 188
    new-instance v3, Lsun/security/x509/SerialNumber;

    invoke-direct {v3, v1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 192
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :goto_9c
    goto :goto_26

    .line 185
    .restart local v1    # "opt":Lsun/security/util/DerValue;
    :cond_9d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Duplicate SerialNumber in AuthorityKeyIdentifier."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_a5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid encoding of AuthorityKeyIdentifierExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_ad
    return-void

    .line 154
    :cond_ae
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding for AuthorityKeyIdentifierExtension."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Lsun/security/x509/KeyIdentifier;Lsun/security/x509/GeneralNames;Lsun/security/x509/SerialNumber;)V
    .registers 5
    .param p1, "kid"    # Lsun/security/x509/KeyIdentifier;
    .param p2, "name"    # Lsun/security/x509/GeneralNames;
    .param p3, "sn"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 79
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    .line 80
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 129
    iput-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    .line 130
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    .line 131
    iput-object p3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 133
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    .line 135
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 136
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-nez v0, :cond_10

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_10

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-nez v0, :cond_10

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    .line 86
    return-void

    .line 88
    :cond_10
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 89
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 90
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    const/4 v3, 0x0

    const/16 v4, -0x80

    if-eqz v2, :cond_32

    .line 91
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 92
    .local v2, "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v5, v2}, Lsun/security/x509/KeyIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    .line 93
    invoke-static {v4, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v1, v5, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 97
    .end local v2    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_32
    :try_start_32
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_48

    .line 98
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 99
    .restart local v2    # "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v5, v2}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 100
    const/4 v5, 0x1

    invoke-static {v4, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v1, v5, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_48} :catch_6b

    .line 105
    .end local v2    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_48
    nop

    .line 106
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-eqz v2, :cond_5f

    .line 107
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 108
    .restart local v2    # "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    invoke-virtual {v5, v2}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 109
    const/4 v5, 0x2

    invoke-static {v4, v3, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 112
    .end local v2    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_5f
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 113
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    .line 114
    return-void

    .line 103
    :catch_6b
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
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

    .line 278
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 279
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    goto :goto_21

    .line 280
    :cond_c
    const-string v0, "auth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 281
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_21

    .line 282
    :cond_17
    const-string v0, "serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 283
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 288
    :goto_21
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 289
    return-void

    .line 285
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

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

    .line 219
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 220
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 221
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    .line 223
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 225
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 226
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 227
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    return-object v0

    .line 264
    :cond_b
    const-string v0, "auth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 265
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    return-object v0

    .line 266
    :cond_16
    const-string v0, "serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 267
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    return-object v0

    .line 269
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 296
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 297
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "key_id"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 298
    const-string v1, "auth_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 299
    const-string v1, "serial_number"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEncodedKeyIdentifier()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-eqz v0, :cond_13

    .line 316
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 317
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v1, v0}, Lsun/security/x509/KeyIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    .line 318
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 320
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 308
    const-string v0, "AuthorityKeyIdentifier"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const-string v0, "key_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 234
    instance-of v0, p2, Lsun/security/x509/KeyIdentifier;

    if-eqz v0, :cond_12

    .line 238
    move-object v0, p2

    check-cast v0, Lsun/security/x509/KeyIdentifier;

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    goto :goto_45

    .line 235
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type KeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1a
    const-string v0, "auth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 240
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    if-eqz v0, :cond_2c

    .line 244
    move-object v0, p2

    check-cast v0, Lsun/security/x509/GeneralNames;

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_45

    .line 241
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type GeneralNames."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_34
    const-string v0, "serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 246
    instance-of v0, p2, Lsun/security/x509/SerialNumber;

    if-eqz v0, :cond_49

    .line 250
    move-object v0, p2

    check-cast v0, Lsun/security/x509/SerialNumber;

    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    .line 255
    :goto_45
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    .line 256
    return-void

    .line 247
    :cond_49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type SerialNumber."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AuthorityKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    if-eqz v1, :cond_32

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_32
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    const-string v2, "\n"

    if-eqz v1, :cond_53

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_53
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    if-eqz v1, :cond_72

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    invoke-virtual {v3}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
