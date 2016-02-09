.class public Lcom/android/server/updates/SELinuxPolicyInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SELinuxPolicyInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SELinuxPolicyInstallReceiver"

.field private static final fileContextsPath:Ljava/lang/String; = "file_contexts"

.field private static final macPermissionsPath:Ljava/lang/String; = "mac_permissions.xml"

.field private static final propertyContextsPath:Ljava/lang/String; = "property_contexts"

.field private static final seappContextsPath:Ljava/lang/String; = "seapp_contexts"

.field private static final sepolicyPath:Ljava/lang/String; = "sepolicy"

.field private static final serviceContextsPath:Ljava/lang/String; = "service_contexts"

.field private static final versionPath:Ljava/lang/String; = "selinux_version"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "/data/security/bundle"

    #@3
    const-string/jumbo v1, "sepolicy_bundle"

    #@6
    const-string/jumbo v2, "metadata/"

    #@9
    const-string/jumbo v3, "version"

    #@c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 46
    return-void
.end method

.method private applyUpdate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    const-string/jumbo v4, "SELinuxPolicyInstallReceiver"

    #@3
    const-string/jumbo v5, "Applying SELinux policy"

    #@6
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 105
    new-instance v0, Ljava/io/File;

    #@b
    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    #@d
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@10
    move-result-object v4

    #@11
    const-string/jumbo v5, "backup"

    #@14
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@17
    .line 106
    .local v0, "backup":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@19
    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    #@1b
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, "current"

    #@22
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25
    .line 107
    .local v1, "current":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    #@27
    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    #@29
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@2c
    move-result-object v4

    #@2d
    const-string/jumbo v5, "tmp"

    #@30
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@33
    .line 108
    .local v3, "tmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_0

    #@39
    .line 109
    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    #@3c
    .line 110
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@47
    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 114
    const-string/jumbo v4, "selinux.reload_policy"

    #@55
    const-string/jumbo v5, "1"

    #@58
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 103
    :cond_1
    :goto_0
    return-void

    #@5c
    .line 115
    :catch_0
    move-exception v2

    #@5d
    .line 116
    .local v2, "e":Landroid/system/ErrnoException;
    const-string/jumbo v4, "SELinuxPolicyInstallReceiver"

    #@60
    const-string/jumbo v5, "Could not update selinux policy: "

    #@63
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_1

    #@6c
    .line 118
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@77
    goto :goto_0
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    #@0
    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 79
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@9
    move-result-object v2

    #@a
    const/4 v1, 0x0

    #@b
    array-length v3, v2

    #@c
    :goto_0
    if-ge v1, v3, :cond_0

    #@e
    aget-object v0, v2, v1

    #@10
    .line 80
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    #@13
    .line 79
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 81
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@19
    .line 77
    return-void
.end method

