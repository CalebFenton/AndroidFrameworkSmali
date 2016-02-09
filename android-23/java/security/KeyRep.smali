.class public Ljava/security/KeyRep;
.super Ljava/lang/Object;
.source "KeyRep.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyRep$Type;
    }
.end annotation


# static fields
.field private static synthetic -java_security_KeyRep$TypeSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x4206b04c77655abdL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private encoded:[B

.field private final format:Ljava/lang/String;

.field private final type:Ljava/security/KeyRep$Type;


# direct methods
.method private static synthetic -getjava_security_KeyRep$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/security/KeyRep;->-java_security_KeyRep$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/security/KeyRep;->-java_security_KeyRep$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/security/KeyRep$Type;->values()[Ljava/security/KeyRep$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    #@10
    invoke-virtual {v1}, Ljava/security/KeyRep$Type;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    #@19
    invoke-virtual {v1}, Ljava/security/KeyRep$Type;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    #@22
    invoke-virtual {v1}, Ljava/security/KeyRep$Type;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Ljava/security/KeyRep;->-java_security_KeyRep$TypeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "type"    # Ljava/security/KeyRep$Type;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "encoded"    # [B

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@5
    .line 66
    iput-object p2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@7
    .line 67
    iput-object p3, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@9
    .line 68
    iput-object p4, p0, Ljava/security/KeyRep;->encoded:[B

    #@b
    .line 69
    iget-object v0, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "type == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 72
    :cond_0
    iget-object v0, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "algorithm == null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 75
    :cond_1
    iget-object v0, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@27
    if-nez v0, :cond_2

    #@29
    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    #@2b
    const-string/jumbo v1, "format == null"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 78
    :cond_2
    iget-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    #@34
    if-nez v0, :cond_3

    #@36
    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    #@38
    const-string/jumbo v1, "encoded == null"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 64
    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 148
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 149
    iget-object v1, p0, Ljava/security/KeyRep;->encoded:[B

    #@6
    array-length v1, v1

    #@7
    new-array v0, v1, [B

    #@9
    .line 150
    .local v0, "new_encoded":[B
    iget-object v1, p0, Ljava/security/KeyRep;->encoded:[B

    #@b
    array-length v2, v0

    #@c
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 151
    iput-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    #@11
    .line 147
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-static {}, Ljava/security/KeyRep;->-getjava_security_KeyRep$TypeSwitchesValues()[I

    #@3
    move-result-object v4

    #@4
    iget-object v5, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@6
    invoke-virtual {v5}, Ljava/security/KeyRep$Type;->ordinal()I

    #@9
    move-result v5

    #@a
    aget v4, v4, v5

    #@c
    packed-switch v4, :pswitch_data_0

    #@f
    .line 142
    new-instance v4, Ljava/io/NotSerializableException;

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "unrecognized key type: "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    iget-object v6, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 107
    :pswitch_0
    const-string/jumbo v4, "RAW"

    #@2e
    iget-object v5, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_0

    #@36
    .line 109
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    #@38
    iget-object v5, p0, Ljava/security/KeyRep;->encoded:[B

    #@3a
    iget-object v6, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@3c
    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    return-object v4

    #@40
    .line 110
    :catch_0
    move-exception v0

    #@41
    .line 111
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/NotSerializableException;

    #@43
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "Could not create SecretKeySpec: "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v4

    #@5b
    .line 114
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v4, Ljava/io/NotSerializableException;

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "unrecognized type/format combination: "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    iget-object v6, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    const-string/jumbo v6, "/"

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    iget-object v6, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@83
    throw v4

    #@84
    .line 116
    :pswitch_1
    const-string/jumbo v4, "X.509"

    #@87
    iget-object v5, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_1

    #@8f
    .line 118
    :try_start_1
    iget-object v4, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@91
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@94
    move-result-object v3

    #@95
    .line 119
    .local v3, "kf":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    #@97
    iget-object v5, p0, Ljava/security/KeyRep;->encoded:[B

    #@99
    invoke-direct {v4, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@9c
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    #@9f
    move-result-object v4

    #@a0
    return-object v4

    #@a1
    .line 123
    .end local v3    # "kf":Ljava/security/KeyFactory;
    :catch_1
    move-exception v2

    #@a2
    .line 124
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/io/NotSerializableException;

    #@a4
    new-instance v5, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v6, "Could not resolve key: "

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v5

    #@b8
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v4

    #@bc
    .line 120
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    #@bd
    .line 121
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/io/NotSerializableException;

    #@bf
    new-instance v5, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v6, "Could not resolve key: "

    #@c7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v4

    #@d7
    .line 127
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    new-instance v4, Ljava/io/NotSerializableException;

    #@d9
    new-instance v5, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v6, "unrecognized type/format combination: "

    #@e1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v5

    #@e5
    iget-object v6, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@e7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v5

    #@eb
    const-string/jumbo v6, "/"

    #@ee
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v5

    #@f2
    iget-object v6, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v4

    #@100
    .line 129
    :pswitch_2
    const-string/jumbo v4, "PKCS#8"

    #@103
    iget-object v5, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@105
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v4

    #@109
    if-eqz v4, :cond_2

    #@10b
    .line 131
    :try_start_2
    iget-object v4, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@10d
    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@110
    move-result-object v3

    #@111
    .line 132
    .restart local v3    # "kf":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@113
    iget-object v5, p0, Ljava/security/KeyRep;->encoded:[B

    #@115
    invoke-direct {v4, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@118
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_3

    #@11b
    move-result-object v4

    #@11c
    return-object v4

    #@11d
    .line 136
    .end local v3    # "kf":Ljava/security/KeyFactory;
    :catch_3
    move-exception v2

    #@11e
    .line 137
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/io/NotSerializableException;

    #@120
    new-instance v5, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    const-string/jumbo v6, "Could not resolve key: "

    #@128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v5

    #@130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v5

    #@134
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@137
    throw v4

    #@138
    .line 133
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_4
    move-exception v1

    #@139
    .line 134
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/io/NotSerializableException;

    #@13b
    new-instance v5, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v6, "Could not resolve key: "

    #@143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v5

    #@147
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v5

    #@14f
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@152
    throw v4

    #@153
    .line 140
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_2
    new-instance v4, Ljava/io/NotSerializableException;

    #@155
    new-instance v5, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v6, "unrecognized type/format combination: "

    #@15d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v5

    #@161
    iget-object v6, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v5

    #@167
    const-string/jumbo v6, "/"

    #@16a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v5

    #@16e
    iget-object v6, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v5

    #@174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v5

    #@178
    invoke-direct {v4, v5}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@17b
    throw v4

    #@17c
    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
