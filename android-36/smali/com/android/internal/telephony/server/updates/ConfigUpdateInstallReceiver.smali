.class public Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# instance fields
.field protected final blacklist updateContent:Ljava/io/File;

.field protected final blacklist updateDir:Ljava/io/File;

.field protected final blacklist updateVersion:Ljava/io/File;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAltContent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentContent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;)[B
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentVersion(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRequiredHashFromIntent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetVersionFromIntent(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mverifyPreviousHash(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCurrentHash([B)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 57
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    return-void
.end method

.method private blacklist getAltContent(Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p0

    .line 138
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 140
    :try_start_7
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 142
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return-object p2

    :catchall_18
    move-exception p0

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 143
    throw p0
.end method

.method private blacklist getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 2

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 105
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required content path, ignoring."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getCurrentContent()[B
    .registers 2

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 150
    :catch_b
    const-string p0, "ConfigUpdateInstallReceiver"

    const-string v0, "Failed to read current content, assuming first update!"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getCurrentHash([B)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 157
    const-string p0, "0"

    return-object p0

    .line 160
    :cond_5
    :try_start_5
    const-string v0, "SHA512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 162
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 164
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private blacklist getCurrentVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    .line 131
    :catch_13
    const-string p0, "ConfigUpdateInstallReceiver"

    const-string v0, "Couldn\'t find current metadata, assuming first update"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 119
    const-string p0, "REQUIRED_HASH"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required previous hash, ignoring."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getVersionFromIntent(Landroid/content/Intent;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 111
    const-string p0, "VERSION"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 113
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing required version number, ignoring."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 174
    const-string p0, "NONE"

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 178
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected blacklist install(Ljava/io/InputStream;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    int-to-long v2, p2

    .line 223
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 222
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 63
    new-instance v0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected blacklist postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 0
    return-void
.end method

.method protected blacklist verifyVersion(II)Z
    .registers 3

    .line 0
    if-ge p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 194
    :goto_e
    iget-object v2, p0, Lcom/android/internal/telephony/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_23

    .line 195
    invoke-virtual {v1, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_e

    :catchall_20
    move-exception p0

    move-object p1, v0

    goto :goto_8a

    .line 200
    :cond_23
    const-string p0, "journal"

    const-string v1, ""

    invoke-static {p0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_20

    .line 202
    :try_start_2b
    invoke-virtual {p0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 204
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_69

    .line 205
    :try_start_33
    invoke-static {p3, p1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 207
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/FileDescriptor;->sync()V

    .line 209
    invoke-virtual {p0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_65

    if-eqz p3, :cond_4a

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 216
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 210
    :cond_4a
    :try_start_4a
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to atomically rename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_8a

    :catchall_69
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    goto :goto_8a

    .line 190
    :cond_6f
    :try_start_6f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8a
    .catchall {:try_start_6f .. :try_end_8a} :catchall_20

    :goto_8a
    if-eqz v0, :cond_8f

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 216
    :cond_8f
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 217
    throw p0
.end method
