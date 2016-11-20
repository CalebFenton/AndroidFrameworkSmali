.class abstract Lsun/security/ssl/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;,
        Lsun/security/ssl/TrustManagerFactoryImpl$SimpleFactory;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private isInitialized:Z

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    #@6
    .line 42
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    #@9
    .line 44
    return-void
.end method

.method static getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 15
    .param p0, "dbgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    const/4 v11, 0x0

    #@1
    .line 133
    .local v11, "storeFileName":Ljava/lang/String;
    const/4 v10, 0x0

    #@2
    .line 134
    .local v10, "storeFile":Ljava/io/File;
    const/4 v3, 0x0

    #@3
    .line 137
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v8, Ljava/util/HashMap;

    #@5
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 138
    .local v8, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    #@a
    .line 139
    .local v9, "sep":Ljava/lang/String;
    const/4 v6, 0x0

    #@b
    .line 141
    .local v6, "ks":Ljava/security/KeyStore;
    new-instance v12, Lsun/security/ssl/TrustManagerFactoryImpl$2;

    #@d
    invoke-direct {v12, v8}, Lsun/security/ssl/TrustManagerFactoryImpl$2;-><init>(Ljava/util/HashMap;)V

    #@10
    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@13
    .line 167
    const-string/jumbo v12, "trustStore"

    #@16
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v11

    #@1a
    .end local v11    # "storeFileName":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    #@1c
    .line 168
    .local v11, "storeFileName":Ljava/lang/String;
    const-string/jumbo v12, "NONE"

    #@1f
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v12

    #@23
    if-nez v12, :cond_1

    #@25
    .line 169
    if-eqz v11, :cond_5

    #@27
    .line 170
    new-instance v10, Ljava/io/File;

    #@29
    .end local v10    # "storeFile":Ljava/io/File;
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2c
    .line 171
    .local v10, "storeFile":Ljava/io/File;
    invoke-static {v10}, Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    #@2f
    move-result-object v3

    #@30
    .line 185
    .local v3, "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    #@32
    .line 186
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@35
    move-result-object v11

    #@36
    .line 192
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "storeFile":Ljava/io/File;
    :cond_1
    :goto_1
    const-string/jumbo v12, "trustStoreType"

    #@39
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/String;

    #@3f
    .line 193
    .local v2, "defaultTrustStoreType":Ljava/lang/String;
    const-string/jumbo v12, "trustStoreProvider"

    #@42
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    check-cast v1, Ljava/lang/String;

    #@48
    .line 194
    .local v1, "defaultTrustStoreProvider":Ljava/lang/String;
    sget-object v12, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@4a
    if-eqz v12, :cond_2

    #@4c
    invoke-static {p0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@4f
    move-result v12

    #@50
    if-eqz v12, :cond_2

    #@52
    .line 195
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@54
    new-instance v13, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v14, "trustStore is: "

    #@5c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v13

    #@60
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v13

    #@64
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v13

    #@68
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6b
    .line 196
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    new-instance v13, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v14, "trustStore type is : "

    #@75
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v13

    #@79
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v13

    #@7d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v13

    #@81
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@84
    .line 198
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@86
    new-instance v13, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v14, "trustStore provider is : "

    #@8e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v13

    #@92
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v13

    #@96
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v13

    #@9a
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9d
    .line 205
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a0
    move-result v12

    #@a1
    if-eqz v12, :cond_8

    #@a3
    .line 206
    sget-object v12, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@a5
    if-eqz v12, :cond_3

    #@a7
    invoke-static {p0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@aa
    move-result v12

    #@ab
    if-eqz v12, :cond_3

    #@ad
    .line 207
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@af
    const-string/jumbo v13, "init truststore"

    #@b2
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b5
    .line 209
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@b8
    move-result v12

    #@b9
    if-nez v12, :cond_7

    #@bb
    .line 210
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@be
    move-result-object v6

    #@bf
    .line 215
    .local v6, "ks":Ljava/security/KeyStore;
    :goto_2
    const/4 v7, 0x0

    #@c0
    .line 216
    .local v7, "passwd":[C
    const-string/jumbo v12, "trustStorePasswd"

    #@c3
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    move-result-object v0

    #@c7
    check-cast v0, Ljava/lang/String;

    #@c9
    .line 217
    .local v0, "defaultTrustStorePassword":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@cc
    move-result v12

    #@cd
    if-eqz v12, :cond_4

    #@cf
    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@d2
    move-result-object v7

    #@d3
    .line 221
    .end local v7    # "passwd":[C
    :cond_4
    invoke-virtual {v6, v3, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@d6
    .line 224
    if-eqz v7, :cond_8

    #@d8
    .line 225
    const/4 v4, 0x0

    #@d9
    .local v4, "i":I
    :goto_3
    array-length v12, v7

    #@da
    if-ge v4, v12, :cond_8

    #@dc
    .line 226
    const/4 v12, 0x0

    #@dd
    aput-char v12, v7, v4

    #@df
    .line 225
    add-int/lit8 v4, v4, 0x1

    #@e1
    goto :goto_3

    #@e2
    .line 173
    .end local v0    # "defaultTrustStorePassword":Ljava/lang/String;
    .end local v1    # "defaultTrustStoreProvider":Ljava/lang/String;
    .end local v2    # "defaultTrustStoreType":Ljava/lang/String;
    .end local v4    # "i":I
    .local v3, "fis":Ljava/io/FileInputStream;
    .local v6, "ks":Ljava/security/KeyStore;
    .local v10, "storeFile":Ljava/io/File;
    :cond_5
    const-string/jumbo v12, "javaHome"

    #@e5
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    move-result-object v5

    #@e9
    check-cast v5, Ljava/lang/String;

    #@eb
    .line 174
    .local v5, "javaHome":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    #@ed
    .end local v10    # "storeFile":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v12

    #@f6
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v12

    #@fa
    const-string/jumbo v13, "lib"

    #@fd
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v12

    #@101
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v12

    #@105
    .line 175
    const-string/jumbo v13, "security"

    #@108
    .line 174
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v12

    #@10c
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v12

    #@110
    .line 176
    const-string/jumbo v13, "jssecacerts"

    #@113
    .line 174
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v12

    #@117
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v12

    #@11b
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11e
    .line 177
    .local v10, "storeFile":Ljava/io/File;
    invoke-static {v10}, Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    #@121
    move-result-object v3

    #@122
    .local v3, "fis":Ljava/io/FileInputStream;
    if-nez v3, :cond_0

    #@124
    .line 178
    new-instance v10, Ljava/io/File;

    #@126
    .end local v10    # "storeFile":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v12

    #@12f
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v12

    #@133
    const-string/jumbo v13, "lib"

    #@136
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v12

    #@13a
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v12

    #@13e
    .line 179
    const-string/jumbo v13, "security"

    #@141
    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v12

    #@145
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v12

    #@149
    .line 180
    const-string/jumbo v13, "cacerts"

    #@14c
    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v12

    #@150
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v12

    #@154
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@157
    .line 181
    .restart local v10    # "storeFile":Ljava/io/File;
    invoke-static {v10}, Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    #@15a
    move-result-object v3

    #@15b
    goto/16 :goto_0

    #@15d
    .line 188
    .end local v5    # "javaHome":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "No File Available, using empty keystore."

    #@160
    goto/16 :goto_1

    #@162
    .line 212
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "storeFile":Ljava/io/File;
    .restart local v1    # "defaultTrustStoreProvider":Ljava/lang/String;
    .restart local v2    # "defaultTrustStoreType":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    #@165
    move-result-object v6

    #@166
    .local v6, "ks":Ljava/security/KeyStore;
    goto/16 :goto_2

    #@168
    .line 231
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_8
    if-eqz v3, :cond_9

    #@16a
    .line 232
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    #@16d
    .line 235
    :cond_9
    return-object v6
.end method

.method private static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    new-instance v0, Lsun/security/ssl/TrustManagerFactoryImpl$1;

    #@2
    invoke-direct {v0, p0}, Lsun/security/ssl/TrustManagerFactoryImpl$1;-><init>(Ljava/io/File;)V

    #@5
    .line 110
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/io/FileInputStream;

    #@b
    return-object v0
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 100
    const-string/jumbo v1, "TrustManagerFactoryImpl is not initialized"

    #@9
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 102
    :cond_0
    const/4 v0, 0x1

    #@e
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    #@10
    iget-object v1, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    if-nez p1, :cond_0

    #@2
    .line 51
    :try_start_0
    const-string/jumbo v4, "trustmanager"

    #@5
    invoke-static {v4}, Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object p1

    #@9
    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lsun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    #@c
    move-result-object v4

    #@d
    iput-object v4, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    #@f
    .line 80
    const/4 v4, 0x1

    #@10
    iput-boolean v4, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    #@12
    .line 48
    return-void

    #@13
    .line 70
    :catch_0
    move-exception v0

    #@14
    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@16
    if-eqz v4, :cond_1

    #@18
    const-string/jumbo v4, "trustmanager"

    #@1b
    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@23
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "SunX509: skip default keystore: "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 72
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 75
    :cond_1
    new-instance v4, Ljava/security/KeyStoreException;

    #@3c
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "problem accessing trust store"

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 75
    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@55
    .line 65
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@57
    if-eqz v4, :cond_2

    #@59
    const-string/jumbo v4, "trustmanager"

    #@5c
    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_2

    #@62
    .line 66
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@64
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v6, "SunX509: skip default keystore: "

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    .line 66
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7b
    .line 69
    :cond_2
    throw v2

    #@7c
    .line 58
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    #@7d
    .line 59
    .local v1, "err":Ljava/lang/Error;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@7f
    if-eqz v4, :cond_3

    #@81
    const-string/jumbo v4, "trustmanager"

    #@84
    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@87
    move-result v4

    #@88
    if-eqz v4, :cond_3

    #@8a
    .line 60
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8c
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v6, "SunX509: skip default keystore: "

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    .line 60
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a3
    .line 63
    :cond_3
    throw v1

    #@a4
    .line 52
    .end local v1    # "err":Ljava/lang/Error;
    :catch_3
    move-exception v3

    #@a5
    .line 54
    .local v3, "se":Ljava/lang/SecurityException;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    #@a7
    if-eqz v4, :cond_0

    #@a9
    const-string/jumbo v4, "trustmanager"

    #@ac
    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@af
    move-result v4

    #@b0
    if-eqz v4, :cond_0

    #@b2
    .line 55
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b4
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v6, "SunX509: skip default keystore: "

    #@bc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v5

    #@c8
    .line 55
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cb
    goto/16 :goto_0
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lsun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    #@6
    .line 91
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    #@9
    .line 89
    return-void
.end method

.method abstract getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method abstract getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