.method private installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    .locals 3
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "stream"    # Ljava/io/BufferedInputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    new-array v0, p3, [B

    #@3
    .line 73
    .local v0, "chunk":[B
    invoke-virtual {p2, v0, v2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    #@6
    .line 74
    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    #@8
    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    #@f
    .line 71
    return-void
.end method

.method private readChunkLengths(Ljava/io/BufferedInputStream;)[I
    .locals 3
    .param p1, "bundle"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    const/4 v1, 0x7

    #@1
    new-array v0, v1, [I

    #@3
    .line 60
    .local v0, "chunks":[I
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@6
    move-result v1

    #@7
    const/4 v2, 0x0

    #@8
    aput v1, v0, v2

    #@a
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x1

    #@f
    aput v1, v0, v2

    #@11
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@14
    move-result v1

    #@15
    const/4 v2, 0x2

    #@16
    aput v1, v0, v2

    #@18
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x3

    #@1d
    aput v1, v0, v2

    #@1f
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@22
    move-result v1

    #@23
    const/4 v2, 0x4

    #@24
    aput v1, v0, v2

    #@26
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@29
    move-result v1

    #@2a
    const/4 v2, 0x5

    #@2b
    aput v1, v0, v2

    #@2d
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x6

    #@32
    aput v1, v0, v2

    #@34
    .line 67
    return-object v0
.end method

.method private readInt(Ljava/io/BufferedInputStream;)I
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const/4 v1, 0x0

    #@1
    .line 52
    .local v1, "value":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    #@3
    if-ge v0, v2, :cond_0

    #@5
    .line 53
    shl-int/lit8 v2, v1, 0x8

    #@7
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    #@a
    move-result v3

    #@b
    or-int v1, v2, v3

    #@d
    .line 52
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 55
    :cond_0
    return v1
.end method

.method private unpackBundle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    new-instance v1, Ljava/io/BufferedInputStream;

    #@2
    new-instance v3, Ljava/io/FileInputStream;

    #@4
    iget-object v4, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateContent:Ljava/io/File;

    #@6
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@c
    .line 86
    .local v1, "stream":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/File;

    #@e
    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    #@10
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@13
    move-result-object v3

    #@14
    const-string/jumbo v4, "tmp"

    #@17
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    .line 88
    .local v2, "tmp":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readChunkLengths(Ljava/io/BufferedInputStream;)[I

    #@1d
    move-result-object v0

    #@1e
    .line 89
    .local v0, "chunkLengths":[I
    invoke-direct {p0, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->deleteRecursive(Ljava/io/File;)V

    #@21
    .line 90
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@24
    .line 91
    new-instance v3, Ljava/io/File;

    #@26
    const-string/jumbo v4, "selinux_version"

    #@29
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2c
    const/4 v4, 0x0

    #@2d
    aget v4, v0, v4

    #@2f
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    #@32
    .line 92
    new-instance v3, Ljava/io/File;

    #@34
    const-string/jumbo v4, "mac_permissions.xml"

    #@37
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3a
    const/4 v4, 0x1

    #@3b
    aget v4, v0, v4

    #@3d
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    #@40
    .line 93
    new-instance v3, Ljava/io/File;

    #@42
    const-string/jumbo v4, "seapp_contexts"

    #@45
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@48
    const/4 v4, 0x2

    #@49
    aget v4, v0, v4

    #@4b
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    #@4e
    .line 94
    new-instance v3, Ljava/io/File;

    #@50
    const-string/jumbo v4, "property_contexts"

    #@53
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@56
    const/4 v4, 0x3

    #@57
    aget v4, v0, v4

    #@59
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    #@5c
    .line 95
    new-instance v3, Ljava/io/File;

    #@5e
    const-string/jumbo v4, "file_contexts"

    #@61
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@64
    const/4 v4, 0x4

    #@65
    aget v4, v0, v4

    #@67
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    #@6a
    .line 96
    new-instance v3, Ljava/io/File;

    #@6c
    const-string/jumbo v4, "sepolicy"

    #@6f
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@72
    const/4 v4, 0x5

    #@73
    aget v4, v0, v4

    #@75
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    #@78
    .line 97
    new-instance v3, Ljava/io/File;

    #@7a
    const-string/jumbo v4, "service_contexts"

    #@7d
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@80
    const/4 v4, 0x6

    #@81
    aget v4, v0, v4

    #@83
    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@86
    .line 99
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@89
    .line 84
    return-void

    #@8a
    .line 98
    .end local v0    # "chunkLengths":[I
    :catchall_0
    move-exception v3

    #@8b
    .line 99
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8e
    .line 98
    throw v3
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->unpackBundle()V

    #@3
    .line 127
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->applyUpdate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 124
    :goto_0
    return-void

    #@7
    .line 132
    :catch_0
    move-exception v0

    #@8
    .line 133
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    #@b
    const-string/jumbo v4, "Could not update selinux policy: "

    #@e
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0

    #@12
    .line 130
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@13
    .line 131
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    #@16
    const-string/jumbo v4, "Could not update selinux policy: "

    #@19
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0

    #@1d
    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@1e
    .line 129
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "SELinuxPolicyInstallReceiver"

    #@21
    const-string/jumbo v4, "SELinux policy update malformed: "

    #@24
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method
