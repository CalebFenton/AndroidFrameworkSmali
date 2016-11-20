.class public Lcom/android/org/conscrypt/CertPinManager;
.super Ljava/lang/Object;
.source "CertPinManager.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/org/conscrypt/PinListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final hostnameCache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private lastModified:J

.field private final pinFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 2
    .param p1, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    #@a
    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    #@c
    const/16 v1, 0xa

    #@e
    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    #@13
    .line 40
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    #@16
    .line 47
    new-instance v0, Ljava/io/File;

    #@18
    const-string/jumbo v1, "/data/misc/keychain/pins"

    #@1b
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1e
    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    #@20
    .line 48
    iput-object p1, p0, Lcom/android/org/conscrypt/CertPinManager;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@22
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "store"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    #@a
    .line 38
    new-instance v0, Llibcore/util/BasicLruCache;

    #@c
    const/16 v1, 0xa

    #@e
    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    #@13
    .line 40
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    #@16
    .line 53
    if-nez p1, :cond_0

    #@18
    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "path == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 56
    :cond_0
    new-instance v0, Ljava/io/File;

    #@23
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@26
    iput-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    #@28
    .line 57
    iput-object p2, p0, Lcom/android/org/conscrypt/CertPinManager;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2a
    .line 52
    return-void
.end method

