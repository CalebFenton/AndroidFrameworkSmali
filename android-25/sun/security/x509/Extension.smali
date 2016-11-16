.class public Lsun/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/security/cert/Extension;


# static fields
.field private static final hashMagic:I = 0x1f


# instance fields
.field protected critical:Z

.field protected extensionId:Lsun/security/util/ObjectIdentifier;

.field protected extensionValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@6
    .line 64
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    #@9
    .line 65
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@b
    .line 70
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 5
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 63
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 64
    iput-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    #@9
    .line 65
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@b
    .line 77
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@e
    move-result-object v0

    #@f
    .line 80
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@15
    .line 83
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@18
    move-result-object v1

    #@19
    .line 84
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@1b
    const/4 v3, 0x1

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    .line 85
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    #@21
    move-result v2

    #@22
    iput-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    #@24
    .line 88
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@27
    move-result-object v1

    #@28
    .line 89
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@2e
    .line 75
    :goto_0
    return-void

    #@2f
    .line 91
    :cond_0
    iput-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    #@31
    .line 92
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@37
    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Z[B)V
    .locals 3
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "extensionValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@6
    .line 64
    const/4 v1, 0x0

    #@7
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@9
    .line 65
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@b
    .line 106
    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 107
    iput-boolean p2, p0, Lsun/security/x509/Extension;->critical:Z

    #@f
    .line 110
    new-instance v0, Lsun/security/util/DerValue;

    #@11
    invoke-direct {v0, p3}, Lsun/security/util/DerValue;-><init>([B)V

    #@14
    .line 111
    .local v0, "inDerVal":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@1a
    .line 105
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/Extension;)V
    .locals 2
    .param p1, "ext"    # Lsun/security/x509/Extension;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@6
    .line 64
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    #@9
    .line 65
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@b
    .line 121
    iget-object v0, p1, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@f
    .line 122
    iget-boolean v0, p1, Lsun/security/x509/Extension;->critical:Z

    #@11
    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    #@13
    .line 123
    iget-object v0, p1, Lsun/security/x509/Extension;->extensionValue:[B

    #@15
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@17
    .line 120
    return-void
.end method

.method public static newExtension(Lsun/security/util/ObjectIdentifier;Z[B)Lsun/security/x509/Extension;
    .locals 1
    .param p0, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "critical"    # Z
    .param p2, "rawExtensionValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    new-instance v0, Lsun/security/x509/Extension;

    #@2
    invoke-direct {v0}, Lsun/security/x509/Extension;-><init>()V

    #@5
    .line 138
    .local v0, "ext":Lsun/security/x509/Extension;
    iput-object p0, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 139
    iput-boolean p1, v0, Lsun/security/x509/Extension;->critical:Z

    #@9
    .line 140
    iput-object p2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    #@b
    .line 141
    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    if-nez p1, :cond_0

    #@2
    .line 146
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 149
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@a
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@d
    .line 150
    .local v0, "dos1":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@f
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@12
    .line 152
    .local v1, "dos2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@14
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@17
    .line 153
    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 154
    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    #@1d
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@20
    .line 156
    :cond_1
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@22
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@25
    .line 158
    const/16 v2, 0x30

    #@27
    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@2a
    .line 159
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@31
    .line 144
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 171
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Null OID to encode for the extension!"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 172
    :cond_0
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@f
    if-nez v1, :cond_1

    #@11
    .line 173
    new-instance v1, Ljava/io/IOException;

    #@13
    const-string/jumbo v2, "No value to encode for the extension!"

    #@16
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 175
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@1c
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1f
    .line 177
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@21
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@24
    .line 178
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 179
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@2a
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@2d
    .line 180
    :cond_2
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@2f
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@32
    .line 182
    const/16 v1, 0x30

    #@34
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@37
    .line 168
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 265
    if-ne p0, p1, :cond_0

    #@3
    .line 266
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 267
    :cond_0
    instance-of v1, p1, Lsun/security/x509/Extension;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 268
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 269
    check-cast v0, Lsun/security/x509/Extension;

    #@d
    .line 270
    .local v0, "otherExt":Lsun/security/x509/Extension;
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@f
    iget-boolean v2, v0, Lsun/security/x509/Extension;->critical:Z

    #@11
    if-eq v1, v2, :cond_2

    #@13
    .line 271
    return v3

    #@14
    .line 272
    :cond_2
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@16
    iget-object v2, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@18
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 273
    return v3

    #@1f
    .line 274
    :cond_3
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@21
    iget-object v2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    #@23
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@26
    move-result v1

    #@27
    return v1
.end method

.method public getExtensionId()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getExtensionValue()[B
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue()[B
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 240
    const/4 v0, 0x0

    #@1
    .line 241
    .local v0, "h":I
    iget-object v4, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 242
    iget-object v3, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@7
    .line 243
    .local v3, "val":[B
    array-length v1, v3

    #@8
    .local v1, "len":I
    move v2, v1

    #@9
    .line 244
    .end local v1    # "len":I
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_0

    #@b
    .line 245
    add-int/lit8 v1, v2, -0x1

    #@d
    .end local v2    # "len":I
    .restart local v1    # "len":I
    aget-byte v4, v3, v1

    #@f
    mul-int/2addr v4, v2

    #@10
    add-int/2addr v0, v4

    #@11
    move v2, v1

    #@12
    .end local v1    # "len":I
    .restart local v2    # "len":I
    goto :goto_0

    #@13
    .line 247
    .end local v2    # "len":I
    .end local v3    # "val":[B
    :cond_0
    mul-int/lit8 v4, v0, 0x1f

    #@15
    iget-object v5, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@17
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    #@1a
    move-result v5

    #@1b
    add-int v0, v4, v5

    #@1d
    .line 248
    mul-int/lit8 v5, v0, 0x1f

    #@1f
    iget-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    #@21
    if-eqz v4, :cond_1

    #@23
    const/16 v4, 0x4cf

    #@25
    :goto_1
    add-int v0, v5, v4

    #@27
    .line 249
    return v0

    #@28
    .line 248
    :cond_1
    const/16 v4, 0x4d5

    #@2a
    goto :goto_1
.end method

.method public isCritical()Z
    .locals 1

    #@0
    .prologue
    .line 189
    iget-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "ObjectId: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@e
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 223
    .local v0, "s":Ljava/lang/String;
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " Criticality=true\n"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 228
    :goto_0
    return-object v0

    #@33
    .line 226
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    const-string/jumbo v2, " Criticality=false\n"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    goto :goto_0
.end method
