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
.field private static final PKCS8:Ljava/lang/String; = "PKCS#8"

.field private static final RAW:Ljava/lang/String; = "RAW"

.field private static final X509:Ljava/lang/String; = "X.509"

.field private static final serialVersionUID:J = -0x4206b04c77655abdL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private encoded:[B

.field private format:Ljava/lang/String;

.field private type:Ljava/security/KeyRep$Type;


# direct methods
.method public constructor <init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "type"    # Ljava/security/KeyRep$Type;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "encoded"    # [B

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 135
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "invalid null input(s)"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 134
    :cond_1
    if-eqz p3, :cond_0

    #@12
    if-eqz p4, :cond_0

    #@14
    .line 138
    iput-object p1, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@16
    .line 139
    iput-object p2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@18
    .line 140
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@1e
    .line 141
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [B

    #@24
    iput-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    #@26
    .line 131
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    :try_start_0
    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@2
    sget-object v4, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    #@4
    if-ne v3, v4, :cond_0

    #@6
    const-string/jumbo v3, "RAW"

    #@9
    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 171
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    #@13
    iget-object v4, p0, Ljava/security/KeyRep;->encoded:[B

    #@15
    iget-object v5, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@17
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@1a
    return-object v3

    #@1b
    .line 172
    :cond_0
    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@1d
    sget-object v4, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    const-string/jumbo v3, "X.509"

    #@24
    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 173
    iget-object v3, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@2e
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@31
    move-result-object v1

    #@32
    .line 174
    .local v1, "f":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@34
    iget-object v4, p0, Ljava/security/KeyRep;->encoded:[B

    #@36
    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@39
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@3c
    move-result-object v3

    #@3d
    return-object v3

    #@3e
    .line 175
    .end local v1    # "f":Ljava/security/KeyFactory;
    :cond_1
    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@40
    sget-object v4, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    #@42
    if-ne v3, v4, :cond_2

    #@44
    const-string/jumbo v3, "PKCS#8"

    #@47
    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_2

    #@4f
    .line 176
    iget-object v3, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@51
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@54
    move-result-object v1

    #@55
    .line 177
    .restart local v1    # "f":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@57
    iget-object v4, p0, Ljava/security/KeyRep;->encoded:[B

    #@59
    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@5c
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@5f
    move-result-object v3

    #@60
    return-object v3

    #@61
    .line 179
    .end local v1    # "f":Ljava/security/KeyFactory;
    :cond_2
    new-instance v3, Ljava/io/NotSerializableException;

    #@63
    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "unrecognized type/format combination: "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 181
    iget-object v5, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@71
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 181
    const-string/jumbo v5, "/"

    #@78
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 181
    iget-object v5, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@7e
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    .line 179
    invoke-direct {v3, v4}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@89
    throw v3
    :try_end_0
    .catch Ljava/io/NotSerializableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@8a
    .line 183
    :catch_0
    move-exception v2

    #@8b
    .line 184
    .local v2, "nse":Ljava/io/NotSerializableException;
    throw v2

    #@8c
    .line 185
    .end local v2    # "nse":Ljava/io/NotSerializableException;
    :catch_1
    move-exception v0

    #@8d
    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/NotSerializableException;

    #@8f
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v4, "java.security.Key: ["

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    .line 188
    iget-object v4, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    #@9d
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v3

    #@a1
    .line 188
    const-string/jumbo v4, "] "

    #@a4
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    .line 189
    const-string/jumbo v4, "["

    #@ab
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    .line 189
    iget-object v4, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    #@b1
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    .line 189
    const-string/jumbo v4, "] "

    #@b8
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    .line 190
    const-string/jumbo v4, "["

    #@bf
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    .line 190
    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    #@c5
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    .line 190
    const-string/jumbo v4, "]"

    #@cc
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    .line 186
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@d7
    .line 191
    .restart local v2    # "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@da
    .line 192
    throw v2
.end method
