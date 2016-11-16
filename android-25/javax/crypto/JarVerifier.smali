.class final Ljavax/crypto/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# instance fields
.field private appPerms:Ljavax/crypto/CryptoPermissions;

.field private jarURL:Ljava/net/URL;

.field private savePerms:Z


# direct methods
.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "jarURL"    # Ljava/net/URL;
    .param p2, "savePerms"    # Z

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    #@6
    .line 60
    iput-object p1, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    #@8
    .line 61
    iput-boolean p2, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    #@a
    .line 59
    return-void
.end method

.method static verifyPolicySigned([Ljava/security/cert/Certificate;)V
    .locals 0
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    return-void
.end method


# virtual methods
.method getPermissions()Ljavax/crypto/CryptoPermissions;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    #@2
    return-object v0
.end method

.method verify()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/jar/JarException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    iget-boolean v8, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 75
    return-void

    #@5
    .line 81
    :cond_0
    iget-object v8, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    #@7
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@a
    move-result-object v8

    #@b
    const-string/jumbo v9, "jar"

    #@e
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v8

    #@12
    if-eqz v8, :cond_2

    #@14
    .line 82
    iget-object v7, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    #@16
    .line 84
    .local v7, "url":Ljava/net/URL;
    :goto_0
    const/4 v4, 0x0

    #@17
    .line 91
    .local v4, "jf":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v8, Ljavax/crypto/JarVerifier$1;

    #@19
    invoke-direct {v8, p0, v7}, Ljavax/crypto/JarVerifier$1;-><init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V

    #@1c
    .line 90
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@1f
    move-result-object v8

    #@20
    move-object v0, v8

    #@21
    check-cast v0, Ljava/util/jar/JarFile;

    #@23
    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 108
    .local v4, "jf":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_4

    #@26
    .line 109
    :try_start_1
    const-string/jumbo v8, "cryptoPerms"

    #@29
    invoke-virtual {v4, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@2c
    move-result-object v2

    #@2d
    .line 110
    .local v2, "je":Ljava/util/jar/JarEntry;
    if-nez v2, :cond_3

    #@2f
    .line 111
    new-instance v8, Ljava/util/jar/JarException;

    #@31
    .line 112
    const-string/jumbo v9, "Can not find cryptoPerms"

    #@34
    .line 111
    invoke-direct {v8, v9}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    #@37
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 125
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    .end local v4    # "jf":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v8

    #@39
    .line 129
    if-eqz v4, :cond_1

    #@3b
    .line 130
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    #@3e
    .line 125
    :cond_1
    throw v8

    #@3f
    .line 82
    .end local v7    # "url":Ljava/net/URL;
    :cond_2
    new-instance v7, Ljava/net/URL;

    #@41
    new-instance v8, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v9, "jar:"

    #@49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    iget-object v9, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    #@4f
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    const-string/jumbo v9, "!/"

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@65
    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0

    #@66
    .line 101
    .local v4, "jf":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v5

    #@67
    .line 102
    .local v5, "pae":Ljava/security/PrivilegedActionException;
    :try_start_2
    new-instance v6, Ljava/lang/SecurityException;

    #@69
    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v9, "Cannot load "

    #@71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    .line 102
    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@84
    .line 104
    .local v6, "se":Ljava/lang/SecurityException;
    invoke-virtual {v6, v5}, Ljava/lang/SecurityException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@87
    .line 105
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@88
    .line 115
    .end local v5    # "pae":Ljava/security/PrivilegedActionException;
    .end local v6    # "se":Ljava/lang/SecurityException;
    .restart local v2    # "je":Ljava/util/jar/JarEntry;
    .local v4, "jf":Ljava/util/jar/JarFile;
    :cond_3
    :try_start_3
    new-instance v8, Ljavax/crypto/CryptoPermissions;

    #@8a
    invoke-direct {v8}, Ljavax/crypto/CryptoPermissions;-><init>()V

    #@8d
    iput-object v8, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    #@8f
    .line 116
    iget-object v8, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    #@91
    invoke-virtual {v4, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v8, v9}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    .line 129
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    :cond_4
    if-eqz v4, :cond_5

    #@9a
    .line 130
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    #@9d
    .line 71
    :cond_5
    return-void

    #@9e
    .line 117
    .restart local v2    # "je":Ljava/util/jar/JarEntry;
    :catch_1
    move-exception v1

    #@9f
    .line 119
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/util/jar/JarException;

    #@a1
    new-instance v8, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v9, "Cannot load/parse"

    #@a9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v8

    #@ad
    .line 120
    iget-object v9, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    #@af
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@b2
    move-result-object v9

    #@b3
    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v8

    #@b7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v8

    #@bb
    invoke-direct {v3, v8}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    #@be
    .line 121
    .local v3, "jex":Ljava/util/jar/JarException;
    invoke-virtual {v3, v1}, Ljava/util/jar/JarException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@c1
    .line 122
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
