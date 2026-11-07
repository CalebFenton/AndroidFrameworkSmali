.class public Landroid/app/appsearch/ParcelableUtil;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/ParcelableUtil$WriteParcelMode;
    }
.end annotation


# static fields
.field private static final blacklist DOCUMENT_SIZE_LIMIT_IN_BYTES:I = 0x10000

.field private static final blacklist TAG:Ljava/lang/String; = "AppSearchParcel"

.field private static final blacklist TEMP_FILE_PREFIX:Ljava/lang/String; = "AppSearchSerializedBytes"

.field private static final blacklist TEMP_FILE_SUFFIX:Ljava/lang/String; = ".tmp"

.field public static final blacklist WRITE_PARCEL_MODE_DIRECTLY_WRITE_TO_PARCEL:I = 0x2

.field public static final blacklist WRITE_PARCEL_MODE_MARSHALL_WRITE_IN_BLOB:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static blacklist getDataFromFd(Landroid/os/ParcelFileDescriptor;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    :try_start_a
    new-array p0, p1, [B

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    :try_start_14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 22
    .line 23
    .line 24
    goto :goto_1c

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_1c
    throw p0
.end method

.method public static blacklist readBlob(Landroid/os/Parcel;)[B
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static blacklist readFromParcelForSAndBelow(Landroid/os/Parcel;)[B
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x10000

    .line 6
    .line 7
    if-gt v0, v1, :cond_e

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, v0}, Landroid/app/appsearch/ParcelableUtil;->getDataFromFd(Landroid/os/ParcelFileDescriptor;I)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    .line 23
    return-object p0

    .line 24
    :catch_17
    move-exception p0

    .line 25
    const-string v0, "AppSearchParcel"

    .line 26
    .line 27
    const-string v1, "Couldn\'t read from unlinked file."

    .line 28
    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static blacklist writeBlob(Landroid/os/Parcel;[B)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBlob([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static blacklist writeDataToTempFileAndUnlinkFile([B)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ".tmp"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AppSearchSerializedBytes"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/DataOutputStream;

    .line 11
    .line 12
    new-instance v2, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .line 19
    .line 20
    :try_start_13
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_26

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 27
    .line 28
    .line 29
    const/high16 p0, 0x38000000

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    :try_start_27
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    .line 41
    .line 42
    .line 43
    goto :goto_2f

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_2f
    throw p0
.end method

.method private static blacklist writeToParcelForSAndBelow(Landroid/os/Parcel;[B)V
    .registers 4

    .line 1
    :try_start_0
    array-length v0, p1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    array-length v0, p1

    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    if-gt v0, v1, :cond_d

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    invoke-static {p1}, Landroid/app/appsearch/ParcelableUtil;->writeDataToTempFileAndUnlinkFile([B)Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_19
    move-exception p0

    .line 27
    const-string p1, "AppSearchParcel"

    .line 28
    .line 29
    const-string v0, "Couldn\'t write to unlinked file."

    .line 30
    .line 31
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method
