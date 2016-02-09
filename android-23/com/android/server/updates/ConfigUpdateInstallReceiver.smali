.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# static fields
.field private static final EXTRA_REQUIRED_HASH:Ljava/lang/String; = "REQUIRED_HASH"

.field private static final EXTRA_VERSION_NUMBER:Ljava/lang/String; = "VERSION"

.field private static final TAG:Ljava/lang/String; = "ConfigUpdateInstallReceiver"


# instance fields
.field protected final updateContent:Ljava/io/File;

.field protected final updateDir:Ljava/io/File;

.field protected final updateVersion:Ljava/io/File;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "current"    # Ljava/lang/String;
    .param p2, "required"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "alternative"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6([B)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # [B

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "updateDir"    # Ljava/lang/String;
    .param p2, "updateContentPath"    # Ljava/lang/String;
    .param p3, "updateMetadataPath"    # Ljava/lang/String;
    .param p4, "updateVersionPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 51
    new-instance v1, Ljava/io/File;

    #@5
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    #@a
    .line 52
    new-instance v1, Ljava/io/File;

    #@c
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    #@11
    .line 53
    new-instance v0, Ljava/io/File;

    #@13
    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 54
    .local v0, "updateMetadataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@18
    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    #@1d
    .line 50
    return-void
.end method

.method private getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    invoke-direct {p0, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    .line 134
    .local v0, "content":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@b
    move-result-object v1

    #@c
    .line 136
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v2

    #@10
    .line 138
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@13
    .line 136
    return-object v2

    #@14
    .line 137
    :catchall_0
    move-exception v2

    #@15
    .line 138
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@18
    .line 137
    throw v2
.end method

.method private getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    .line 100
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_0

    #@6
    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Missing required content path, ignoring."

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 103
    :cond_0
    return-object v0
.end method

.method private getCurrentContent()[B
    .locals 3

    #@0
    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    #@2
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 145
    :catch_0
    move-exception v0

    #@c
    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ConfigUpdateInstallReceiver"

    #@f
    const-string/jumbo v2, "Failed to read current content, assuming first update!"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 147
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method private static getCurrentHash([B)Ljava/lang/String;
    .locals 4
    .param p0, "content"    # [B

    #@0
    .prologue
    .line 152
    if-nez p0, :cond_0

    #@2
    .line 153
    const-string/jumbo v3, "0"

    #@5
    return-object v3

    #@6
    .line 156
    :cond_0
    :try_start_0
    const-string/jumbo v3, "SHA512"

    #@9
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@c
    move-result-object v0

    #@d
    .line 157
    .local v0, "dgst":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    #@10
    move-result-object v2

    #@11
    .line 158
    .local v2, "fingerprint":[B
    const/4 v3, 0x0

    #@12
    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 159
    .end local v0    # "dgst":Ljava/security/MessageDigest;
    .end local v2    # "fingerprint":[B
    :catch_0
    move-exception v1

    #@18
    .line 160
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    #@1a
    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1d
    throw v3
.end method

.method private getCurrentVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    #@2
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 125
    .local v1, "strVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    return v2

    #@13
    .line 126
    .end local v1    # "strVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@14
    .line 127
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ConfigUpdateInstallReceiver"

    #@17
    const-string/jumbo v3, "Couldn\'t find current metadata, assuming first update"

    #@1a
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 128
    const/4 v2, 0x0

    #@1e
    return v2
.end method

.method private getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 115
    const-string/jumbo v1, "REQUIRED_HASH"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 116
    .local v0, "extraValue":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "Missing required previous hash, ignoring."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method private getVersionFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    const-string/jumbo v1, "VERSION"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 108
    .local v0, "extraValue":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "Missing required version number, ignoring."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method private verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "current"    # Ljava/lang/String;
    .param p2, "required"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    const-string/jumbo v0, "NONE"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 171
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 174
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private verifyVersion(II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "alternative"    # I

    #@0
    .prologue
    .line 165
    if-ge p1, p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method


# virtual methods
.method protected install([BI)V
    .locals 4
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    #@2
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    #@4
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    #@7
    .line 211
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    #@9
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    #@b
    int-to-long v2, p2

    #@c
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    #@17
    .line 209
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    #@5
    invoke-virtual {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->start()V

    #@8
    .line 58
    return-void
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 214
    return-void
.end method

.method protected writeUpdate(Ljava/io/File;Ljava/io/File;[B)V
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    const/4 v0, 0x0

    #@1
    .line 179
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@2
    .line 182
    .local v3, "tmp":Ljava/io/File;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@5
    move-result-object v2

    #@6
    .line 183
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@9
    .line 185
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_1

    #@f
    .line 186
    new-instance v4, Ljava/io/IOException;

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "Failed to create directory "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 201
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "tmp":Ljava/io/File;
    :catchall_0
    move-exception v4

    #@2e
    .line 202
    .end local v0    # "out":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v3, :cond_0

    #@30
    .line 203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@33
    .line 205
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@36
    .line 201
    throw v4

    #@37
    .line 189
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "parent":Ljava/io/File;
    .restart local v3    # "tmp":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "journal"

    #@3a
    const-string/jumbo v5, ""

    #@3d
    invoke-static {v4, v5, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@40
    move-result-object v3

    #@41
    .line 191
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x1

    #@42
    const/4 v5, 0x0

    #@43
    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    #@46
    .line 193
    new-instance v1, Ljava/io/FileOutputStream;

    #@48
    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 194
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    #@4e
    .line 196
    .end local v0    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    #@55
    .line 198
    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@58
    move-result v4

    #@59
    if-nez v4, :cond_2

    #@5b
    .line 199
    new-instance v4, Ljava/io/IOException;

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "Failed to atomically rename "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@79
    .line 201
    :catchall_1
    move-exception v4

    #@7a
    move-object v0, v1

    #@7b
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v0, "out":Ljava/io/FileOutputStream;
    goto :goto_0

    #@7c
    .line 202
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    #@7e
    .line 203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@81
    .line 205
    :cond_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@84
    .line 177
    return-void
.end method
