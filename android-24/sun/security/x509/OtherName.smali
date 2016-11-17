.class public Lsun/security/x509/OtherName;
.super Ljava/lang/Object;
.source "OtherName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final TAG_VALUE:B


# instance fields
.field private gni:Lsun/security/x509/GeneralNameInterface;

.field private myhash:I

.field private name:Ljava/lang/String;

.field private nameValue:[B

.field private oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@6
    .line 54
    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@8
    .line 58
    const/4 v2, -0x1

    #@9
    iput v2, p0, Lsun/security/x509/OtherName;->myhash:I

    #@b
    .line 89
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@e
    move-result-object v0

    #@f
    .line 91
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@15
    .line 92
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@18
    move-result-object v1

    #@19
    .line 93
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@1f
    .line 94
    iget-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@21
    iget-object v3, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@23
    invoke-direct {p0, v2, v3}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@29
    .line 95
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 96
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@2f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    #@35
    .line 88
    :goto_0
    return-void

    #@36
    .line 98
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Unrecognized ObjectIdentifier: "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    iget-object v3, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@44
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    #@52
    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;[B)V
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@6
    .line 54
    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@8
    .line 58
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    #@b
    .line 69
    if-eqz p1, :cond_0

    #@d
    if-nez p2, :cond_1

    #@f
    .line 70
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "parameters may not be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 72
    :cond_1
    iput-object p1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@1a
    .line 73
    iput-object p2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@1c
    .line 74
    invoke-direct {p0, p1, p2}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@22
    .line 75
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 76
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    #@2e
    .line 68
    :goto_0
    return-void

    #@2f
    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v1, "Unrecognized ObjectIdentifier: "

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    #@49
    goto :goto_0
.end method

.method private getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    .locals 9
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "nameValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 123
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    .line 124
    .local v2, "extClass":Ljava/lang/Class;
    if-nez v2, :cond_0

    #@7
    .line 125
    return-object v6

    #@8
    .line 127
    :cond_0
    const/4 v6, 0x1

    #@9
    new-array v4, v6, [Ljava/lang/Class;

    #@b
    const-class v6, Ljava/lang/Object;

    #@d
    const/4 v7, 0x0

    #@e
    aput-object v6, v4, v7

    #@10
    .line 128
    .local v4, "params":[Ljava/lang/Class;
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@13
    move-result-object v0

    #@14
    .line 130
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    #@15
    new-array v5, v6, [Ljava/lang/Object;

    #@17
    const/4 v6, 0x0

    #@18
    aput-object p2, v5, v6

    #@1a
    .line 132
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 133
    .local v3, "gni":Lsun/security/x509/GeneralNameInterface;
    return-object v3

    #@21
    .line 134
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v2    # "extClass":Ljava/lang/Class;
    .end local v3    # "gni":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "params":[Ljava/lang/Class;
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@22
    .line 135
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    #@24
    new-instance v7, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v8, "Instantiation error: "

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Ljava/io/IOException;

    #@41
    throw v6
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;

    #@0
    .prologue
    .line 246
    if-nez p1, :cond_0

    #@2
    .line 247
    const/4 v0, -0x1

    #@3
    .line 254
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@4
    .line 248
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 249
    const/4 v0, -0x1

    #@b
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@c
    .line 251
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@e
    const-string/jumbo v2, "Narrowing, widening, and matching are not supported for OtherName."

    #@11
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 155
    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    #@6
    invoke-interface {v1, p1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    #@9
    .line 156
    return-void

    #@a
    .line 159
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@c
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@f
    .line 160
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@11
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@14
    .line 161
    const/16 v1, -0x80

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    invoke-static {v1, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@1b
    move-result v1

    #@1c
    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@1e
    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@21
    .line 162
    const/16 v1, 0x30

    #@23
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@26
    .line 152
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 172
    if-ne p0, p1, :cond_0

    #@3
    .line 173
    const/4 v5, 0x1

    #@4
    return v5

    #@5
    .line 175
    :cond_0
    instance-of v5, p1, Lsun/security/x509/OtherName;

    #@7
    if-nez v5, :cond_1

    #@9
    .line 176
    return v7

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 178
    nop

    #@c
    nop

    #@d
    .line 179
    .local v3, "otherOther":Lsun/security/x509/OtherName;
    iget-object v5, v3, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@f
    iget-object v6, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@11
    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@14
    move-result v5

    #@15
    if-nez v5, :cond_2

    #@17
    .line 180
    return v7

    #@18
    .line 182
    :cond_2
    const/4 v2, 0x0

    #@19
    .line 184
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_0
    iget-object v5, v3, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@1b
    iget-object v6, v3, Lsun/security/x509/OtherName;->nameValue:[B

    #@1d
    invoke-direct {p0, v5, v6}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v2

    #@21
    .line 190
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    if-eqz v2, :cond_4

    #@23
    .line 192
    :try_start_1
    invoke-interface {v2, p0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    #@26
    move-result v5

    #@27
    if-nez v5, :cond_3

    #@29
    const/4 v4, 0x1

    #@2a
    .line 200
    :goto_0
    return v4

    #@2b
    .line 185
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :catch_0
    move-exception v0

    #@2c
    .line 186
    .local v0, "ioe":Ljava/io/IOException;
    return v7

    #@2d
    .line 192
    .end local v0    # "ioe":Ljava/io/IOException;
    .local v2, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :cond_3
    const/4 v4, 0x0

    #@2e
    .local v4, "result":Z
    goto :goto_0

    #@2f
    .line 193
    .end local v4    # "result":Z
    :catch_1
    move-exception v1

    #@30
    .line 194
    .local v1, "ioe":Ljava/lang/UnsupportedOperationException;
    const/4 v4, 0x0

    #@31
    .restart local v4    # "result":Z
    goto :goto_0

    #@32
    .line 197
    .end local v1    # "ioe":Ljava/lang/UnsupportedOperationException;
    .end local v4    # "result":Z
    :cond_4
    iget-object v5, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@34
    iget-object v6, v3, Lsun/security/x509/OtherName;->nameValue:[B

    #@36
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    #@39
    move-result v4

    #@3a
    .local v4, "result":Z
    goto :goto_0
.end method

.method public getNameValue()[B
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 143
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 209
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 210
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    #@7
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v1, v1, 0x25

    #@d
    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    #@f
    .line 211
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@12
    array-length v1, v1

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 212
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    #@17
    mul-int/lit8 v1, v1, 0x25

    #@19
    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    #@1b
    aget-byte v2, v2, v0

    #@1d
    add-int/2addr v1, v2

    #@1e
    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    #@20
    .line 211
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 215
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    #@25
    return v1
.end method

.method public subtreeDepth()I
    .locals 2

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 266
    const-string/jumbo v1, "subtreeDepth() not supported for generic OtherName"

    #@5
    .line 265
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Other-Name: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
