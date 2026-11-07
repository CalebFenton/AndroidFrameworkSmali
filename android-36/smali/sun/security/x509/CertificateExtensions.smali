.class public Lsun/security/x509/CertificateExtensions;
.super Ljava/lang/Object;
.source "CertificateExtensions.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet<",
        "Lsun/security/x509/Extension;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions"

.field public static final blacklist NAME:Ljava/lang/String; = "extensions"

.field private static blacklist PARAMS:[Ljava/lang/Class;

.field private static final blacklist debug:Lsun/security/util/Debug;


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

.field private blacklist unparseableExtensions:Ljava/util/Map;
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

    .line 58
    const-string v0, "x509"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 78
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 79
    return-void
.end method

.method private blacklist init(Lsun/security/util/DerInputStream;)V
    .registers 6
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 86
    .local v0, "exts":[Lsun/security/util/DerValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 87
    new-instance v2, Lsun/security/x509/Extension;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 88
    .local v2, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v2}, Lsun/security/x509/CertificateExtensions;->parseExtension(Lsun/security/x509/Extension;)V

    .line 86
    .end local v2    # "ext":Lsun/security/x509/Extension;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 90
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method private blacklist parseExtension(Lsun/security/x509/Extension;)V
    .registers 10
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_69
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_60

    .line 98
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Duplicate extensions not allowed"

    if-nez v0, :cond_2c

    .line 99
    :try_start_c
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 102
    :cond_15
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    .line 103
    return-void

    .line 105
    :cond_26
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/CertificateExtensions;
    .end local p1    # "ext":Lsun/security/x509/Extension;
    throw v2

    .line 108
    .restart local p0    # "this":Lsun/security/x509/CertificateExtensions;
    .restart local p1    # "ext":Lsun/security/x509/Extension;
    :cond_2c
    sget-object v2, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 110
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 111
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "passed":[Ljava/lang/Object;
    nop

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertAttrSet;

    .line 114
    .local v4, "certExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    iget-object v5, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v4}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Lsun/security/x509/Extension;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5a

    .line 143
    .end local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "passed":[Ljava/lang/Object;
    .end local v4    # "certExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    nop

    .line 144
    return-void

    .line 115
    .restart local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "passed":[Ljava/lang/Object;
    .restart local v4    # "certExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    :cond_5a
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/x509/CertificateExtensions;
    .end local p1    # "ext":Lsun/security/x509/Extension;
    throw v5
    :try_end_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_60} :catch_69
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_60} :catch_67
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_60} :catch_60

    .line 141
    .end local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "passed":[Ljava/lang/Object;
    .end local v4    # "certExt":Lsun/security/x509/CertAttrSet;, "Lsun/security/x509/CertAttrSet<*>;"
    .restart local p0    # "this":Lsun/security/x509/CertificateExtensions;
    .restart local p1    # "ext":Lsun/security/x509/Extension;
    :catch_60
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_67
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catch_69
    move-exception v0

    .line 118
    .local v0, "invk":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 119
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v2

    if-nez v2, :cond_c3

    .line 121
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    if-nez v2, :cond_7f

    .line 122
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    .line 124
    :cond_7f
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lsun/security/x509/UnparseableExtension;

    invoke-direct {v4, p1, v1}, Lsun/security/x509/UnparseableExtension;-><init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v2, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_c2

    .line 127
    sget-object v2, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 130
    .local v2, "h":Lsun/misc/HexDumpEncoder;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    .end local v2    # "h":Lsun/misc/HexDumpEncoder;
    :cond_c2
    return-void

    .line 134
    :cond_c3
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_cb

    .line 135
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 137
    :cond_cb
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_e

    .line 239
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void

    .line 237
    :cond_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No extension found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 157
    return-void
.end method

.method public greylist encode(Ljava/io/OutputStream;Z)V
    .registers 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isCertReq"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 170
    .local v0, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 171
    .local v1, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 173
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_39

    .line 174
    aget-object v4, v2, v3

    instance-of v4, v4, Lsun/security/x509/CertAttrSet;

    if-eqz v4, :cond_21

    .line 175
    aget-object v4, v2, v3

    check-cast v4, Lsun/security/x509/CertAttrSet;

    invoke-interface {v4, v0}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    goto :goto_2e

    .line 176
    :cond_21
    aget-object v4, v2, v3

    instance-of v4, v4, Lsun/security/x509/Extension;

    if-eqz v4, :cond_31

    .line 177
    aget-object v4, v2, v3

    check-cast v4, Lsun/security/x509/Extension;

    invoke-virtual {v4, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 173
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 179
    :cond_31
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "Illegal extension object"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    .end local v3    # "i":I
    :cond_39
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 183
    .local v3, "seq":Lsun/security/util/DerOutputStream;
    const/16 v4, 0x30

    invoke-virtual {v3, v4, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 186
    if-nez p2, :cond_56

    .line 187
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 188
    .local v4, "tmp":Lsun/security/util/DerOutputStream;
    const/16 v5, -0x80

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v5, v7, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v4, v5, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_57

    .line 191
    .end local v4    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_56
    move-object v4, v3

    .line 193
    .restart local v4    # "tmp":Lsun/security/util/DerOutputStream;
    :goto_57
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 194
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "other"    # Ljava/lang/Object;

    .line 302
    if-ne p0, p1, :cond_4

    .line 303
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_4
    instance-of v0, p1, Lsun/security/x509/CertificateExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 305
    return v1

    .line 306
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/CertificateExtensions;

    .line 307
    invoke-virtual {v0}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 308
    .local v0, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 310
    .local v2, "objs":[Ljava/lang/Object;
    array-length v3, v2

    .line 311
    .local v3, "len":I
    iget-object v4, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 312
    return v1

    .line 315
    :cond_1f
    const/4 v4, 0x0

    .line 316
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v3, :cond_54

    .line 317
    aget-object v6, v2, v5

    instance-of v6, v6, Lsun/security/x509/CertAttrSet;

    if-eqz v6, :cond_31

    .line 318
    aget-object v6, v2, v5

    check-cast v6, Lsun/security/x509/CertAttrSet;

    invoke-interface {v6}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v4

    .line 319
    :cond_31
    aget-object v6, v2, v5

    check-cast v6, Lsun/security/x509/Extension;

    .line 320
    .local v6, "otherExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_3f

    .line 321
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    :cond_3f
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/Extension;

    .line 323
    .local v7, "thisExt":Lsun/security/x509/Extension;
    if-nez v7, :cond_4a

    .line 324
    return v1

    .line 325
    :cond_4a
    invoke-virtual {v7, v6}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 326
    return v1

    .line 316
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 328
    .end local v5    # "i":I
    .end local v6    # "otherExt":Lsun/security/x509/Extension;
    .end local v7    # "thisExt":Lsun/security/x509/Extension;
    :cond_54
    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v1

    move-object v5, p1

    check-cast v5, Lsun/security/x509/CertificateExtensions;

    .line 329
    invoke-virtual {v5}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v5

    .line 328
    invoke-interface {v1, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic greylist-max-r get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r get(Ljava/lang/String;)Lsun/security/x509/Extension;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 217
    .local v0, "obj":Lsun/security/x509/Extension;
    if-eqz v0, :cond_b

    .line 220
    return-object v0

    .line 218
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No extension found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 264
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

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

    .line 256
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method blacklist getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 279
    const-string v0, "extensions"

    return-object v0
.end method

.method public blacklist getNameByOid(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .registers 5
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;

    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 245
    return-object v1

    .line 247
    .end local v1    # "name":Ljava/lang/String;
    :cond_29
    goto :goto_a

    .line 248
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUnparseableExtensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 271
    :cond_9
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 287
    iget-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 338
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    instance-of v0, p2, Lsun/security/x509/Extension;

    if-eqz v0, :cond_d

    .line 204
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lsun/security/x509/Extension;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void

    .line 206
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown extension type."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
