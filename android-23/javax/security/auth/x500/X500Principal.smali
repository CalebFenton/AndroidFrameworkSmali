.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient canonicalName:Ljava/lang/String;

.field private transient dn:Lorg/apache/harmony/security/x501/Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    if-nez p1, :cond_0

    #@5
    .line 97
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "in == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 101
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@10
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    #@16
    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 95
    return-void

    #@19
    .line 102
    :catch_0
    move-exception v0

    #@1a
    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    #@1d
    move-result-object v1

    #@1e
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    if-nez p1, :cond_0

    #@5
    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "name == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 129
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    #@10
    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 124
    return-void

    #@16
    .line 130
    :catch_0
    move-exception v0

    #@17
    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0, p1}, Ljavax/security/auth/x500/X500Principal;->incorrectInputName(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@1a
    move-result-object v1

    #@1b
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    if-nez p1, :cond_0

    #@5
    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "name == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 140
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    #@10
    invoke-direct {p0, p1, p2}, Ljavax/security/auth/x500/X500Principal;->substituteNameFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    #@17
    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 135
    return-void

    #@1a
    .line 141
    :catch_0
    move-exception v0

    #@1b
    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0, p1}, Ljavax/security/auth/x500/X500Principal;->incorrectInputName(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@1e
    move-result-object v1

    #@1f
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "name"    # [B

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    if-nez p1, :cond_0

    #@5
    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Name cannot be null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 78
    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@10
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    #@16
    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 72
    return-void

    #@19
    .line 79
    :catch_0
    move-exception v0

    #@1a
    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;->incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;

    #@1d
    move-result-object v1

    #@1e
    throw v1
.end method

.method private declared-synchronized getCanonicalName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 154
    :try_start_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 155
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@7
    const-string/jumbo v1, "CANONICAL"

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;

    #@10
    .line 157
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->canonicalName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    return-object v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method private incorrectInputEncoding(Ljava/io/IOException;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    const-string/jumbo v1, "Incorrect input encoding"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    .line 109
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@b
    .line 110
    throw v0
.end method

.method private incorrectInputName(Ljava/io/IOException;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Incorrect input name:"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    .line 148
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1c
    .line 149
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    #@e
    iput-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@10
    .line 298
    return-void
.end method

.method private substituteNameFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 304
    .local v3, "sbName":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@8
    move-result v2

    #@9
    .line 306
    .local v2, "fromIndex":I
    :goto_0
    const-string/jumbo v5, "="

    #@c
    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    .local v1, "equalIndex":I
    const/4 v5, -0x1

    #@11
    if-eq v5, v1, :cond_1

    #@13
    .line 307
    const-string/jumbo v5, ","

    #@16
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@19
    move-result v0

    #@1a
    .line 308
    .local v0, "commaIndex":I
    add-int/lit8 v5, v0, 0x1

    #@1c
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 309
    .local v4, "subName":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 310
    add-int/lit8 v6, v0, 0x1

    #@2c
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Ljava/lang/String;

    #@32
    invoke-virtual {v3, v6, v1, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 312
    :cond_0
    move v2, v0

    #@36
    goto :goto_0

    #@37
    .line 314
    .end local v0    # "commaIndex":I
    .end local v4    # "subName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@2
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@9
    .line 294
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    if-ne p0, p1, :cond_0

    #@2
    .line 163
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 165
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    if-eq v1, v2, :cond_2

    #@10
    .line 166
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 168
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    #@15
    .line 169
    .local v0, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    return v1
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    iget-object v2, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@3
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    #@6
    move-result-object v1

    #@7
    .line 180
    .local v1, "src":[B
    array-length v2, v1

    #@8
    new-array v0, v2, [B

    #@a
    .line 181
    .local v0, "dst":[B
    array-length v2, v0

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 182
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@2
    const-string/jumbo v1, "RFC2253"

    #@5
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    const-string/jumbo v0, "CANONICAL"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 216
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 219
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@10
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 19
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 223
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@4
    move-object/from16 v16, v0

    #@6
    const-string/jumbo v17, "RFC1779"

    #@9
    invoke-virtual/range {v16 .. v17}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    .line 224
    .local v7, "rfc1779Name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@11
    move-object/from16 v16, v0

    #@13
    const-string/jumbo v17, "RFC2253"

    #@16
    invoke-virtual/range {v16 .. v17}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 226
    .local v8, "rfc2253Name":Ljava/lang/String;
    const-string/jumbo v16, "RFC1779"

    #@1d
    move-object/from16 v0, p1

    #@1f
    move-object/from16 v1, v16

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v16

    #@25
    if-eqz v16, :cond_3

    #@27
    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2c
    .line 228
    .local v6, "resultName":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@2f
    move-result v4

    #@30
    .line 229
    .local v4, "fromIndex":I
    const/4 v3, -0x1

    #@31
    .line 230
    .local v3, "equalIndex":I
    :goto_0
    const-string/jumbo v16, "="

    #@34
    move-object/from16 v0, v16

    #@36
    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@39
    move-result v3

    #@3a
    const/16 v16, -0x1

    #@3c
    move/from16 v0, v16

    #@3e
    if-eq v0, v3, :cond_2

    #@40
    .line 231
    const-string/jumbo v16, ","

    #@43
    move-object/from16 v0, v16

    #@45
    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@48
    move-result v2

    #@49
    .line 232
    .local v2, "commaIndex":I
    add-int/lit8 v16, v2, 0x1

    #@4b
    move/from16 v0, v16

    #@4d
    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v16

    #@51
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    .line 234
    .local v10, "subName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@58
    move-result v16

    #@59
    const/16 v17, 0x4

    #@5b
    move/from16 v0, v16

    #@5d
    move/from16 v1, v17

    #@5f
    if-le v0, v1, :cond_1

    #@61
    .line 235
    const/16 v16, 0x0

    #@63
    const/16 v17, 0x4

    #@65
    move/from16 v0, v16

    #@67
    move/from16 v1, v17

    #@69
    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c
    move-result-object v16

    #@6d
    const-string/jumbo v17, "OID."

    #@70
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v16

    #@74
    .line 234
    if-eqz v16, :cond_1

    #@76
    .line 236
    const/16 v16, 0x4

    #@78
    move/from16 v0, v16

    #@7a
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7d
    move-result-object v12

    #@7e
    .line 237
    .local v12, "subSubName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@80
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@83
    move-result v16

    #@84
    if-eqz v16, :cond_1

    #@86
    .line 238
    move-object/from16 v0, p2

    #@88
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v5

    #@8c
    check-cast v5, Ljava/lang/String;

    #@8e
    .line 239
    .local v5, "replaceName":Ljava/lang/String;
    if-lez v2, :cond_0

    #@90
    new-instance v16, Ljava/lang/StringBuilder;

    #@92
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v17, " "

    #@98
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v16

    #@9c
    move-object/from16 v0, v16

    #@9e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v16

    #@a2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    .line 240
    :cond_0
    add-int/lit8 v16, v2, 0x1

    #@a8
    move/from16 v0, v16

    #@aa
    invoke-virtual {v6, v0, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 243
    .end local v5    # "replaceName":Ljava/lang/String;
    .end local v12    # "subSubName":Ljava/lang/String;
    :cond_1
    move v4, v2

    #@ae
    goto :goto_0

    #@af
    .line 245
    .end local v2    # "commaIndex":I
    .end local v10    # "subName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v16

    #@b3
    return-object v16

    #@b4
    .line 246
    .end local v3    # "equalIndex":I
    .end local v4    # "fromIndex":I
    .end local v6    # "resultName":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v16, "RFC2253"

    #@b7
    move-object/from16 v0, p1

    #@b9
    move-object/from16 v1, v16

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@be
    move-result v16

    #@bf
    if-eqz v16, :cond_8

    #@c1
    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c6
    .line 248
    .restart local v6    # "resultName":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@cb
    .line 250
    .local v15, "subsidyName":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@ce
    move-result v4

    #@cf
    .line 251
    .restart local v4    # "fromIndex":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@d2
    move-result v14

    #@d3
    .line 252
    .local v14, "subsidyFromIndex":I
    const/4 v3, -0x1

    #@d4
    .line 253
    .restart local v3    # "equalIndex":I
    const/4 v13, -0x1

    #@d5
    .line 254
    .local v13, "subsidyEqualIndex":I
    :goto_1
    const-string/jumbo v16, "="

    #@d8
    move-object/from16 v0, v16

    #@da
    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@dd
    move-result v3

    #@de
    const/16 v16, -0x1

    #@e0
    move/from16 v0, v16

    #@e2
    if-eq v0, v3, :cond_7

    #@e4
    .line 255
    const-string/jumbo v16, "="

    #@e7
    move-object/from16 v0, v16

    #@e9
    invoke-virtual {v15, v0, v14}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@ec
    move-result v13

    #@ed
    .line 257
    const-string/jumbo v16, ","

    #@f0
    move-object/from16 v0, v16

    #@f2
    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@f5
    move-result v2

    #@f6
    .line 258
    .restart local v2    # "commaIndex":I
    add-int/lit8 v16, v2, 0x1

    #@f8
    move/from16 v0, v16

    #@fa
    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@fd
    move-result-object v16

    #@fe
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@101
    move-result-object v10

    #@102
    .line 260
    .restart local v10    # "subName":Ljava/lang/String;
    move-object/from16 v0, p2

    #@104
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@107
    move-result v16

    #@108
    if-eqz v16, :cond_6

    #@10a
    .line 262
    const-string/jumbo v16, ","

    #@10d
    .line 261
    move-object/from16 v0, v16

    #@10f
    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@112
    move-result v11

    #@113
    .line 263
    .local v11, "subOrignalEndIndex":I
    const/16 v16, -0x1

    #@115
    move/from16 v0, v16

    #@117
    if-ne v11, v0, :cond_4

    #@119
    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@11c
    move-result v11

    #@11d
    .line 265
    :cond_4
    const-string/jumbo v16, ","

    #@120
    move-object/from16 v0, v16

    #@122
    invoke-virtual {v15, v0, v13}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@125
    move-result v9

    #@126
    .line 267
    .local v9, "subGoalEndIndex":I
    const/16 v16, -0x1

    #@128
    move/from16 v0, v16

    #@12a
    if-ne v9, v0, :cond_5

    #@12c
    .line 268
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@12f
    move-result v9

    #@130
    .line 269
    :cond_5
    add-int/lit8 v16, v3, 0x1

    #@132
    .line 270
    add-int/lit8 v17, v13, 0x1

    #@134
    move/from16 v0, v17

    #@136
    invoke-virtual {v15, v0, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@139
    move-result-object v17

    #@13a
    .line 269
    move/from16 v0, v16

    #@13c
    move-object/from16 v1, v17

    #@13e
    invoke-virtual {v6, v0, v11, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    .line 272
    add-int/lit8 v17, v2, 0x1

    #@143
    move-object/from16 v0, p2

    #@145
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    move-result-object v16

    #@149
    check-cast v16, Ljava/lang/String;

    #@14b
    move/from16 v0, v17

    #@14d
    move-object/from16 v1, v16

    #@14f
    invoke-virtual {v6, v0, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    .line 275
    .end local v9    # "subGoalEndIndex":I
    .end local v11    # "subOrignalEndIndex":I
    :cond_6
    move v4, v2

    #@153
    .line 276
    add-int/lit8 v14, v13, -0x1

    #@155
    goto :goto_1

    #@156
    .line 278
    .end local v2    # "commaIndex":I
    .end local v10    # "subName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v16

    #@15a
    return-object v16

    #@15b
    .line 280
    .end local v3    # "equalIndex":I
    .end local v4    # "fromIndex":I
    .end local v6    # "resultName":Ljava/lang/StringBuilder;
    .end local v13    # "subsidyEqualIndex":I
    .end local v14    # "subsidyFromIndex":I
    .end local v15    # "subsidyName":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v16, Ljava/lang/IllegalArgumentException;

    #@15d
    new-instance v17, Ljava/lang/StringBuilder;

    #@15f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@162
    const-string/jumbo v18, "invalid format specified: "

    #@165
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v17

    #@169
    move-object/from16 v0, v17

    #@16b
    move-object/from16 v1, p1

    #@16d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v17

    #@171
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@174
    move-result-object v17

    #@175
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@178
    throw v16
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Ljavax/security/auth/x500/X500Principal;->getCanonicalName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->dn:Lorg/apache/harmony/security/x501/Name;

    #@2
    const-string/jumbo v1, "RFC1779"

    #@5
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
