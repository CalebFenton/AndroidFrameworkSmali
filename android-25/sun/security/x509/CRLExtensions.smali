.class public Lsun/security/x509/CRLExtensions;
.super Ljava/lang/Object;
.source "CRLExtensions.java"


# static fields
.field private static final PARAMS:[Ljava/lang/Class;


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

.field private unsupportedCritExt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 110
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Ljava/lang/Boolean;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    const-class v1, Ljava/lang/Object;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    sput-object v0, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    #@f
    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@e
    .line 69
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    #@11
    .line 74
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@e
    .line 69
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    #@11
    .line 84
    invoke-direct {p0, p1}, Lsun/security/x509/CRLExtensions;->init(Lsun/security/util/DerInputStream;)V

    #@14
    .line 83
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .locals 10
    .param p1, "derStrm"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    move-object v5, p1

    #@1
    .line 92
    .local v5, "str":Lsun/security/util/DerInputStream;
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    #@4
    move-result v7

    #@5
    int-to-byte v4, v7

    #@6
    .line 94
    .local v4, "nextByte":B
    and-int/lit16 v7, v4, 0xc0

    #@8
    const/16 v8, 0x80

    #@a
    if-ne v7, v8, :cond_0

    #@c
    .line 95
    and-int/lit8 v7, v4, 0x1f

    #@e
    if-nez v7, :cond_0

    #@10
    .line 96
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@13
    move-result-object v6

    #@14
    .line 97
    .local v6, "val":Lsun/security/util/DerValue;
    iget-object v5, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@16
    .line 100
    .end local v6    # "val":Lsun/security/util/DerValue;
    :cond_0
    const/4 v7, 0x5

    #@17
    invoke-virtual {v5, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@1a
    move-result-object v2

    #@1b
    .line 101
    .local v2, "exts":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    array-length v7, v2

    #@1d
    if-ge v3, v7, :cond_1

    #@1f
    .line 102
    new-instance v1, Lsun/security/x509/Extension;

    #@21
    aget-object v7, v2, v3

    #@23
    invoke-direct {v1, v7}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    #@26
    .line 103
    .local v1, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v1}, Lsun/security/x509/CRLExtensions;->parseExtension(Lsun/security/x509/Extension;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 101
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 105
    .end local v1    # "ext":Lsun/security/x509/Extension;
    .end local v2    # "exts":[Lsun/security/util/DerValue;
    .end local v3    # "i":I
    .end local v4    # "nextByte":B
    :catch_0
    move-exception v0

    #@2d
    .line 106
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CRLException;

    #@2f
    new-instance v8, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v9, "Parsing error: "

    #@37
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v8

    #@43
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v8

    #@47
    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v7

    #@4b
    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "exts":[Lsun/security/util/DerValue;
    .restart local v3    # "i":I
    .restart local v4    # "nextByte":B
    :cond_1
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .locals 8
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@3
    move-result-object v6

    #@4
    invoke-static {v6}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@7
    move-result-object v3

    #@8
    .line 116
    .local v3, "extClass":Ljava/lang/Class;
    if-nez v3, :cond_2

    #@a
    .line 117
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 118
    const/4 v6, 0x1

    #@11
    iput-boolean v6, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    #@13
    .line 119
    :cond_0
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@15
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1c
    move-result-object v7

    #@1d
    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    if-eqz v6, :cond_1

    #@23
    .line 120
    new-instance v6, Ljava/security/cert/CRLException;

    #@25
    const-string/jumbo v7, "Duplicate extensions not allowed"

    #@28
    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v6
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@2c
    .line 130
    .end local v3    # "extClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@2d
    .line 131
    .local v4, "invk":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/security/cert/CRLException;

    #@2f
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v6

    #@3b
    .line 121
    .end local v4    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "extClass":Ljava/lang/Class;
    :cond_1
    return-void

    #@3c
    .line 123
    :cond_2
    :try_start_1
    sget-object v6, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    #@3e
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@41
    move-result-object v0

    #@42
    .line 124
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    #@43
    new-array v5, v6, [Ljava/lang/Object;

    #@45
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    #@48
    move-result v6

    #@49
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4c
    move-result-object v6

    #@4d
    const/4 v7, 0x0

    #@4e
    aput-object v6, v5, v7

    #@50
    .line 125
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@53
    move-result-object v6

    #@54
    const/4 v7, 0x1

    #@55
    aput-object v6, v5, v7

    #@57
    .line 126
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Lsun/security/x509/CertAttrSet;

    #@5d
    .line 127
    .local v1, "crlExt":Lsun/security/x509/CertAttrSet;
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@5f
    invoke-interface {v1}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    check-cast v1, Lsun/security/x509/Extension;

    #@65
    .end local v1    # "crlExt":Lsun/security/x509/CertAttrSet;
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v6

    #@69
    if-eqz v6, :cond_3

    #@6b
    .line 128
    new-instance v6, Ljava/security/cert/CRLException;

    #@6d
    const-string/jumbo v7, "Duplicate extensions not allowed"

    #@70
    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@73
    throw v6
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@74
    .line 132
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v3    # "extClass":Ljava/lang/Class;
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    #@75
    .line 133
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CRLException;

    #@77
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v6

    #@7f
    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cons":Ljava/lang/reflect/Constructor;
    .restart local v3    # "extClass":Ljava/lang/Class;
    .restart local v5    # "passed":[Ljava/lang/Object;
    :cond_3
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 212
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    :try_start_0
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 149
    .local v3, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@7
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    .line 150
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    .line 152
    .local v5, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    #@10
    .local v4, "i":I
    :goto_0
    array-length v8, v5

    #@11
    if-ge v4, v8, :cond_2

    #@13
    .line 153
    aget-object v8, v5, v4

    #@15
    instance-of v8, v8, Lsun/security/x509/CertAttrSet;

    #@17
    if-eqz v8, :cond_0

    #@19
    .line 154
    aget-object v8, v5, v4

    #@1b
    check-cast v8, Lsun/security/x509/CertAttrSet;

    #@1d
    invoke-interface {v8, v3}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    #@20
    .line 152
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 155
    :cond_0
    aget-object v8, v5, v4

    #@25
    instance-of v8, v8, Lsun/security/x509/Extension;

    #@27
    if-eqz v8, :cond_1

    #@29
    .line 156
    aget-object v8, v5, v4

    #@2b
    check-cast v8, Lsun/security/x509/Extension;

    #@2d
    invoke-virtual {v8, v3}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    #@30
    goto :goto_1

    #@31
    .line 172
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@32
    .line 173
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/security/cert/CRLException;

    #@34
    new-instance v9, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v10, "Encoding error: "

    #@3c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@43
    move-result-object v10

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v8

    #@50
    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/security/cert/CRLException;

    #@52
    const-string/jumbo v9, "Illegal extension object"

    #@55
    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@58
    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@59
    .line 174
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "i":I
    .end local v5    # "objs":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    #@5a
    .line 175
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/security/cert/CRLException;

    #@5c
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v10, "Encoding error: "

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    invoke-direct {v8, v9}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@77
    throw v8

    #@78
    .line 161
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v3    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "objs":[Ljava/lang/Object;
    :cond_2
    :try_start_2
    new-instance v6, Lsun/security/util/DerOutputStream;

    #@7a
    invoke-direct {v6}, Lsun/security/util/DerOutputStream;-><init>()V

    #@7d
    .line 162
    .local v6, "seq":Lsun/security/util/DerOutputStream;
    const/16 v8, 0x30

    #@7f
    invoke-virtual {v6, v8, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@82
    .line 164
    new-instance v7, Lsun/security/util/DerOutputStream;

    #@84
    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    #@87
    .line 165
    .local v7, "tmp":Lsun/security/util/DerOutputStream;
    if-eqz p2, :cond_3

    #@89
    .line 166
    const/16 v8, -0x80

    #@8b
    .line 167
    const/4 v9, 0x1

    #@8c
    const/4 v10, 0x0

    #@8d
    .line 166
    invoke-static {v8, v9, v10}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@90
    move-result v8

    #@91
    invoke-virtual {v7, v8, v6}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@94
    .line 171
    :goto_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@97
    move-result-object v8

    #@98
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    #@9b
    .line 146
    return-void

    #@9c
    .line 169
    :cond_3
    move-object v7, v6

    #@9d
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 251
    if-ne p0, p1, :cond_0

    #@4
    .line 252
    return v9

    #@5
    .line 253
    :cond_0
    instance-of v7, p1, Lsun/security/x509/CRLExtensions;

    #@7
    if-nez v7, :cond_1

    #@9
    .line 254
    return v8

    #@a
    .line 256
    :cond_1
    nop

    #@b
    nop

    #@c
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    #@f
    move-result-object v4

    #@10
    .line 257
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 259
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    #@15
    .line 260
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@17
    invoke-interface {v7}, Ljava/util/Map;->size()I

    #@1a
    move-result v7

    #@1b
    if-eq v2, v7, :cond_2

    #@1d
    .line 261
    return v8

    #@1e
    .line 264
    :cond_2
    const/4 v1, 0x0

    #@1f
    .line 265
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    #@20
    .end local v1    # "key":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_7

    #@22
    .line 266
    aget-object v7, v3, v0

    #@24
    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    #@26
    if-eqz v7, :cond_3

    #@28
    .line 267
    aget-object v7, v3, v0

    #@2a
    check-cast v7, Lsun/security/x509/CertAttrSet;

    #@2c
    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 268
    :cond_3
    aget-object v5, v3, v0

    #@32
    check-cast v5, Lsun/security/x509/Extension;

    #@34
    .line 269
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_4

    #@36
    .line 270
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 271
    :cond_4
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@40
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Lsun/security/x509/Extension;

    #@46
    .line 272
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_5

    #@48
    .line 273
    return v8

    #@49
    .line 274
    :cond_5
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v7

    #@4d
    if-nez v7, :cond_6

    #@4f
    .line 275
    return v8

    #@50
    .line 265
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_0

    #@53
    .line 277
    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_7
    return v9
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/Extension;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    new-instance v0, Lsun/security/x509/X509AttributeName;

    #@2
    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    #@5
    .line 187
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 188
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v4, "x509"

    #@c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 189
    const-string/jumbo v4, "."

    #@15
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@18
    move-result v2

    #@19
    .line 190
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x1

    #@1b
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 193
    .end local v2    # "index":I
    .local v3, "name":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@21
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Lsun/security/x509/Extension;

    #@27
    return-object v4

    #@28
    .line 192
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    #@29
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
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
    .line 229
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

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
    .line 221
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

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

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    #@0
    .prologue
    .line 237
    iget-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@2
    check-cast p2, Lsun/security/x509/Extension;

    #@4
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
