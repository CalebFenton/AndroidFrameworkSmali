.class public Lsun/security/x509/OtherName;
.super Ljava/lang/Object;
.source "OtherName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final blacklist TAG_VALUE:B


# instance fields
.field private blacklist gni:Lsun/security/x509/GeneralNameInterface;

.field private blacklist myhash:I

.field private blacklist name:Ljava/lang/String;

.field private blacklist nameValue:[B

.field private blacklist oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 54
    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 89
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 91
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 92
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 93
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 94
    iget-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v3, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v2, v3}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 95
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v2, :cond_36

    .line 96
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    goto :goto_51

    .line 98
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized ObjectIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    .line 100
    :goto_51
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;[B)V
    .registers 5
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 54
    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 69
    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    .line 72
    iput-object p1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 73
    iput-object p2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 74
    invoke-direct {p0, p1, p2}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 75
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_26

    .line 76
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    goto :goto_3f

    .line 78
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized ObjectIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    .line 80
    :goto_3f
    return-void

    .line 70
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    .registers 8
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "nameValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_8

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 128
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 130
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, "passed":[Ljava/lang/Object;
    nop

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/GeneralNameInterface;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 133
    .local v4, "gni":Lsun/security/x509/GeneralNameInterface;
    return-object v4

    .line 134
    .end local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "passed":[Ljava/lang/Object;
    .end local v4    # "gni":Lsun/security/x509/GeneralNameInterface;
    :catch_20
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiation error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;

    .line 246
    if-nez p1, :cond_4

    .line 247
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto :goto_b

    .line 248
    .end local v0    # "constraintType":I
    :cond_4
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    if-eqz v0, :cond_c

    .line 249
    const/4 v0, -0x1

    .line 254
    .restart local v0    # "constraintType":I
    :goto_b
    return v0

    .line 251
    .end local v0    # "constraintType":I
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing, widening, and matching are not supported for OtherName."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_a

    .line 155
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v0, p1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    .line 156
    return-void

    .line 159
    :cond_a
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 160
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 161
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, -0x80

    invoke-static {v3, v1, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 162
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 164
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 173
    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Lsun/security/x509/OtherName;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 176
    return v2

    .line 178
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/OtherName;

    .line 179
    .local v1, "otherOther":Lsun/security/x509/OtherName;
    iget-object v3, v1, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v4, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 180
    return v2

    .line 182
    :cond_18
    const/4 v3, 0x0

    .line 184
    .local v3, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_19
    iget-object v4, v1, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v5, v1, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v4, v5}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_39

    .line 187
    .end local v3    # "otherGNI":Lsun/security/x509/GeneralNameInterface;
    .local v4, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    nop

    .line 190
    if-eqz v4, :cond_30

    .line 192
    :try_start_24
    invoke-interface {v4, p0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v3
    :try_end_28
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_24 .. :try_end_28} :catch_2d

    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .local v0, "result":Z
    :goto_2c
    goto :goto_2f

    .line 193
    .end local v0    # "result":Z
    :catch_2d
    move-exception v0

    .line 194
    .local v0, "ioe":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 195
    .local v0, "result":Z
    :goto_2f
    goto :goto_38

    .line 197
    .end local v0    # "result":Z
    :cond_30
    iget-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iget-object v2, v1, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 200
    .restart local v0    # "result":Z
    :goto_38
    return v0

    .line 185
    .end local v0    # "result":Z
    .end local v4    # "otherGNI":Lsun/security/x509/GeneralNameInterface;
    .restart local v3    # "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :catch_39
    move-exception v0

    .line 186
    .local v0, "ioe":Ljava/io/IOException;
    return v2
.end method

.method public blacklist getNameValue()[B
    .registers 2

    .line 114
    iget-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 107
    iget-object v0, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 209
    iget v0, p0, Lsun/security/x509/OtherName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 210
    iget-object v0, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lsun/security/x509/OtherName;->nameValue:[B

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 212
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 215
    .end local v0    # "i":I
    :cond_23
    iget v0, p0, Lsun/security/x509/OtherName;->myhash:I

    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 3

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "subtreeDepth() not supported for generic OtherName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Other-Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
