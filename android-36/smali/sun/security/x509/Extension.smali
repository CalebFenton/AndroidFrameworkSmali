.class public Lsun/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/security/cert/Extension;


# static fields
.field private static final greylist-max-o hashMagic:I = 0x1f


# instance fields
.field protected blacklist critical:Z

.field protected blacklist extensionId:Lsun/security/util/ObjectIdentifier;

.field protected blacklist extensionValue:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 65
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 7
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 65
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 77
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 80
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 83
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 84
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 85
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 88
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    goto :goto_37

    .line 91
    :cond_2f
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 92
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 94
    :goto_37
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;Z[B)V
    .registers 6
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "extensionValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 65
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 106
    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 107
    iput-boolean p2, p0, Lsun/security/x509/Extension;->critical:Z

    .line 110
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 111
    .local v0, "inDerVal":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 112
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/x509/Extension;)V
    .registers 4
    .param p1, "ext"    # Lsun/security/x509/Extension;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 65
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 121
    iget-object v0, p1, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 122
    iget-boolean v0, p1, Lsun/security/x509/Extension;->critical:Z

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    .line 123
    iget-object v0, p1, Lsun/security/x509/Extension;->extensionValue:[B

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 124
    return-void
.end method

.method public static blacklist newExtension(Lsun/security/util/ObjectIdentifier;Z[B)Lsun/security/x509/Extension;
    .registers 4
    .param p0, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "critical"    # Z
    .param p2, "rawExtensionValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lsun/security/x509/Extension;

    invoke-direct {v0}, Lsun/security/x509/Extension;-><init>()V

    .line 138
    .local v0, "ext":Lsun/security/x509/Extension;
    iput-object p0, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 139
    iput-boolean p1, v0, Lsun/security/x509/Extension;->critical:Z

    .line 140
    iput-object p2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 141
    return-object v0
.end method


# virtual methods
.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    if-eqz p1, :cond_2c

    .line 149
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 150
    .local v0, "dos1":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 152
    .local v1, "dos2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 153
    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v2, :cond_1a

    .line 154
    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 156
    :cond_1a
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 158
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 159
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 160
    return-void

    .line 146
    .end local v0    # "dos1":Lsun/security/util/DerOutputStream;
    .end local v1    # "dos2":Lsun/security/util/DerOutputStream;
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_2e

    .line 172
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-eqz v0, :cond_26

    .line 175
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 177
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 178
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_1b

    .line 179
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 180
    :cond_1b
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 182
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 183
    return-void

    .line 173
    .end local v0    # "dos":Lsun/security/util/DerOutputStream;
    :cond_26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No value to encode for the extension!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null OID to encode for the extension!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 265
    if-ne p0, p1, :cond_4

    .line 266
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_4
    instance-of v0, p1, Lsun/security/x509/Extension;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 268
    return v1

    .line 269
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/Extension;

    .line 270
    .local v0, "otherExt":Lsun/security/x509/Extension;
    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    iget-boolean v3, v0, Lsun/security/x509/Extension;->critical:Z

    if-eq v2, v3, :cond_14

    .line 271
    return v1

    .line 272
    :cond_14
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iget-object v3, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 273
    return v1

    .line 274
    :cond_1f
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    iget-object v2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public greylist getExtensionId()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 196
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getExtensionValue()[B
    .registers 2

    .line 211
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-object v0
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()[B
    .registers 2

    .line 200
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "h":I
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-eqz v1, :cond_12

    .line 242
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 243
    .local v1, "val":[B
    array-length v2, v1

    .line 244
    .local v2, "len":I
    :goto_8
    if-lez v2, :cond_12

    .line 245
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "len":I
    .local v3, "len":I
    aget-byte v4, v1, v3

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_8

    .line 247
    .end local v1    # "val":[B
    .end local v3    # "len":I
    :cond_12
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 248
    .end local v0    # "h":I
    .local v1, "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v2, :cond_24

    const/16 v2, 0x4cf

    goto :goto_26

    :cond_24
    const/16 v2, 0x4d5

    :goto_26
    add-int/2addr v0, v2

    .line 249
    .end local v1    # "h":I
    .restart local v0    # "h":I
    return v0
.end method

.method public whitelist test-api isCritical()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "s":Ljava/lang/String;
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_31

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Criticality=true\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 226
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Criticality=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_44
    return-object v0
.end method