.method private declared-synchronized ensureInitialized()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 87
    :try_start_0
    iget-boolean v4, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    invoke-direct {p0}, Lcom/android/org/conscrypt/CertPinManager;->isCacheValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    monitor-exit p0

    #@d
    .line 88
    return v5

    #@e
    .line 92
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/org/conscrypt/CertPinManager;->readPinFile()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 94
    .local v3, "pinFileContents":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@14
    .line 96
    invoke-static {v3}, Lcom/android/org/conscrypt/CertPinManager;->getPinFileEntries(Ljava/lang/String;)[Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    const/4 v4, 0x0

    #@19
    array-length v6, v5

    #@1a
    :goto_0
    if-ge v4, v6, :cond_1

    #@1c
    aget-object v1, v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 98
    .local v1, "entry":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lcom/android/org/conscrypt/PinListEntry;

    #@20
    iget-object v7, p0, Lcom/android/org/conscrypt/CertPinManager;->certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@22
    invoke-direct {v2, v1, v7}, Lcom/android/org/conscrypt/PinListEntry;-><init>(Ljava/lang/String;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    #@25
    .line 99
    .local v2, "pin":Lcom/android/org/conscrypt/PinListEntry;
    iget-object v7, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    #@27
    invoke-virtual {v2}, Lcom/android/org/conscrypt/PinListEntry;->getCommonName()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/org/conscrypt/PinEntryException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    .line 96
    .end local v2    # "pin":Lcom/android/org/conscrypt/PinListEntry;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_0

    #@31
    .line 100
    :catch_0
    move-exception v0

    #@32
    .line 101
    .local v0, "e":Lcom/android/org/conscrypt/PinEntryException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "Pinlist contains a malformed pin: "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-static {v7, v0}, Lcom/android/org/conscrypt/CertPinManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    goto :goto_1

    #@4a
    .end local v0    # "e":Lcom/android/org/conscrypt/PinEntryException;
    .end local v1    # "entry":Ljava/lang/String;
    .end local v3    # "pinFileContents":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit p0

    #@4c
    throw v4

    #@4d
    .line 106
    .restart local v3    # "pinFileContents":Ljava/lang/String;
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    #@4f
    invoke-virtual {v4}, Llibcore/util/BasicLruCache;->evictAll()V

    #@52
    .line 109
    iget-object v4, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    #@54
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    #@57
    move-result-wide v4

    #@58
    iput-wide v4, p0, Lcom/android/org/conscrypt/CertPinManager;->lastModified:J

    #@5a
    .line 112
    const/4 v4, 0x1

    #@5b
    iput-boolean v4, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z

    #@5d
    .line 115
    :cond_2
    iget-boolean v4, p0, Lcom/android/org/conscrypt/CertPinManager;->initialized:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5f
    monitor-exit p0

    #@60
    return v4
.end method

.method private getMatchingCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    const-string/jumbo v0, ""

    #@3
    .line 165
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    #@5
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "cn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    .line 167
    .local v1, "cn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v4

    #@21
    if-lt v3, v4, :cond_0

    #@23
    .line 171
    invoke-static {p1, v1}, Lcom/android/org/conscrypt/CertPinManager;->isHostnameMatchedBy(Ljava/lang/String;Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 172
    move-object v0, v1

    #@2a
    goto :goto_0

    #@2b
    .line 175
    .end local v1    # "cn":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getPinFileEntries(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "pinFileContents"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "\n"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private isCacheValid()Z
    .locals 4

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@5
    move-result-wide v0

    #@6
    iget-wide v2, p0, Lcom/android/org/conscrypt/CertPinManager;->lastModified:J

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private static isHostnameMatchedBy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "cn"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x2e

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 186
    if-eqz p0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    if-nez p1, :cond_1

    #@e
    .line 187
    :cond_0
    return v6

    #@f
    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_0

    #@15
    .line 190
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@17
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    .line 192
    const-string/jumbo v4, "*"

    #@1e
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@21
    move-result v4

    #@22
    if-nez v4, :cond_2

    #@24
    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    return v4

    #@29
    .line 196
    :cond_2
    const-string/jumbo v4, "*."

    #@2c
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_3

    #@32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@35
    move-result v4

    #@36
    add-int/lit8 v4, v4, -0x2

    #@38
    const/4 v5, 0x2

    #@39
    invoke-virtual {p0, v6, p1, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_3

    #@3f
    .line 197
    return v7

    #@40
    .line 200
    :cond_3
    const/16 v4, 0x2a

    #@42
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@45
    move-result v0

    #@46
    .line 201
    .local v0, "asterisk":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@49
    move-result v1

    #@4a
    .line 202
    .local v1, "dot":I
    if-le v0, v1, :cond_4

    #@4c
    .line 203
    return v6

    #@4d
    .line 207
    :cond_4
    invoke-virtual {p0, v6, p1, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@50
    move-result v4

    #@51
    if-nez v4, :cond_5

    #@53
    .line 208
    return v6

    #@54
    .line 211
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@57
    move-result v4

    #@58
    add-int/lit8 v5, v0, 0x1

    #@5a
    sub-int v2, v4, v5

    #@5c
    .line 212
    .local v2, "suffixLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5f
    move-result v4

    #@60
    sub-int v3, v4, v2

    #@62
    .line 213
    .local v3, "suffixStart":I
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    #@65
    move-result v4

    #@66
    if-ge v4, v3, :cond_6

    #@68
    .line 214
    return v6

    #@69
    .line 217
    :cond_6
    add-int/lit8 v4, v0, 0x1

    #@6b
    invoke-virtual {p0, v3, p1, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_7

    #@71
    .line 218
    return v6

    #@72
    .line 221
    :cond_7
    return v7
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 224
    return-void
.end method

.method private declared-synchronized lookup(Ljava/lang/String;)Lcom/android/org/conscrypt/PinListEntry;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/CertPinManager;->ensureInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 137
    return-object v2

    #@a
    .line 141
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    #@c
    invoke-virtual {v1, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 142
    .local v0, "cn":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@14
    .line 144
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    #@16
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/org/conscrypt/PinListEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    return-object v1

    #@1e
    .line 148
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertPinManager;->getMatchingCN(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 149
    if-eqz v0, :cond_2

    #@24
    .line 150
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->hostnameCache:Llibcore/util/BasicLruCache;

    #@26
    invoke-virtual {v1, p1, v0}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 152
    iget-object v1, p0, Lcom/android/org/conscrypt/CertPinManager;->entries:Ljava/util/Map;

    #@2b
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/android/org/conscrypt/PinListEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    monitor-exit p0

    #@32
    return-object v1

    #@33
    :cond_2
    monitor-exit p0

    #@34
    .line 156
    return-object v2

    #@35
    .end local v0    # "cn":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit p0

    #@37
    throw v1
.end method

.method private readPinFile()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/CertPinManager;->pinFile:Ljava/io/File;

    #@2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 124
    :catch_0
    move-exception v1

    #@c
    .line 126
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/org/conscrypt/PinManagerException;

    #@e
    const-string/jumbo v3, "Unexpected error reading pin list; failing."

    #@11
    invoke-direct {v2, v3, v1}, Lcom/android/org/conscrypt/PinManagerException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@14
    throw v2

    #@15
    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@16
    .line 123
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    #@17
    return-object v2
.end method


# virtual methods
.method public isChainValid(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/PinManagerException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertPinManager;->lookup(Ljava/lang/String;)Lcom/android/org/conscrypt/PinListEntry;

    #@3
    move-result-object v0

    #@4
    .line 75
    .local v0, "entry":Lcom/android/org/conscrypt/PinListEntry;
    if-nez v0, :cond_0

    #@6
    .line 76
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 79
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/org/conscrypt/PinListEntry;->isChainValid(Ljava/util/List;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method
