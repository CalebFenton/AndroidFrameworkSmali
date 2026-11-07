.class public Lsun/security/x509/CRLExtensions;
.super Ljava/lang/Object;
.source "CRLExtensions.java"


# static fields
.field private static final blacklist PARAMS:[Ljava/lang/Class;


# instance fields
.field private blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist unsupportedCritExt:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 83
    invoke-direct {p0, p1}, Lsun/security/x509/CRLExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 84
    return-void
.end method

.method private blacklist init(Lsun/security/util/DerInputStream;)V
    .registers 8
    .param p1, "derStrm"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 89
    move-object v0, p1

    .line 91
    .local v0, "str":Lsun/security/util/DerInputStream;
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v1

    int-to-byte v1, v1

    .line 93
    .local v1, "nextByte":B
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    and-int/lit8 v2, v1, 0x1f

    if-nez v2, :cond_17

    .line 95
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 96
    .local v2, "val":Lsun/security/util/DerValue;
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object v0, v3

    .line 99
    .end local v2    # "val":Lsun/security/util/DerValue;
    :cond_17
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 100
    .local v2, "exts":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v2

    if-ge v3, v4, :cond_2d

    .line 101
    new-instance v4, Lsun/security/x509/Extension;

    aget-object v5, v2, v3

    invoke-direct {v4, v5}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 102
    .local v4, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v4}, Lsun/security/x509/CRLExtensions;->parseExtension(Lsun/security/x509/Extension;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_2f

    .line 100
    .end local v4    # "ext":Lsun/security/x509/Extension;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 106
    .end local v0    # "str":Lsun/security/util/DerInputStream;
    .end local v1    # "nextByte":B
    .end local v2    # "exts":[Lsun/security/util/DerValue;
    .end local v3    # "i":I
    :cond_2d
    nop

    .line 107
    return-void

    .line 104
    :catch_2f
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist parseExtension(Lsun/security/x509/Extension;)V
    .registers 10
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_5f

    .line 115
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Duplicate extensions not allowed"

    if-nez v0, :cond_2c

    .line 116
    :try_start_c
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 118
    :cond_15
    iget-object v2, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    .line 120
    return-void

    .line 119
    :cond_26
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/CRLExtensions;
    .end local p1    # "ext":Lsun/security/x509/Extension;
    throw v2

    .line 122
    .restart local p0    # "this":Lsun/security/x509/CRLExtensions;
    .restart local p1    # "ext":Lsun/security/x509/Extension;
    :cond_2c
    sget-object v2, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 123
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 124
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "passed":[Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertAttrSet;

    .line 126
    .local v4, "crlExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    iget-object v5, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v4}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lsun/security/x509/Extension;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    .line 133
    .end local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "passed":[Ljava/lang/Object;
    .end local v4    # "crlExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    nop

    .line 134
    return-void

    .line 127
    .restart local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "passed":[Ljava/lang/Object;
    .restart local v4    # "crlExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    :cond_59
    new-instance v5, Ljava/security/cert/CRLException;

    invoke-direct {v5, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/CRLExtensions;
    .end local p1    # "ext":Lsun/security/x509/Extension;
    throw v5
    :try_end_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_5f} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5f} :catch_5f

    .line 131
    .end local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "passed":[Ljava/lang/Object;
    .end local v4    # "crlExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    .restart local p0    # "this":Lsun/security/x509/CRLExtensions;
    .restart local p1    # "ext":Lsun/security/x509/Extension;
    :catch_5f
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v0

    .line 130
    .local v0, "invk":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public blacklist encode(Ljava/io/OutputStream;Z)V
    .registers 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 147
    const-string v0, "Encoding error: "

    :try_start_2
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 148
    .local v1, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 149
    .local v2, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 151
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    array-length v5, v3

    if-ge v4, v5, :cond_3b

    .line 152
    aget-object v5, v3, v4

    instance-of v5, v5, Lsun/security/x509/CertAttrSet;

    if-eqz v5, :cond_23

    .line 153
    aget-object v5, v3, v4

    check-cast v5, Lsun/security/x509/CertAttrSet;

    invoke-interface {v5, v1}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    goto :goto_30

    .line 154
    :cond_23
    aget-object v5, v3, v4

    instance-of v5, v5, Lsun/security/x509/Extension;

    if-eqz v5, :cond_33

    .line 155
    aget-object v5, v3, v4

    check-cast v5, Lsun/security/x509/Extension;

    invoke-virtual {v5, v1}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 151
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 157
    :cond_33
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v6, "Illegal extension object"

    invoke-direct {v5, v6}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/CRLExtensions;
    .end local p1    # "out":Ljava/io/OutputStream;
    .end local p2    # "isExplicit":Z
    throw v5

    .line 160
    .end local v4    # "i":I
    .restart local p0    # "this":Lsun/security/x509/CRLExtensions;
    .restart local p1    # "out":Ljava/io/OutputStream;
    .restart local p2    # "isExplicit":Z
    :cond_3b
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 161
    .local v4, "seq":Lsun/security/util/DerOutputStream;
    const/16 v5, 0x30

    invoke-virtual {v4, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 163
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 164
    .local v5, "tmp":Lsun/security/util/DerOutputStream;
    if-eqz p2, :cond_58

    .line 165
    const/16 v6, -0x80

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v5, v6, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_59

    .line 168
    :cond_58
    move-object v5, v4

    .line 170
    :goto_59
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_60} :catch_7e
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_60} :catch_62

    .line 175
    .end local v1    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v2    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "objs":[Ljava/lang/Object;
    .end local v4    # "seq":Lsun/security/util/DerOutputStream;
    .end local v5    # "tmp":Lsun/security/util/DerOutputStream;
    nop

    .line 176
    return-void

    .line 173
    :catch_62
    move-exception v1

    .line 174
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CRLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_7e
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "other"    # Ljava/lang/Object;

    .line 250
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 251
    return v0

    .line 252
    :cond_4
    instance-of v1, p1, Lsun/security/x509/CRLExtensions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 253
    return v2

    .line 254
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/security/x509/CRLExtensions;

    .line 255
    invoke-virtual {v1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    .line 256
    .local v1, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 258
    .local v3, "objs":[Ljava/lang/Object;
    array-length v4, v3

    .line 259
    .local v4, "len":I
    iget-object v5, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_1f

    .line 260
    return v2

    .line 263
    :cond_1f
    const/4 v5, 0x0

    .line 264
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    if-ge v6, v4, :cond_54

    .line 265
    aget-object v7, v3, v6

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_31

    .line 266
    aget-object v7, v3, v6

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v5

    .line 267
    :cond_31
    aget-object v7, v3, v6

    check-cast v7, Lsun/security/x509/Extension;

    .line 268
    .local v7, "otherExt":Lsun/security/x509/Extension;
    if-nez v5, :cond_3f

    .line 269
    invoke-virtual {v7}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    :cond_3f
    iget-object v8, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/Extension;

    .line 271
    .local v8, "thisExt":Lsun/security/x509/Extension;
    if-nez v8, :cond_4a

    .line 272
    return v2

    .line 273
    :cond_4a
    invoke-virtual {v8, v7}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 274
    return v2

    .line 264
    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 276
    .end local v6    # "i":I
    .end local v7    # "otherExt":Lsun/security/x509/Extension;
    .end local v8    # "thisExt":Lsun/security/x509/Extension;
    :cond_54
    return v0
.end method

.method public blacklist get(Ljava/lang/String;)Lsun/security/x509/Extension;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 184
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "id":Ljava/lang/String;
    const-string v2, "x509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 188
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "name":Ljava/lang/String;
    goto :goto_1f

    .line 191
    .end local v2    # "name":Ljava/lang/String;
    :cond_1e
    move-object v2, p1

    .line 192
    .restart local v2    # "name":Ljava/lang/String;
    :goto_1f
    iget-object v3, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    return-object v3
.end method

.method public blacklist getAllExtensions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 285
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lsun/security/x509/Extension;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
