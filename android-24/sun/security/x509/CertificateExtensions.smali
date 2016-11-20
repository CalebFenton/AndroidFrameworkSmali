.class public Lsun/security/x509/CertificateExtensions;
.super Ljava/lang/Object;
.source "CertificateExtensions.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Lsun/security/x509/Extension;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions"

.field public static final NAME:Ljava/lang/String; = "extensions"

.field private static PARAMS:[Ljava/lang/Class;

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private unparseableExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedCritExt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "x509"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    #@9
    .line 92
    const/4 v0, 0x2

    #@a
    new-array v0, v0, [Ljava/lang/Class;

    #@c
    const-class v1, Ljava/lang/Boolean;

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-class v1, Ljava/lang/Object;

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    sput-object v0, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    #@18
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    .line 60
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@e
    .line 62
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    #@11
    .line 69
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    .line 60
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@e
    .line 62
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    #@11
    .line 78
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateExtensions;->init(Lsun/security/util/DerInputStream;)V

    #@14
    .line 77
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    const/4 v3, 0x5

    #@1
    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@4
    move-result-object v1

    #@5
    .line 86
    .local v1, "exts":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@7
    if-ge v2, v3, :cond_0

    #@9
    .line 87
    new-instance v0, Lsun/security/x509/Extension;

    #@b
    aget-object v3, v1, v2

    #@d
    invoke-direct {v0, v3}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    #@10
    .line 88
    .local v0, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateExtensions;->parseExtension(Lsun/security/x509/Extension;)V

    #@13
    .line 86
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 82
    .end local v0    # "ext":Lsun/security/x509/Extension;
    :cond_0
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .locals 12
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@3
    move-result-object v9

    #@4
    invoke-static {v9}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@7
    move-result-object v5

    #@8
    .line 98
    .local v5, "extClass":Ljava/lang/Class;
    if-nez v5, :cond_4

    #@a
    .line 99
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_0

    #@10
    .line 100
    const/4 v9, 0x1

    #@11
    iput-boolean v9, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    #@13
    .line 102
    :cond_0
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@15
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@18
    move-result-object v10

    #@19
    invoke-virtual {v10}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    invoke-interface {v9, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    if-nez v9, :cond_1

    #@23
    .line 103
    return-void

    #@24
    .line 105
    :cond_1
    new-instance v9, Ljava/io/IOException;

    #@26
    const-string/jumbo v10, "Duplicate extensions not allowed"

    #@29
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    #@2d
    .line 116
    .end local v5    # "extClass":Ljava/lang/Class;
    :catch_0
    move-exception v7

    #@2e
    .line 117
    .local v7, "invk":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@31
    move-result-object v4

    #@32
    .line 118
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    #@35
    move-result v9

    #@36
    if-nez v9, :cond_5

    #@38
    .line 120
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    #@3a
    if-nez v9, :cond_2

    #@3c
    .line 121
    new-instance v9, Ljava/util/TreeMap;

    #@3e
    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    #@41
    iput-object v9, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    #@43
    .line 123
    :cond_2
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    #@45
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v10}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@4c
    move-result-object v10

    #@4d
    .line 124
    new-instance v11, Lsun/security/x509/UnparseableExtension;

    #@4f
    invoke-direct {v11, p1, v4}, Lsun/security/x509/UnparseableExtension;-><init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V

    #@52
    .line 123
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 125
    sget-object v9, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    #@57
    if-eqz v9, :cond_3

    #@59
    .line 126
    sget-object v9, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    #@5b
    new-instance v10, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v11, "Error parsing extension: "

    #@63
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v10

    #@67
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@72
    .line 127
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    #@75
    .line 128
    new-instance v6, Lsun/misc/HexDumpEncoder;

    #@77
    invoke-direct {v6}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@7a
    .line 129
    .local v6, "h":Lsun/misc/HexDumpEncoder;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7c
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {v6, v10}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 131
    .end local v6    # "h":Lsun/misc/HexDumpEncoder;
    :cond_3
    return-void

    #@88
    .line 108
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v7    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v5    # "extClass":Ljava/lang/Class;
    :cond_4
    :try_start_1
    sget-object v9, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    #@8a
    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@8d
    move-result-object v1

    #@8e
    .line 110
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x2

    #@8f
    new-array v8, v9, [Ljava/lang/Object;

    #@91
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    #@94
    move-result v9

    #@95
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@98
    move-result-object v9

    #@99
    const/4 v10, 0x0

    #@9a
    aput-object v9, v8, v10

    #@9c
    .line 111
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@9f
    move-result-object v9

    #@a0
    const/4 v10, 0x1

    #@a1
    aput-object v9, v8, v10

    #@a3
    .line 112
    .local v8, "passed":[Ljava/lang/Object;
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    move-result-object v0

    #@a7
    check-cast v0, Lsun/security/x509/CertAttrSet;

    #@a9
    .line 113
    .local v0, "certExt":Lsun/security/x509/CertAttrSet;
    iget-object v9, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@ab
    invoke-interface {v0}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    #@ae
    move-result-object v10

    #@af
    check-cast v0, Lsun/security/x509/Extension;

    #@b1
    .end local v0    # "certExt":Lsun/security/x509/CertAttrSet;
    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    move-result-object v9

    #@b5
    if-eqz v9, :cond_7

    #@b7
    .line 114
    new-instance v9, Ljava/io/IOException;

    #@b9
    const-string/jumbo v10, "Duplicate extensions not allowed"

    #@bc
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v9
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@c0
    .line 138
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v5    # "extClass":Ljava/lang/Class;
    .end local v8    # "passed":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    #@c1
    .line 139
    .local v2, "e":Ljava/io/IOException;
    throw v2

    #@c2
    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@c3
    .line 141
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    #@c5
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@c8
    move-result-object v10

    #@c9
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@cc
    invoke-virtual {v9, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@cf
    move-result-object v9

    #@d0
    check-cast v9, Ljava/io/IOException;

    #@d2
    throw v9

    #@d3
    .line 133
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/lang/Throwable;
    .restart local v7    # "invk":Ljava/lang/reflect/InvocationTargetException;
    :cond_5
    instance-of v9, v4, Ljava/io/IOException;

    #@d5
    if-eqz v9, :cond_6

    #@d7
    .line 134
    check-cast v4, Ljava/io/IOException;

    #@d9
    .end local v4    # "e":Ljava/lang/Throwable;
    throw v4

    #@da
    .line 136
    .restart local v4    # "e":Ljava/lang/Throwable;
    :cond_6
    new-instance v9, Ljava/io/IOException;

    #@dc
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@df
    move-result-object v10

    #@e0
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e3
    invoke-virtual {v9, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@e6
    move-result-object v9

    #@e7
    check-cast v9, Ljava/io/IOException;

    #@e9
    throw v9

    #@ea
    .line 95
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v7    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "cons":Ljava/lang/reflect/Constructor;
    .restart local v5    # "extClass":Ljava/lang/Class;
    .restart local v8    # "passed":[Ljava/lang/Object;
    :cond_7
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 235
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    .line 236
    new-instance v1, Ljava/io/IOException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "No extension found with name "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 238
    :cond_0
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@24
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 233
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V

    #@4
    .line 154
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isCertReq"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 169
    .local v1, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@7
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    .line 170
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    .line 172
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v6, v3

    #@11
    if-ge v2, v6, :cond_2

    #@13
    .line 173
    aget-object v6, v3, v2

    #@15
    instance-of v6, v6, Lsun/security/x509/CertAttrSet;

    #@17
    if-eqz v6, :cond_0

    #@19
    .line 174
    aget-object v6, v3, v2

    #@1b
    check-cast v6, Lsun/security/x509/CertAttrSet;

    #@1d
    invoke-interface {v6, v1}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    #@20
    .line 172
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 175
    :cond_0
    aget-object v6, v3, v2

    #@25
    instance-of v6, v6, Lsun/security/x509/Extension;

    #@27
    if-eqz v6, :cond_1

    #@29
    .line 176
    aget-object v6, v3, v2

    #@2b
    check-cast v6, Lsun/security/x509/Extension;

    #@2d
    invoke-virtual {v6, v1}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@30
    goto :goto_1

    #@31
    .line 178
    :cond_1
    new-instance v6, Ljava/security/cert/CertificateException;

    #@33
    const-string/jumbo v7, "Illegal extension object"

    #@36
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v6

    #@3a
    .line 181
    :cond_2
    new-instance v4, Lsun/security/util/DerOutputStream;

    #@3c
    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3f
    .line 182
    .local v4, "seq":Lsun/security/util/DerOutputStream;
    const/16 v6, 0x30

    #@41
    invoke-virtual {v4, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@44
    .line 185
    if-nez p2, :cond_3

    #@46
    .line 186
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@48
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@4b
    .line 187
    .local v5, "tmp":Lsun/security/util/DerOutputStream;
    const/16 v6, -0x80

    #@4d
    const/4 v7, 0x1

    #@4e
    const/4 v8, 0x3

    #@4f
    invoke-static {v6, v7, v8}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@52
    move-result v6

    #@53
    invoke-virtual {v5, v6, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@56
    .line 192
    :goto_2
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    #@5d
    .line 167
    return-void

    #@5e
    .line 190
    .end local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3
    move-object v5, v4

    #@5f
    .restart local v5    # "tmp":Lsun/security/util/DerOutputStream;
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 301
    if-ne p0, p1, :cond_0

    #@3
    .line 302
    const/4 v7, 0x1

    #@4
    return v7

    #@5
    .line 303
    :cond_0
    instance-of v7, p1, Lsun/security/x509/CertificateExtensions;

    #@7
    if-nez v7, :cond_1

    #@9
    .line 304
    return v8

    #@a
    :cond_1
    move-object v7, p1

    #@b
    .line 306
    check-cast v7, Lsun/security/x509/CertificateExtensions;

    #@d
    invoke-virtual {v7}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    #@10
    move-result-object v4

    #@11
    .line 307
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .line 309
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    #@16
    .line 310
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@18
    invoke-interface {v7}, Ljava/util/Map;->size()I

    #@1b
    move-result v7

    #@1c
    if-eq v2, v7, :cond_2

    #@1e
    .line 311
    return v8

    #@1f
    .line 314
    :cond_2
    const/4 v1, 0x0

    #@20
    .line 315
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    #@21
    .end local v1    # "key":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_7

    #@23
    .line 316
    aget-object v7, v3, v0

    #@25
    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    #@27
    if-eqz v7, :cond_3

    #@29
    .line 317
    aget-object v7, v3, v0

    #@2b
    check-cast v7, Lsun/security/x509/CertAttrSet;

    #@2d
    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 318
    :cond_3
    aget-object v5, v3, v0

    #@33
    check-cast v5, Lsun/security/x509/Extension;

    #@35
    .line 319
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_4

    #@37
    .line 320
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 321
    :cond_4
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@41
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    check-cast v6, Lsun/security/x509/Extension;

    #@47
    .line 322
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_5

    #@49
    .line 323
    return v8

    #@4a
    .line 324
    :cond_5
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v7

    #@4e
    if-nez v7, :cond_6

    #@50
    .line 325
    return v8

    #@51
    .line 315
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 327
    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_7
    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@57
    move-result-object v7

    #@58
    .line 328
    check-cast p1, Lsun/security/x509/CertificateExtensions;

    #@5a
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@5d
    move-result-object v8

    #@5e
    .line 327
    invoke-interface {v7, v8}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v7

    #@62
    return v7
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 216
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    .line 217
    new-instance v1, Ljava/io/IOException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "No extension found with name "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 219
    :cond_0
    return-object v0
.end method

.method public getAllExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/x509/Extension;

    #@8
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 278
    const-string/jumbo v0, "extensions"

    #@3
    return-object v0
.end method

.method public getNameByOid(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "name$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 243
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@18
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lsun/security/x509/Extension;

    #@1e
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 244
    return-object v0

    #@29
    .line 247
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@2a
    return-object v2
.end method

.method public getUnparseableExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 270
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    #@b
    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    #@0
    .prologue
    .line 286
    iget-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
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
    .line 202
    instance-of v0, p2, Lsun/security/x509/Extension;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 203
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@6
    check-cast p2, Lsun/security/x509/Extension;

    #@8
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 201
    return-void

    #@c
    .line 205
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Unknown extension type."

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
