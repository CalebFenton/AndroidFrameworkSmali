.class public final Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$ProgressListener;,
        Landroid/os/FileUtils$NoImagePreloadHolder;,
        Landroid/os/FileUtils$MemoryPipe;
    }
.end annotation


# static fields
.field private static final greylist-max-o COPY_CHECKPOINT_BYTES:J = 0x80000L

.field public static final greylist-max-o S_IRGRP:I = 0x20

.field public static final greylist-max-o S_IROTH:I = 0x4

.field public static final greylist-max-o S_IRUSR:I = 0x100

.field public static final greylist-max-o S_IRWXG:I = 0x38

.field public static final greylist-max-o S_IRWXO:I = 0x7

.field public static final greylist-max-o S_IRWXU:I = 0x1c0

.field public static final greylist-max-o S_IWGRP:I = 0x10

.field public static final greylist-max-o S_IWOTH:I = 0x2

.field public static final greylist-max-o S_IWUSR:I = 0x80

.field public static final greylist-max-o S_IXGRP:I = 0x8

.field public static final greylist-max-o S_IXOTH:I = 0x1

.field public static final greylist-max-o S_IXUSR:I = 0x40

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileUtils"

.field private static blacklist sEnableCopyOptimizations:Z

.field private static volatile blacklist sMediaProviderAppId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    .line 132
    const/4 v0, -0x1

    sput v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    .line 137
    invoke-static {}, Landroid/os/FileUtils;->shouldEnableCopyOptimizations()Z

    move-result v0

    sput-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    .line 138
    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method private static greylist-max-o buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    .line 1336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1337
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1339
    :cond_c
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist buildNonUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 1247
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1263
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1264
    .local v0, "lastDot":I
    if-ltz v0, :cond_14

    .line 1265
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "ext":Ljava/lang/String;
    goto :goto_16

    .line 1268
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_14
    move-object v1, p1

    .line 1269
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1272
    .restart local v2    # "ext":Ljava/lang/String;
    :goto_16
    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1241
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1213
    invoke-static {p0, p1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1216
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1217
    .local v1, "n":I
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1218
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_34

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move v1, v2

    goto :goto_5

    .line 1219
    :cond_34
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v3, "Failed to create unique file"

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1224
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_3c
    return-object v0
.end method

.method public static greylist-max-o buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1084
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_47

    .line 1087
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1088
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1089
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1090
    .local v2, "c":C
    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1091
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1093
    :cond_35
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1088
    .end local v2    # "c":C
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1096
    .end local v1    # "i":I
    :cond_3d
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1085
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_47
    :goto_47
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static greylist-max-o buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 1137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_47

    .line 1140
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1141
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1142
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1143
    .local v2, "c":C
    invoke-static {v2}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1146
    :cond_35
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1141
    .end local v2    # "c":C
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1151
    .end local v1    # "i":I
    :cond_3d
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1138
    .end local v0    # "res":Ljava/lang/StringBuilder;
    :cond_47
    :goto_47
    const-string v0, "(invalid)"

    return-object v0
.end method

.method public static greylist-max-o bytesToFile(Ljava/lang/String;[B)V
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 808
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 809
    .local v0, "oldMask":I
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_26

    .line 810
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_11
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 811
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_26

    .line 812
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 813
    nop

    .line 814
    .end local v0    # "oldMask":I
    goto :goto_36

    .line 809
    .restart local v0    # "oldMask":I
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v3

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldMask":I
    .end local p0    # "filename":Ljava/lang/String;
    .end local p1    # "content":[B
    :goto_25
    throw v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 812
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "oldMask":I
    .restart local p0    # "filename":Ljava/lang/String;
    .restart local p1    # "content":[B
    :catchall_26
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 813
    throw v1

    .line 815
    .end local v0    # "oldMask":I
    :cond_2b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_30
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 817
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 819
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_36
    return-void

    .line 815
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1
.end method

.method public static greylist-max-r checksumCrc32(Ljava/io/File;)J
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 847
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 848
    .local v0, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v1, 0x0

    .line 851
    .local v1, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_6
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v1, v2

    .line 852
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 853
    .local v2, "buf":[B
    :goto_15
    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1c

    goto :goto_15

    .line 856
    :cond_1c
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    .line 858
    nop

    .line 860
    :try_start_21
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 862
    goto :goto_26

    .line 861
    :catch_25
    move-exception v5

    .line 856
    :goto_26
    return-wide v3

    .line 858
    .end local v2    # "buf":[B
    :catchall_27
    move-exception v2

    if-eqz v1, :cond_2f

    .line 860
    :try_start_2a
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 862
    goto :goto_2f

    .line 861
    :catch_2e
    move-exception v3

    .line 864
    :cond_2f
    :goto_2f
    throw v2
.end method

.method public static whitelist closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1533
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1534
    return-void
.end method

.method public static whitelist closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1518
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1519
    return-void
.end method

.method public static greylist-max-o contains(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 1006
    if-eqz p0, :cond_12

    if-nez p1, :cond_5

    goto :goto_12

    .line 1007
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1006
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1021
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1022
    const/4 v0, 0x1

    return v0

    .line 1024
    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1027
    :cond_21
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/io/File;)Z
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 986
    .local p0, "dirs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 987
    .local v1, "dir":Ljava/io/File;
    invoke-static {v1, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 988
    const/4 v0, 0x1

    return v0

    .line 990
    .end local v1    # "dir":Ljava/io/File;
    :cond_18
    goto :goto_4

    .line 991
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o contains([Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .param p0, "dirs"    # [Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .line 976
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 977
    .local v3, "dir":Ljava/io/File;
    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 978
    const/4 v0, 0x1

    return v0

    .line 976
    .end local v3    # "dir":Ljava/io/File;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 981
    :cond_12
    return v1
.end method

.method public static blacklist convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 1660
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1661
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/FileUtils;->getMediaProviderAppId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    .line 1664
    return-object v3

    .line 1667
    :cond_14
    :try_start_14
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_2e

    .line 1668
    .local v1, "dupFd":Landroid/os/ParcelFileDescriptor;
    :try_start_18
    invoke-static {v0, v1}, Landroid/provider/MediaStore;->getOriginalMediaFormatFileDescriptor(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_22

    .line 1669
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2e

    .line 1668
    :cond_21
    return-object v2

    .line 1667
    :catchall_22
    move-exception v2

    if-eqz v1, :cond_2d

    :try_start_25
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v4

    :try_start_2a
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "context":Landroid/content/Context;
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_2d
    :goto_2d
    throw v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 1669
    .end local v1    # "dupFd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :catch_2e
    move-exception v1

    .line 1671
    .local v1, "e":Ljava/lang/Exception;
    return-object v3
.end method

.method public static greylist-max-o copy(Ljava/io/File;Ljava/io/File;)J
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 9
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f

    .line 371
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-static {v0, v1, p2, p3, p4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    .line 372
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1f

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 371
    return-wide v2

    .line 369
    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "from":Ljava/io/File;
    .end local p1    # "to":Ljava/io/File;
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/os/FileUtils$ProgressListener;
    :goto_1e
    throw v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "from":Ljava/io/File;
    .restart local p1    # "to":Ljava/io/File;
    .restart local p2    # "signal":Landroid/os/CancellationSignal;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "listener":Landroid/os/FileUtils$ProgressListener;
    :catchall_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw v1
.end method

.method public static whitelist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    .registers 4
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 12
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    sget-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    if-eqz v0, :cond_6b

    .line 460
    :try_start_4
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    move-object v1, v0

    .line 461
    .local v1, "st_in":Landroid/system/StructStat;
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    move-object v2, v0

    .line 462
    .local v2, "st_out":Landroid/system/StructStat;
    iget v0, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_1c} :catch_65

    if-eqz v0, :cond_38

    .line 464
    :try_start_1e
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v3
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_1e .. :try_end_22} :catch_23

    return-wide v3

    .line 465
    :catch_23
    move-exception v0

    .line 466
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_24
    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINVAL:I

    if-eq v3, v4, :cond_33

    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOSYS:I

    if-ne v3, v4, :cond_31

    goto :goto_33

    .line 474
    :cond_31
    nop

    .end local p0    # "in":Ljava/io/FileDescriptor;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "count":J
    .end local p4    # "signal":Landroid/os/CancellationSignal;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "listener":Landroid/os/FileUtils$ProgressListener;
    throw v0

    .line 471
    .restart local p0    # "in":Ljava/io/FileDescriptor;
    .restart local p1    # "out":Ljava/io/FileDescriptor;
    .restart local p2    # "count":J
    .restart local p4    # "signal":Landroid/os/CancellationSignal;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "listener":Landroid/os/FileUtils$ProgressListener;
    :cond_33
    :goto_33
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v3

    return-wide v3

    .line 476
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_38
    iget v0, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v0

    if-nez v0, :cond_60

    iget v0, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_60

    .line 478
    :cond_49
    iget v0, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0

    if-nez v0, :cond_5b

    iget v0, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_5b

    .line 483
    .end local v1    # "st_in":Landroid/system/StructStat;
    .end local v2    # "st_out":Landroid/system/StructStat;
    :cond_5a
    goto :goto_6b

    .line 479
    .restart local v1    # "st_in":Landroid/system/StructStat;
    .restart local v2    # "st_out":Landroid/system/StructStat;
    :cond_5b
    :goto_5b
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSpliceSocket(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v3

    return-wide v3

    .line 477
    :cond_60
    :goto_60
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v3
    :try_end_64
    .catch Landroid/system/ErrnoException; {:try_start_24 .. :try_end_64} :catch_65

    return-wide v3

    .line 481
    .end local v1    # "st_in":Landroid/system/StructStat;
    .end local v2    # "st_out":Landroid/system/StructStat;
    :catch_65
    move-exception v0

    .line 482
    .restart local v0    # "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 487
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_6b
    :goto_6b
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 12
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    const-wide v2, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "in":Ljava/io/FileDescriptor;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "signal":Landroid/os/CancellationSignal;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/os/FileUtils$ProgressListener;
    .local v0, "in":Ljava/io/FileDescriptor;
    .local v1, "out":Ljava/io/FileDescriptor;
    .local v4, "signal":Landroid/os/CancellationSignal;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "listener":Landroid/os/FileUtils$ProgressListener;
    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    if-eqz v0, :cond_1f

    .line 402
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1f

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1f

    .line 403
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0

    .line 409
    :cond_1f
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 294
    const/4 v0, 0x1

    return v0

    .line 295
    :catch_5
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v0, "in":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 308
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 309
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 306
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_c
    move-exception v1

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v1
.end method

.method public static blacklist copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 26
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 626
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const-wide/16 v2, 0x0

    .line 627
    .local v2, "progress":J
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v4, v2

    move-wide/from16 v2, p2

    .line 630
    .end local p2    # "count":J
    .local v2, "count":J
    .local v4, "progress":J
    .local v6, "checkpoint":J
    :cond_c
    :goto_c
    const/4 v8, 0x0

    const-wide/32 v9, 0x80000

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-static {v14, v13, v8, v11, v12}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v11

    move-wide v15, v11

    .local v15, "t":J
    const-wide/16 v17, 0x0

    cmp-long v8, v11, v17

    if-eqz v8, :cond_3f

    .line 631
    add-long/2addr v4, v15

    .line 632
    add-long/2addr v6, v15

    .line 633
    sub-long/2addr v2, v15

    .line 635
    cmp-long v8, v6, v9

    if-ltz v8, :cond_c

    .line 636
    if-eqz p4, :cond_2f

    .line 637
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 639
    :cond_2f
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    .line 640
    move-wide v8, v4

    .line 641
    .local v8, "progressSnapshot":J
    new-instance v10, Landroid/os/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda0;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 645
    .end local v8    # "progressSnapshot":J
    :cond_3c
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 648
    :cond_3f
    if-eqz v0, :cond_4c

    if-eqz v1, :cond_4c

    .line 649
    move-wide v8, v4

    .line 650
    .restart local v8    # "progressSnapshot":J
    new-instance v10, Landroid/os/FileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda1;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 654
    .end local v8    # "progressSnapshot":J
    :cond_4c
    return-wide v4
.end method

.method public static blacklist copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 24
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 500
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    const-wide/16 v2, 0x0

    .line 501
    .local v2, "progress":J
    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v4, v2

    move-wide/from16 v2, p2

    .line 504
    .end local p2    # "count":J
    .local v2, "count":J
    .local v4, "progress":J
    .local v6, "checkpoint":J
    :cond_c
    :goto_c
    const-wide/32 v8, 0x80000

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    sget v10, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v11, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v16, v10, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-static/range {v10 .. v16}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v13

    move-wide v10, v13

    .local v10, "t":J
    const-wide/16 v15, 0x0

    cmp-long v12, v13, v15

    if-eqz v12, :cond_46

    .line 506
    add-long/2addr v4, v10

    .line 507
    add-long/2addr v6, v10

    .line 508
    sub-long/2addr v2, v10

    .line 510
    cmp-long v8, v6, v8

    if-ltz v8, :cond_c

    .line 511
    if-eqz p4, :cond_36

    .line 512
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 514
    :cond_36
    if-eqz v0, :cond_43

    if-eqz v1, :cond_43

    .line 515
    move-wide v8, v4

    .line 516
    .local v8, "progressSnapshot":J
    new-instance v12, Landroid/os/FileUtils$$ExternalSyntheticLambda4;

    invoke-direct {v12, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda4;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 520
    .end local v8    # "progressSnapshot":J
    :cond_43
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 523
    :cond_46
    if-eqz v0, :cond_53

    if-eqz v1, :cond_53

    .line 524
    move-wide v8, v4

    .line 525
    .restart local v8    # "progressSnapshot":J
    new-instance v12, Landroid/os/FileUtils$$ExternalSyntheticLambda5;

    invoke-direct {v12, v1, v8, v9}, Landroid/os/FileUtils$$ExternalSyntheticLambda5;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 529
    .end local v8    # "progressSnapshot":J
    :cond_53
    return-wide v4
.end method

.method public static blacklist copyInternalSpliceSocket(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 41
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 540
    move-wide/from16 v0, p2

    const-wide/16 v4, 0x0

    .line 541
    .local v4, "progress":J
    const-wide/16 v6, 0x0

    .line 542
    .local v6, "checkpoint":J
    move-wide/from16 v8, p2

    .line 543
    .local v8, "countToRead":J
    const-wide/16 v10, 0x0

    .line 546
    .local v10, "countInPipe":J
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v12

    .line 548
    .local v12, "pipes":[Ljava/io/FileDescriptor;
    :goto_e
    const-wide/16 v13, 0x0

    cmp-long v15, v8, v13

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-gtz v15, :cond_20

    cmp-long v15, v10, v13

    if-lez v15, :cond_1d

    goto :goto_20

    :cond_1d
    move-wide/from16 v20, v6

    goto :goto_7f

    .line 549
    :cond_20
    :goto_20
    cmp-long v15, v8, v13

    move-wide/from16 v18, v13

    const-string v13, ", read:"

    const-string v14, ", copied:"

    move-wide/from16 v20, v6

    .end local v6    # "checkpoint":J
    .local v20, "checkpoint":J
    const-string v6, "FileUtils"

    const-wide/32 v2, 0x80000

    if-lez v15, :cond_e3

    .line 550
    aget-object v24, v12, v17

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    sget v7, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v15, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v28, v7, v15

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, p0

    invoke-static/range {v22 .. v28}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v23

    .line 552
    .local v23, "t":J
    cmp-long v7, v23, v18

    const-string v15, ", in pipe:"

    if-gez v7, :cond_a0

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "splice error, fdIn --> pipe, copy size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v13, v0, v8

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    nop

    .line 605
    .end local v23    # "t":J
    :goto_7f
    if-eqz p5, :cond_91

    if-eqz p6, :cond_91

    .line 606
    move-wide v2, v4

    .line 607
    .local v2, "progressSnapshot":J
    new-instance v6, Landroid/os/FileUtils$$ExternalSyntheticLambda7;

    move-object/from16 v7, p6

    invoke-direct {v6, v7, v2, v3}, Landroid/os/FileUtils$$ExternalSyntheticLambda7;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    move-object/from16 v13, p5

    invoke-interface {v13, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_95

    .line 605
    .end local v2    # "progressSnapshot":J
    :cond_91
    move-object/from16 v13, p5

    move-object/from16 v7, p6

    .line 611
    :goto_95
    aget-object v2, v12, v16

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 612
    aget-object v2, v12, v17

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 613
    return-wide v4

    .line 559
    .restart local v23    # "t":J
    :cond_a0
    move-object/from16 v7, p6

    cmp-long v22, v23, v18

    if-nez v22, :cond_dc

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached the end of the input file. The size to be copied exceeds the actual size, copy size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v27, v8

    .end local v8    # "countToRead":J
    .local v27, "countToRead":J
    sub-long v8, v0, v27

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-wide/16 v2, 0x0

    move-wide v8, v2

    .end local v27    # "countToRead":J
    .local v2, "countToRead":J
    goto :goto_e7

    .line 567
    .end local v2    # "countToRead":J
    .restart local v8    # "countToRead":J
    :cond_dc
    move-wide/from16 v27, v8

    .end local v8    # "countToRead":J
    .restart local v27    # "countToRead":J
    add-long v10, v10, v23

    .line 568
    sub-long v8, v27, v23

    .end local v27    # "countToRead":J
    .restart local v8    # "countToRead":J
    goto :goto_e7

    .line 549
    .end local v23    # "t":J
    :cond_e3
    move-object/from16 v7, p6

    move-wide/from16 v27, v8

    .line 572
    :goto_e7
    cmp-long v2, v10, v18

    if-lez v2, :cond_157

    .line 573
    aget-object v27, v12, v16

    const-wide/32 v2, 0x80000

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v31

    sget v2, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v3, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v33, v2, v3

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v29, p1

    invoke-static/range {v27 .. v33}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v2

    .line 577
    .local v2, "t":J
    cmp-long v15, v2, v18

    if-lez v15, :cond_10d

    .line 586
    add-long/2addr v4, v2

    .line 587
    add-long v13, v20, v2

    .line 588
    .end local v20    # "checkpoint":J
    .local v13, "checkpoint":J
    sub-long/2addr v10, v2

    goto :goto_159

    .line 578
    .end local v13    # "checkpoint":J
    .restart local v20    # "checkpoint":J
    :cond_10d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v2

    .end local v2    # "t":J
    .local v18, "t":J
    const-string/jumbo v2, "splice error, pipe --> fdOut, copy size:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v13, v0, v8

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", in pipe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    aget-object v2, v12, v16

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 583
    aget-object v2, v12, v17

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 584
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "splice, pipe --> fdOut"

    sget v6, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v2, v3, v6}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 572
    .end local v18    # "t":J
    :cond_157
    move-wide/from16 v13, v20

    .line 592
    .end local v20    # "checkpoint":J
    .restart local v13    # "checkpoint":J
    :goto_159
    const-wide/32 v25, 0x80000

    cmp-long v2, v13, v25

    if-ltz v2, :cond_17c

    .line 593
    if-eqz p4, :cond_165

    .line 594
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 596
    :cond_165
    move-object/from16 v2, p5

    if-eqz v2, :cond_175

    if-eqz v7, :cond_175

    .line 597
    move-wide v15, v4

    .line 598
    .local v15, "progressSnapshot":J
    new-instance v3, Landroid/os/FileUtils$$ExternalSyntheticLambda6;

    move-wide v0, v15

    .end local v15    # "progressSnapshot":J
    .local v0, "progressSnapshot":J
    invoke-direct {v3, v7, v0, v1}, Landroid/os/FileUtils$$ExternalSyntheticLambda6;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 602
    .end local v0    # "progressSnapshot":J
    :cond_175
    const-wide/16 v0, 0x0

    move-wide v6, v0

    move-wide/from16 v0, p2

    .end local v13    # "checkpoint":J
    .local v0, "checkpoint":J
    goto/16 :goto_e

    .line 592
    .end local v0    # "checkpoint":J
    .restart local v13    # "checkpoint":J
    :cond_17c
    move-object/from16 v2, p5

    move-wide/from16 v0, p2

    move-wide v6, v13

    goto/16 :goto_e
.end method

.method public static blacklist copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 9
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "count"    # J
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    .line 672
    new-instance v0, Lcom/android/internal/util/SizedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p4, p5, p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0

    .line 675
    :cond_1d
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, v1, p4, p5, p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .registers 13
    .param p0, "in"    # Ljava/io/FileDescriptor;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v4, p3

    move-wide v2, p4

    .end local p0    # "in":Ljava/io/FileDescriptor;
    .end local p1    # "out":Ljava/io/FileDescriptor;
    .end local p2    # "listener":Landroid/os/FileUtils$ProgressListener;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    .end local p4    # "count":J
    .local v0, "in":Ljava/io/FileDescriptor;
    .local v1, "out":Ljava/io/FileDescriptor;
    .local v2, "count":J
    .local v4, "signal":Landroid/os/CancellationSignal;
    .local v6, "listener":Landroid/os/FileUtils$ProgressListener;
    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 14
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    const-wide/16 v0, 0x0

    .line 686
    .local v0, "progress":J
    const-wide/16 v2, 0x0

    .line 687
    .local v2, "checkpoint":J
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 690
    .local v4, "buffer":[B
    :cond_8
    :goto_8
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "t":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_34

    .line 691
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 693
    int-to-long v7, v6

    add-long/2addr v0, v7

    .line 694
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 696
    const-wide/32 v7, 0x80000

    cmp-long v5, v2, v7

    if-ltz v5, :cond_8

    .line 697
    if-eqz p2, :cond_24

    .line 698
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 700
    :cond_24
    if-eqz p3, :cond_31

    if-eqz p4, :cond_31

    .line 701
    move-wide v7, v0

    .line 702
    .local v7, "progressSnapshot":J
    new-instance v5, Landroid/os/FileUtils$$ExternalSyntheticLambda2;

    invoke-direct {v5, p4, v7, v8}, Landroid/os/FileUtils$$ExternalSyntheticLambda2;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 706
    .end local v7    # "progressSnapshot":J
    :cond_31
    const-wide/16 v2, 0x0

    goto :goto_8

    .line 709
    :cond_34
    if-eqz p3, :cond_41

    if-eqz p4, :cond_41

    .line 710
    move-wide v7, v0

    .line 711
    .restart local v7    # "progressSnapshot":J
    new-instance v5, Landroid/os/FileUtils$$ExternalSyntheticLambda3;

    invoke-direct {v5, p4, v7, v8}, Landroid/os/FileUtils$$ExternalSyntheticLambda3;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 715
    .end local v7    # "progressSnapshot":J
    :cond_41
    return-wide v0
.end method

.method public static greylist-max-o copyPermissions(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 246
    .local v0, "stat":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/system/StructStat;->st_uid:I

    iget v3, v0, Landroid/system/StructStat;->st_gid:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1c} :catch_1e

    .line 250
    .end local v0    # "stat":Landroid/system/StructStat;
    nop

    .line 251
    return-void

    .line 248
    :catch_1e
    move-exception v0

    .line 249
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static greylist copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 320
    const/4 v0, 0x1

    return v0

    .line 321
    :catch_5
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 335
    :cond_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 336
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_e
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 337
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 338
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 339
    .end local v0    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 335
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1
.end method

.method public static greylist-max-o createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "baseDir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 1374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1376
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public static blacklist createDir(Ljava/io/File;)Z
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1387
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1388
    const/4 v0, 0x1

    return v0

    .line 1391
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1392
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    .line 1395
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-r deleteContents(Ljava/io/File;)Z
    .registers 8
    .param p0, "dir"    # Ljava/io/File;

    .line 1042
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1043
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    .line 1044
    .local v1, "success":Z
    if-eqz v0, :cond_3a

    .line 1045
    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 1046
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1047
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1049
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_37

    .line 1050
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FileUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v1, 0x0

    .line 1045
    .end local v4    # "file":Ljava/io/File;
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1055
    :cond_3a
    return v1
.end method

.method public static greylist-max-o deleteContentsAndDir(Ljava/io/File;)Z
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1032
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1033
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 1035
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-r deleteOlderFiles(Ljava/io/File;IJ)Z
    .registers 12
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minCount"    # I
    .param p2, "minAgeMs"    # J

    .line 933
    if-ltz p1, :cond_4f

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4f

    .line 937
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 938
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_10

    const/4 v1, 0x0

    return v1

    .line 941
    :cond_10
    new-instance v1, Landroid/os/FileUtils$1;

    invoke-direct {v1}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 949
    const/4 v1, 0x0

    .line 950
    .local v1, "deleted":Z
    move v2, p1

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_4e

    .line 951
    aget-object v3, v0, v2

    .line 954
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 955
    .local v4, "age":J
    cmp-long v6, v4, p2

    if-lez v6, :cond_4b

    .line 956
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 957
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FileUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v1, 0x1

    .line 950
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "age":J
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 962
    .end local v2    # "i":I
    :cond_4e
    return v1

    .line 934
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "deleted":Z
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraints must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist digest(Ljava/io/File;Ljava/lang/String;)[B
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 878
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 879
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/FileUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 880
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 879
    return-object v1

    .line 878
    :catchall_d
    move-exception v1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1
.end method

.method public static blacklist digest(Ljava/io/FileDescriptor;Ljava/lang/String;)[B
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p1}, Landroid/os/FileUtils;->digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist digest(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 895
    invoke-static {p0, p1}, Landroid/os/FileUtils;->digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 913
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 914
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 915
    .local v1, "digestStream":Ljava/security/DigestInputStream;
    const/16 v2, 0x2000

    :try_start_b
    new-array v2, v2, [B

    .line 916
    .local v2, "buffer":[B
    :goto_d
    invoke-virtual {v1, v2}, Ljava/security/DigestInputStream;->read([B)I

    move-result v3
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1d

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    goto :goto_d

    .line 918
    .end local v2    # "buffer":[B
    :cond_15
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    .line 919
    .end local v1    # "digestStream":Ljava/security/DigestInputStream;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 914
    .restart local v1    # "digestStream":Ljava/security/DigestInputStream;
    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v2
.end method

.method private static blacklist getMediaProviderAppId(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1677
    sget v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1678
    sget v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return v0

    .line 1681
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1682
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "media"

    const/high16 v4, 0x1c0000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 1686
    .local v2, "provider":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1c

    .line 1687
    return v1

    .line 1690
    :cond_1c
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    sput v1, Landroid/os/FileUtils;->sMediaProviderAppId:I

    .line 1691
    sget v1, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return v1
.end method

.method public static greylist-max-o getUid(Ljava/lang/String;)I
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 262
    :catch_7
    move-exception v0

    .line 263
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, -0x1

    return v1
.end method

.method public static greylist isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .line 728
    sget-object v0, Landroid/os/FileUtils$NoImagePreloadHolder;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isValidExtFilename(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1074
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o isValidExtFilenameChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 1059
    sparse-switch p0, :sswitch_data_8

    .line 1064
    const/4 v0, 0x1

    return v0

    .line 1062
    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x2f -> :sswitch_5
    .end sparse-switch
.end method

.method public static greylist-max-o isValidFatFilename(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1127
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o isValidFatFilenameChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 1101
    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_8

    .line 1102
    return v0

    .line 1104
    :cond_8
    sparse-switch p0, :sswitch_data_e

    .line 1117
    const/4 v0, 0x1

    return v0

    .line 1115
    :sswitch_d
    return v0

    :sswitch_data_e
    .sparse-switch
        0x22 -> :sswitch_d
        0x2a -> :sswitch_d
        0x2f -> :sswitch_d
        0x3a -> :sswitch_d
        0x3c -> :sswitch_d
        0x3e -> :sswitch_d
        0x3f -> :sswitch_d
        0x5c -> :sswitch_d
        0x7c -> :sswitch_d
        0x7f -> :sswitch_d
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$copyInternalSendfile$4(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 642
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 643
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSendfile$5(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 651
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 652
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSplice$0(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 517
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 518
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSplice$1(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 526
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 527
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSpliceSocket$2(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 599
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 600
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSpliceSocket$3(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 608
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 609
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalUserspace$6(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 703
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 704
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalUserspace$7(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3
    .param p0, "listener"    # Landroid/os/FileUtils$ProgressListener;
    .param p1, "progressSnapshot"    # J

    .line 712
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 713
    return-void
.end method

.method public static greylist-max-o listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1351
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 1352
    :cond_b
    sget-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 1351
    :goto_d
    return-object v0
.end method

.method public static greylist-max-o listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1357
    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_d

    .line 1358
    :cond_b
    sget-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 1357
    :goto_d
    return-object v0
.end method

.method public static greylist-max-o listOrEmpty(Ljava/io/File;)[Ljava/lang/String;
    .registers 2
    .param p0, "dir"    # Ljava/io/File;

    .line 1345
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1346
    :cond_b
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 1345
    :goto_d
    return-object v0
.end method

.method public static greylist-max-o newFileOrNull(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 1363
    if-eqz p0, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist parseSize(Ljava/lang/String;)J
    .registers 9
    .param p0, "fmtSize"    # Ljava/lang/String;

    .line 1475
    const-wide/high16 v0, -0x8000000000000000L

    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Ljava/lang/String;->isBlank()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5e

    .line 1479
    :cond_b
    const/4 v2, 0x1

    .line 1480
    .local v2, "sign":I
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1481
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1482
    .local v4, "first":C
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1d

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_25

    .line 1483
    :cond_1d
    if-ne v4, v5, :cond_20

    .line 1484
    const/4 v2, -0x1

    .line 1487
    :cond_20
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1490
    :cond_25
    const/4 v5, 0x0

    .line 1492
    .local v5, "index":I
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_39

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1493
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1497
    :cond_39
    if-eqz v5, :cond_5d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_42

    goto :goto_5d

    .line 1501
    :cond_42
    int-to-long v0, v2

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v0, v6

    .line 1502
    .local v0, "value":J
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1504
    .local v3, "unit":Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/os/FileUtils;->toBytes(JLjava/lang/String;)J

    move-result-wide v6

    return-wide v6

    .line 1498
    .end local v0    # "value":J
    .end local v3    # "unit":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-wide v0

    .line 1476
    .end local v2    # "sign":I
    .end local v4    # "first":C
    .end local v5    # "index":I
    :cond_5e
    :goto_5e
    return-wide v0
.end method

.method public static greylist readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 746
    .local v0, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 748
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_ff

    .line 749
    .local v2, "size":J
    const-string v4, ""

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-gtz p1, :cond_a9

    cmp-long v8, v2, v5

    if-lez v8, :cond_1d

    if-nez p1, :cond_1d

    goto/16 :goto_a9

    .line 757
    :cond_1d
    if-gez p1, :cond_89

    .line 759
    const/4 v5, 0x0

    .line 760
    .local v5, "rolled":Z
    const/4 v6, 0x0

    .line 761
    .local v6, "last":[B
    const/4 v8, 0x0

    .line 763
    .local v8, "data":[B
    :cond_22
    if-eqz v6, :cond_25

    const/4 v5, 0x1

    .line 764
    :cond_25
    move-object v9, v6

    .local v9, "tmp":[B
    move-object v6, v8

    move-object v8, v9

    .line 765
    if-nez v8, :cond_2e

    neg-int v10, p1

    :try_start_2b
    new-array v10, v10, [B

    move-object v8, v10

    .line 766
    :cond_2e
    invoke-virtual {v1, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    .line 767
    .end local v9    # "tmp":[B
    .local v10, "len":I
    array-length v9, v8
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_ff

    if-eq v10, v9, :cond_22

    .line 769
    if-nez v6, :cond_40

    if-gtz v10, :cond_40

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 769
    return-object v4

    .line 770
    :cond_40
    if-nez v6, :cond_4e

    :try_start_42
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8, v7, v10}, Ljava/lang/String;-><init>([BII)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 770
    return-object v4

    .line 771
    :cond_4e
    if-lez v10, :cond_5b

    .line 772
    const/4 v5, 0x1

    .line 773
    :try_start_51
    array-length v4, v6

    sub-int/2addr v4, v10

    invoke-static {v6, v10, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    array-length v4, v6

    sub-int/2addr v4, v10

    invoke-static {v8, v7, v6, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    :cond_5b
    if-eqz p2, :cond_7d

    if-nez v5, :cond_60

    goto :goto_7d

    .line 777
    :cond_60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 777
    return-object v4

    .line 776
    :cond_7d
    :goto_7d
    :try_start_7d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 776
    return-object v4

    .line 779
    .end local v5    # "rolled":Z
    .end local v6    # "last":[B
    .end local v8    # "data":[B
    .end local v10    # "len":I
    :cond_89
    :try_start_89
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 781
    .local v4, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 783
    .local v5, "data":[B
    :cond_92
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 784
    .local v6, "len":I
    if-lez v6, :cond_9b

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 785
    :cond_9b
    array-length v8, v5

    if-eq v6, v8, :cond_92

    .line 786
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_a2
    .catchall {:try_start_89 .. :try_end_a2} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 786
    return-object v7

    .line 750
    .end local v4    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "data":[B
    .end local v6    # "len":I
    :cond_a9
    :goto_a9
    cmp-long v5, v2, v5

    if-lez v5, :cond_b5

    if-eqz p1, :cond_b4

    int-to-long v5, p1

    cmp-long v5, v2, v5

    if-gez v5, :cond_b5

    :cond_b4
    long-to-int p1, v2

    .line 751
    :cond_b5
    add-int/lit8 v5, p1, 0x1

    :try_start_b7
    new-array v5, v5, [B

    .line 752
    .restart local v5    # "data":[B
    invoke-virtual {v1, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_ff

    .line 753
    .local v6, "length":I
    if-gtz v6, :cond_c6

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 753
    return-object v4

    .line 754
    :cond_c6
    if-gt v6, p1, :cond_d4

    :try_start_c8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v7, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 754
    return-object v4

    .line 755
    :cond_d4
    if-nez p2, :cond_e2

    :try_start_d6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v7, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 755
    return-object v4

    .line 756
    :cond_e2
    :try_start_e2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v7, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_f8
    .catchall {:try_start_e2 .. :try_end_f8} :catchall_ff

    .line 789
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 756
    return-object v4

    .line 789
    .end local v2    # "size":J
    .end local v5    # "data":[B
    .end local v6    # "length":I
    :catchall_ff
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 790
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 791
    throw v2
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .line 1201
    const/4 v0, 0x0

    if-eqz p2, :cond_25

    if-eqz p0, :cond_25

    if-nez p1, :cond_8

    goto :goto_25

    .line 1202
    :cond_8
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1203
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1204
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "splice":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 1207
    .end local v0    # "splice":Ljava/lang/String;
    :cond_24
    return-object v0

    .line 1201
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .line 1178
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1179
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1180
    .local v1, "result":Ljava/io/File;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "paths"    # [Ljava/lang/String;

    .line 1185
    if-nez p2, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 1186
    :cond_4
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 1187
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 1188
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1190
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static greylist-max-o roundStorageSize(J)J
    .registers 9
    .param p0, "size"    # J

    .line 1414
    const-wide/16 v0, 0x1

    .line 1415
    .local v0, "val":J
    const-wide/16 v2, 0x1

    .line 1416
    .local v2, "pow":J
    :cond_4
    :goto_4
    mul-long v4, v0, v2

    cmp-long v4, v4, p0

    if-gez v4, :cond_18

    .line 1417
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    .line 1418
    const-wide/16 v4, 0x200

    cmp-long v4, v0, v4

    if-lez v4, :cond_4

    .line 1419
    const-wide/16 v0, 0x1

    .line 1420
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_4

    .line 1424
    :cond_18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    mul-long v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Rounded bytes from %d to %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    mul-long v4, v0, v2

    return-wide v4
.end method

.method public static greylist setPermissions(Ljava/io/File;III)I
    .registers 5
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r setPermissions(Ljava/io/FileDescriptor;III)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 217
    const-string v0, "FileUtils"

    :try_start_2
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_5} :catch_2a

    .line 221
    nop

    .line 223
    if-gez p2, :cond_a

    if-ltz p3, :cond_e

    .line 225
    :cond_a
    :try_start_a
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_10

    .line 229
    nop

    .line 232
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 226
    :catch_10
    move-exception v1

    .line 227
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v0, v1, Landroid/system/ErrnoException;->errno:I

    return v0

    .line 218
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_2a
    move-exception v1

    .line 219
    .restart local v1    # "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget v0, v1, Landroid/system/ErrnoException;->errno:I

    return v0
.end method

.method public static greylist setPermissions(Ljava/lang/String;III)I
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 186
    const-string v0, "): "

    const-string v1, "FileUtils"

    :try_start_4
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_7} :catch_34

    .line 190
    nop

    .line 192
    if-gez p2, :cond_c

    if-ltz p3, :cond_10

    .line 194
    :cond_c
    :try_start_c
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_12

    .line 198
    nop

    .line 201
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 195
    :catch_12
    move-exception v2

    .line 196
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to chown("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v0, v2, Landroid/system/ErrnoException;->errno:I

    return v0

    .line 187
    .end local v2    # "e":Landroid/system/ErrnoException;
    :catch_34
    move-exception v2

    .line 188
    .restart local v2    # "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to chmod("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v0, v2, Landroid/system/ErrnoException;->errno:I

    return v0
.end method

.method private static blacklist shouldEnableCopyOptimizations()Z
    .registers 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist shouldEnableCopyOptimizations$ravenwood()Z
    .registers 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;

    .line 1288
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1289
    move-object v0, p1

    .line 1290
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ext":Ljava/lang/String;
    goto :goto_59

    .line 1295
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "ext":Ljava/lang/String;
    :cond_c
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1296
    .local v0, "lastDot":I
    if-ltz v0, :cond_2c

    .line 1297
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 1300
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1299
    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "mimeTypeFromExt":Ljava/lang/String;
    goto :goto_2f

    .line 1302
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "mimeTypeFromExt":Ljava/lang/String;
    :cond_2c
    move-object v1, p1

    .line 1303
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1304
    .restart local v2    # "ext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1307
    .restart local v3    # "mimeTypeFromExt":Ljava/lang/String;
    :goto_2f
    if-nez v3, :cond_33

    .line 1308
    const-string v3, "application/octet-stream"

    .line 1312
    :cond_33
    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1313
    const/4 v4, 0x0

    .local v4, "extFromMimeType":Ljava/lang/String;
    goto :goto_45

    .line 1315
    .end local v4    # "extFromMimeType":Ljava/lang/String;
    :cond_3d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1318
    .restart local v4    # "extFromMimeType":Ljava/lang/String;
    :goto_45
    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_57

    .line 1322
    :cond_52
    move-object v1, p1

    .line 1323
    move-object v2, v4

    move-object v0, v1

    move-object v1, v2

    goto :goto_59

    .line 1327
    .end local v0    # "lastDot":I
    .end local v3    # "mimeTypeFromExt":Ljava/lang/String;
    .end local v4    # "extFromMimeType":Ljava/lang/String;
    :cond_57
    :goto_57
    move-object v0, v1

    move-object v1, v2

    .end local v2    # "ext":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    .local v1, "ext":Ljava/lang/String;
    :goto_59
    if-nez v1, :cond_5d

    .line 1328
    const-string v1, ""

    .line 1331
    :cond_5d
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-r stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public static greylist stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 832
    return-void
.end method

.method public static greylist sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .line 276
    if-eqz p0, :cond_d

    .line 277
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_d

    .line 280
    :catch_a
    move-exception v0

    .line 282
    const/4 v0, 0x0

    return v0

    .line 279
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist toBytes(JLjava/lang/String;)J
    .registers 5
    .param p0, "value"    # J
    .param p2, "unit"    # Ljava/lang/String;

    .line 1429
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 1431
    const-string v0, "B"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1432
    return-wide p0

    .line 1435
    :cond_d
    const-string v0, "K"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "KB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_9a

    .line 1439
    :cond_1f
    const-string v0, "M"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, "MB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_93

    .line 1443
    :cond_30
    const-string v0, "G"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "GB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_8c

    .line 1447
    :cond_41
    const-string v0, "KI"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "KIB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_85

    .line 1451
    :cond_52
    const-string v0, "MI"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "MIB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_7e

    .line 1455
    :cond_63
    const-string v0, "GI"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "GIB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_77

    .line 1459
    :cond_74
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 1456
    :cond_77
    :goto_77
    sget-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0

    .line 1452
    :cond_7e
    :goto_7e
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0

    .line 1448
    :cond_85
    :goto_85
    sget-object v0, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0

    .line 1444
    :cond_8c
    :goto_8c
    sget-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0

    .line 1440
    :cond_93
    :goto_93
    sget-object v0, Landroid/util/DataUnit;->MEGABYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0

    .line 1436
    :cond_9a
    :goto_9a
    sget-object v0, Landroid/util/DataUnit;->KILOBYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist translateModeAccessToPosix(I)I
    .registers 4
    .param p0, "mode"    # I

    .line 1641
    sget v0, Landroid/system/OsConstants;->F_OK:I

    if-ne p0, v0, :cond_7

    .line 1644
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    return v0

    .line 1645
    :cond_7
    sget v0, Landroid/system/OsConstants;->R_OK:I

    sget v1, Landroid/system/OsConstants;->W_OK:I

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->R_OK:I

    sget v2, Landroid/system/OsConstants;->W_OK:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_17

    .line 1646
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    return v0

    .line 1647
    :cond_17
    sget v0, Landroid/system/OsConstants;->R_OK:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->R_OK:I

    if-ne v0, v1, :cond_21

    .line 1648
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    return v0

    .line 1649
    :cond_21
    sget v0, Landroid/system/OsConstants;->W_OK:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->W_OK:I

    if-ne v0, v1, :cond_2b

    .line 1650
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    return v0

    .line 1652
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist translateModePfdToPosix(I)I
    .registers 5
    .param p0, "mode"    # I

    .line 1617
    const/4 v0, 0x0

    .line 1618
    .local v0, "res":I
    const/high16 v1, 0x30000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_a

    .line 1619
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    goto :goto_1b

    .line 1620
    :cond_a
    const/high16 v1, 0x20000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_13

    .line 1621
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    goto :goto_1b

    .line 1622
    :cond_13
    const/high16 v1, 0x10000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_37

    .line 1623
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1627
    :goto_1b
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_24

    .line 1628
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    .line 1630
    :cond_24
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2d

    .line 1631
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 1633
    :cond_2d
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_36

    .line 1634
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, v1

    .line 1636
    :cond_36
    return v0

    .line 1625
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist translateModePosixToPfd(I)I
    .registers 5
    .param p0, "mode"    # I

    .line 1593
    const/4 v0, 0x0

    .line 1594
    .local v0, "res":I
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    if-ne v1, v2, :cond_b

    .line 1595
    const/high16 v0, 0x30000000

    goto :goto_1e

    .line 1596
    :cond_b
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v1, v2, :cond_15

    .line 1597
    const/high16 v0, 0x20000000

    goto :goto_1e

    .line 1598
    :cond_15
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v1, v2, :cond_3d

    .line 1599
    const/high16 v0, 0x10000000

    .line 1603
    :goto_1e
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    if-ne v1, v2, :cond_28

    .line 1604
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 1606
    :cond_28
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    if-ne v1, v2, :cond_32

    .line 1607
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 1609
    :cond_32
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_APPEND:I

    if-ne v1, v2, :cond_3c

    .line 1610
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1612
    :cond_3c
    return v0

    .line 1601
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist translateModePosixToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "mode"    # I

    .line 1572
    const-string v0, ""

    .line 1573
    .local v0, "res":Ljava/lang/String;
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    if-ne v1, v2, :cond_d

    .line 1574
    const-string/jumbo v0, "rw"

    goto :goto_22

    .line 1575
    :cond_d
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v1, v2, :cond_18

    .line 1576
    const-string/jumbo v0, "w"

    goto :goto_22

    .line 1577
    :cond_18
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v1, v2, :cond_58

    .line 1578
    const-string/jumbo v0, "r"

    .line 1582
    :goto_22
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    if-ne v1, v2, :cond_3d

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1585
    :cond_3d
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_APPEND:I

    if-ne v1, v2, :cond_57

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1588
    :cond_57
    return-object v0

    .line 1580
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist translateModeStringToPosix(Ljava/lang/String;)I
    .registers 5
    .param p0, "mode"    # Ljava/lang/String;

    .line 1539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Bad mode: "

    if-ge v0, v1, :cond_2b

    .line 1540
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_86

    .line 1547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1545
    :sswitch_27
    nop

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1551
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    .line 1552
    .local v0, "res":I
    const-string/jumbo v1, "rw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1553
    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    or-int v0, v1, v2

    goto :goto_57

    .line 1554
    :cond_3c
    const-string/jumbo v1, "w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1555
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    or-int v0, v1, v2

    goto :goto_57

    .line 1556
    :cond_4c
    const-string/jumbo v1, "r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1557
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1561
    :goto_57
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    .line 1562
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 1564
    :cond_63
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_6e

    .line 1565
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, v1

    .line 1567
    :cond_6e
    return v0

    .line 1559
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_86
    .sparse-switch
        0x61 -> :sswitch_27
        0x72 -> :sswitch_27
        0x74 -> :sswitch_27
        0x77 -> :sswitch_27
    .end sparse-switch
.end method

.method public static greylist-max-o trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxBytes"    # I

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v0, "res":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o trimFilename(Ljava/lang/StringBuilder;I)V
    .registers 5
    .param p0, "res"    # Ljava/lang/StringBuilder;
    .param p1, "maxBytes"    # I

    .line 1165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1166
    .local v0, "raw":[B
    array-length v1, v0

    if-le v1, p1, :cond_31

    .line 1167
    add-int/lit8 p1, p1, -0x3

    .line 1168
    :goto_f
    array-length v1, v0

    if-le v1, p1, :cond_26

    .line 1169
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_f

    .line 1172
    :cond_26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v2, "..."

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :cond_31
    return-void
.end method
