.class public Lsun/security/x509/AuthorityKeyIdentifierExtension;
.super Lsun/security/x509/Extension;
.source "AuthorityKeyIdentifierExtension.java"

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
.field public static final AUTH_NAME:Ljava/lang/String; = "auth_name"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"

.field public static final NAME:Ljava/lang/String; = "AuthorityKeyIdentifier"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final TAG_ID:B = 0x0t

.field private static final TAG_NAMES:B = 0x1t

.field private static final TAG_SERIAL_NUM:B = 0x2t


# instance fields
.field private id:Lsun/security/x509/KeyIdentifier;

.field private names:Lsun/security/x509/GeneralNames;

.field private serialNum:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x30

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 146
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@8
    .line 78
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@a
    .line 79
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@c
    .line 80
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@e
    .line 148
    sget-object v2, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@10
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@12
    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v2

    #@16
    iput-boolean v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    #@18
    .line 151
    check-cast p2, [B

    #@1a
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    #@1c
    .line 152
    new-instance v1, Lsun/security/util/DerValue;

    #@1e
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    #@20
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@23
    .line 153
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@25
    if-eq v2, v5, :cond_1

    #@27
    .line 154
    new-instance v2, Ljava/io/IOException;

    #@29
    const-string/jumbo v3, "Invalid encoding for AuthorityKeyIdentifierExtension."

    #@2c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 171
    .local v0, "opt":Lsun/security/util/DerValue;
    :cond_0
    const/4 v2, 0x4

    #@31
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    #@34
    .line 172
    new-instance v2, Lsun/security/x509/KeyIdentifier;

    #@36
    invoke-direct {v2, v0}, Lsun/security/x509/KeyIdentifier;-><init>(Lsun/security/util/DerValue;)V

    #@39
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@3b
    .line 161
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_1
    :goto_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3d
    if-eqz v2, :cond_9

    #@3f
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@41
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_9

    #@47
    .line 162
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@49
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@4c
    move-result-object v0

    #@4d
    .line 167
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_2

    #@53
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_3

    #@59
    .line 174
    :cond_2
    const/4 v2, 0x1

    #@5a
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_5

    #@60
    .line 175
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@63
    move-result v2

    #@64
    .line 174
    if-eqz v2, :cond_5

    #@66
    .line 176
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@68
    if-eqz v2, :cond_4

    #@6a
    .line 177
    new-instance v2, Ljava/io/IOException;

    #@6c
    const-string/jumbo v3, "Duplicate GeneralNames in AuthorityKeyIdentifier."

    #@6f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@72
    throw v2

    #@73
    .line 168
    :cond_3
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@75
    if-eqz v2, :cond_0

    #@77
    .line 169
    new-instance v2, Ljava/io/IOException;

    #@79
    const-string/jumbo v3, "Duplicate KeyIdentifier in AuthorityKeyIdentifier."

    #@7c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v2

    #@80
    .line 179
    :cond_4
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    #@83
    .line 180
    new-instance v2, Lsun/security/x509/GeneralNames;

    #@85
    invoke-direct {v2, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@88
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@8a
    goto :goto_0

    #@8b
    .line 182
    :cond_5
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_6

    #@91
    .line 183
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@94
    move-result v2

    #@95
    if-eqz v2, :cond_7

    #@97
    .line 190
    :cond_6
    new-instance v2, Ljava/io/IOException;

    #@99
    const-string/jumbo v3, "Invalid encoding of AuthorityKeyIdentifierExtension."

    #@9c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v2

    #@a0
    .line 184
    :cond_7
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@a2
    if-eqz v2, :cond_8

    #@a4
    .line 185
    new-instance v2, Ljava/io/IOException;

    #@a6
    const-string/jumbo v3, "Duplicate SerialNumber in AuthorityKeyIdentifier."

    #@a9
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v2

    #@ad
    .line 187
    :cond_8
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    #@b0
    .line 188
    new-instance v2, Lsun/security/x509/SerialNumber;

    #@b2
    invoke-direct {v2, v0}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    #@b5
    iput-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@b7
    goto :goto_0

    #@b8
    .line 147
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_9
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/KeyIdentifier;Lsun/security/x509/GeneralNames;Lsun/security/x509/SerialNumber;)V
    .locals 1
    .param p1, "kid"    # Lsun/security/x509/KeyIdentifier;
    .param p2, "name"    # Lsun/security/x509/GeneralNames;
    .param p3, "sn"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 126
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 78
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@6
    .line 79
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@8
    .line 80
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@a
    .line 129
    iput-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@c
    .line 130
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@e
    .line 131
    iput-object p3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@10
    .line 133
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@12
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@14
    .line 134
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    #@17
    .line 135
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    #@1a
    .line 128
    return-void
.end method

.method private encodeThis()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v7, -0x80

    #@3
    const/4 v5, 0x0

    #@4
    .line 84
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@6
    if-nez v4, :cond_0

    #@8
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@a
    if-nez v4, :cond_0

    #@c
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@e
    if-nez v4, :cond_0

    #@10
    .line 85
    iput-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    #@12
    .line 86
    return-void

    #@13
    .line 88
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@15
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@18
    .line 89
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@1a
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1d
    .line 90
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 91
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@23
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@26
    .line 92
    .local v3, "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@28
    invoke-virtual {v4, v3}, Lsun/security/x509/KeyIdentifier;->encode(Lsun/security/util/DerOutputStream;)V

    #@2b
    .line 93
    invoke-static {v7, v8, v8}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@2e
    move-result v4

    #@2f
    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@32
    .line 97
    .end local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 98
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@38
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3b
    .line 99
    .restart local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@3d
    invoke-virtual {v4, v3}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    #@40
    .line 100
    const/16 v4, -0x80

    #@42
    .line 101
    const/4 v5, 0x1

    #@43
    const/4 v6, 0x1

    #@44
    .line 100
    invoke-static {v4, v5, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@47
    move-result v4

    #@48
    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 106
    .end local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@4d
    if-eqz v4, :cond_3

    #@4f
    .line 107
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@51
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@54
    .line 108
    .restart local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@56
    invoke-virtual {v4, v3}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    #@59
    .line 110
    const/4 v4, 0x2

    #@5a
    .line 109
    invoke-static {v7, v8, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@5d
    move-result v4

    #@5e
    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@61
    .line 112
    .end local v3    # "tmp1":Lsun/security/util/DerOutputStream;
    :cond_3
    const/16 v4, 0x30

    #@63
    invoke-virtual {v1, v4, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@66
    .line 113
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@69
    move-result-object v4

    #@6a
    iput-object v4, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    #@6c
    .line 83
    return-void

    #@6d
    .line 103
    :catch_0
    move-exception v0

    #@6e
    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    #@70
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@77
    throw v4
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
    .line 278
    const-string/jumbo v0, "key_id"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 279
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@c
    .line 288
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    #@f
    .line 277
    return-void

    #@10
    .line 280
    :cond_0
    const-string/jumbo v0, "auth_name"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 281
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@1b
    goto :goto_0

    #@1c
    .line 282
    :cond_1
    const-string/jumbo v0, "serial_number"

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 283
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@27
    goto :goto_0

    #@28
    .line 285
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@2a
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    #@2d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
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
    .line 219
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 220
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 221
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 222
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->critical:Z

    #@10
    .line 223
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    #@13
    .line 225
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 226
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 218
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
    .line 262
    const-string/jumbo v0, "key_id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 263
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@b
    return-object v0

    #@c
    .line 264
    :cond_0
    const-string/jumbo v0, "auth_name"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 265
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@17
    return-object v0

    #@18
    .line 266
    :cond_1
    const-string/jumbo v0, "serial_number"

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 267
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@23
    return-object v0

    #@24
    .line 269
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@26
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    #@29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
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
    .line 296
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 297
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "key_id"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 298
    const-string/jumbo v1, "auth_name"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 299
    const-string/jumbo v1, "serial_number"

    #@14
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@17
    .line 301
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 308
    const-string/jumbo v0, "AuthorityKeyIdentifier"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "key_id"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 234
    instance-of v0, p2, Lsun/security/x509/KeyIdentifier;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 235
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type KeyIdentifier."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 238
    :cond_0
    check-cast p2, Lsun/security/x509/KeyIdentifier;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@1a
    .line 255
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->encodeThis()V

    #@1d
    .line 232
    return-void

    #@1e
    .line 239
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "auth_name"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 240
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 241
    new-instance v0, Ljava/io/IOException;

    #@2d
    const-string/jumbo v1, "Attribute value should be of type GeneralNames."

    #@30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 244
    :cond_2
    check-cast p2, Lsun/security/x509/GeneralNames;

    #@36
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@38
    goto :goto_0

    #@39
    .line 245
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v0, "serial_number"

    #@3c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 246
    instance-of v0, p2, Lsun/security/x509/SerialNumber;

    #@44
    if-nez v0, :cond_4

    #@46
    .line 247
    new-instance v0, Ljava/io/IOException;

    #@48
    const-string/jumbo v1, "Attribute value should be of type SerialNumber."

    #@4b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 250
    :cond_4
    check-cast p2, Lsun/security/x509/SerialNumber;

    #@51
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@53
    goto :goto_0

    #@54
    .line 252
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    #@56
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    #@59
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "AuthorityKeyIdentifier [\n"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 200
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->id:Lsun/security/x509/KeyIdentifier;

    #@27
    invoke-virtual {v2}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 203
    :cond_0
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->names:Lsun/security/x509/GeneralNames;

    #@42
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v2, "\n"

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    .line 206
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@57
    if-eqz v1, :cond_2

    #@59
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->serialNum:Lsun/security/x509/SerialNumber;

    #@64
    invoke-virtual {v2}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    const-string/jumbo v2, "\n"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    .line 209
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, "]\n"

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    return-object v1
.end method
