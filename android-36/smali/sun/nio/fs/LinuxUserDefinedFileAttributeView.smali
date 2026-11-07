.class Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
.super Lsun/nio/fs/AbstractUserDefinedFileAttributeView;
.source "LinuxUserDefinedFileAttributeView.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist USER_NAMESPACE:Ljava/lang/String; = "user."

.field private static final blacklist XATTR_NAME_MAX:I = 0xff

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# instance fields
.field private final blacklist file:Lsun/nio/fs/UnixPath;

.field private final blacklist followLinks:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    nop

    .line 44
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .line 94
    invoke-direct {p0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;-><init>()V

    .line 95
    iput-object p1, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    .line 96
    iput-boolean p2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    .line 97
    return-void
.end method

.method private blacklist asList(JI)Ljava/util/List;
    .registers 15
    .param p1, "address"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "start":I
    const/4 v2, 0x0

    .line 69
    .local v2, "pos":I
    :goto_7
    if-ge v2, p3, :cond_45

    .line 70
    sget-object v3, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v4, v2

    add-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v3

    if-nez v3, :cond_42

    .line 71
    sub-int v3, v2, v1

    .line 72
    .local v3, "len":I
    new-array v4, v3, [B

    .line 76
    .local v4, "value":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v3, :cond_29

    .line 77
    sget-object v6, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v7, v1

    add-long/2addr v7, p1

    int-to-long v9, v5

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v6

    aput-byte v6, v4, v5

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 79
    .end local v5    # "i":I
    :cond_29
    invoke-static {v4}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "s":Ljava/lang/String;
    const-string v6, "user."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_40
    add-int/lit8 v1, v2, 0x1

    .line 86
    .end local v3    # "len":I
    .end local v4    # "value":[B
    .end local v5    # "s":Ljava/lang/String;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 88
    :cond_45
    return-object v0
.end method

.method private static blacklist copyExtendedAttribute(I[BI)V
    .registers 8
    .param p0, "ofd"    # I
    .param p1, "name"    # [B
    .param p2, "nfd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 360
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v0

    .line 361
    .local v0, "size":I
    invoke-static {v0}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 363
    .local v1, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_b
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    .line 364
    .local v2, "address":J
    invoke-static {p0, p1, v2, v3, v0}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v4

    move v0, v4

    .line 365
    invoke-static {p2, p1, v2, v3, v0}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1c

    .line 367
    .end local v2    # "address":J
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 368
    nop

    .line 369
    return-void

    .line 367
    :catchall_1c
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 368
    throw v2
.end method

.method static blacklist copyExtendedAttributes(II)V
    .registers 16
    .param p0, "ofd"    # I
    .param p1, "nfd"    # I

    .line 299
    const/4 v0, 0x0

    .line 303
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    const/16 v1, 0x400

    .line 304
    .local v1, "size":I
    :try_start_3
    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_69

    move-object v0, v2

    .line 307
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lsun/nio/fs/LinuxNativeDispatcher;->flistxattr(IJI)I

    move-result v2
    :try_end_10
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_10} :catch_49
    .catchall {:try_start_8 .. :try_end_10} :catchall_69

    .line 308
    .end local v1    # "size":I
    .local v2, "size":I
    nop

    .line 325
    :try_start_11
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v3

    .line 326
    .local v3, "address":J
    const/4 v1, 0x0

    .line 327
    .local v1, "start":I
    const/4 v5, 0x0

    .line 328
    .local v5, "pos":I
    :goto_17
    if-ge v5, v2, :cond_43

    .line 329
    sget-object v6, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v7, v5

    add-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v6

    if-nez v6, :cond_40

    .line 333
    sub-int v6, v5, v1

    .line 334
    .local v6, "len":I
    new-array v7, v6, [B

    .line 338
    .local v7, "name":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_28
    if-ge v8, v6, :cond_39

    .line 339
    sget-object v9, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v10, v1

    add-long/2addr v10, v3

    int-to-long v12, v8

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v9

    aput-byte v9, v7, v8
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_69

    .line 338
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 342
    .end local v8    # "i":I
    :cond_39
    :try_start_39
    invoke-static {p0, v7, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->copyExtendedAttribute(I[BI)V
    :try_end_3c
    .catch Lsun/nio/fs/UnixException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_69

    .line 345
    goto :goto_3e

    .line 343
    :catch_3d
    move-exception v8

    .line 346
    :goto_3e
    add-int/lit8 v1, v5, 0x1

    .line 348
    .end local v6    # "len":I
    .end local v7    # "name":[B
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 352
    .end local v1    # "start":I
    .end local v2    # "size":I
    .end local v3    # "address":J
    .end local v5    # "pos":I
    :cond_43
    if-eqz v0, :cond_48

    .line 353
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 355
    :cond_48
    return-void

    .line 309
    .local v1, "size":I
    :catch_49
    move-exception v2

    .line 311
    .local v2, "x":Lsun/nio/fs/UnixException;
    :try_start_4a
    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v3, v4, :cond_63

    const v3, 0x8000

    if-ge v1, v3, :cond_63

    .line 312
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 313
    mul-int/lit8 v1, v1, 0x2

    .line 314
    const/4 v0, 0x0

    .line 315
    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v3
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_69

    move-object v0, v3

    .line 316
    goto :goto_8

    .line 352
    :cond_63
    if-eqz v0, :cond_68

    .line 353
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 320
    :cond_68
    return-void

    .line 352
    .end local v1    # "size":I
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :catchall_69
    move-exception v1

    if-eqz v0, :cond_6f

    .line 353
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 354
    :cond_6f
    throw v1
.end method

.method private blacklist nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B
    .registers 8
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p2, :cond_43

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {p2}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1f

    .line 61
    return-object v0

    .line 58
    :cond_1f
    new-instance v1, Ljava/nio/file/FileSystemException;

    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is too big"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "bytes":[B
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api delete(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 277
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 279
    :cond_11
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 281
    .local v0, "fd":I
    :try_start_19
    iget-object v1, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v1, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lsun/nio/fs/LinuxNativeDispatcher;->fremovexattr(I[B)V
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_19 .. :try_end_22} :catch_29
    .catchall {:try_start_19 .. :try_end_22} :catchall_27

    .line 286
    invoke-static {v0}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 287
    nop

    .line 288
    return-void

    .line 286
    :catchall_27
    move-exception v1

    goto :goto_58

    .line 282
    :catch_29
    move-exception v1

    .line 283
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_2a
    new-instance v2, Ljava/nio/file/FileSystemException;

    iget-object v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete extended attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 284
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    throw v2
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_27

    .line 286
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_58
    invoke-static {v0}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 287
    throw v1
.end method

.method public whitelist test-api list()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 104
    :cond_11
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 105
    .local v0, "fd":I
    const/4 v1, 0x0

    .line 107
    .local v1, "buffer":Lsun/nio/fs/NativeBuffer;
    const/16 v2, 0x400

    .line 108
    .local v2, "size":I
    :try_start_1c
    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_7c

    move-object v1, v3

    .line 111
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->flistxattr(IJI)I

    move-result v3

    .line 112
    .local v3, "n":I
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->asList(JI)Ljava/util/List;

    move-result-object v4

    .line 113
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_35
    .catch Lsun/nio/fs/UnixException; {:try_start_21 .. :try_end_35} :catch_3e
    .catchall {:try_start_21 .. :try_end_35} :catchall_7c

    .line 129
    if-eqz v1, :cond_3a

    .line 130
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 131
    :cond_3a
    invoke-static {v0}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 113
    return-object v5

    .line 114
    .end local v3    # "n":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3e
    move-exception v3

    .line 116
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_3f
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v4, v5, :cond_58

    const v4, 0x8000

    if-ge v2, v4, :cond_58

    .line 117
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 118
    mul-int/lit8 v2, v2, 0x2

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v4

    move-object v1, v4

    .line 121
    goto :goto_21

    .line 123
    :cond_58
    new-instance v4, Ljava/nio/file/FileSystemException;

    iget-object v5, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v5}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get list of extended attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 125
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "fd":I
    .end local v1    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    throw v4
    :try_end_7c
    .catchall {:try_start_3f .. :try_end_7c} :catchall_7c

    .line 129
    .end local v2    # "size":I
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "fd":I
    .restart local v1    # "buffer":Lsun/nio/fs/NativeBuffer;
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    :catchall_7c
    move-exception v2

    if-eqz v1, :cond_82

    .line 130
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 131
    :cond_82
    invoke-static {v0}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 132
    throw v2
.end method

.method public whitelist test-api read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 158
    :cond_11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 160
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 161
    .local v0, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 162
    .local v2, "lim":I
    nop

    .line 163
    if-gt v0, v2, :cond_25

    sub-int v3, v2, v0

    goto :goto_26

    :cond_25
    move v3, v1

    .line 167
    .local v3, "rem":I
    :goto_26
    instance-of v4, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v4, :cond_35

    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, "nb":Lsun/nio/fs/NativeBuffer;
    move-object v5, p2

    check-cast v5, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v5}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    .local v5, "address":J
    goto :goto_3d

    .line 172
    .end local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v5    # "address":J
    :cond_35
    invoke-static {v3}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v4

    .line 173
    .restart local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v5

    .line 176
    .restart local v5    # "address":J
    :goto_3d
    iget-object v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v8, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v7

    .line 179
    .local v7, "fd":I
    :try_start_45
    iget-object v8, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v8, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8, v5, v6, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v8
    :try_end_4f
    .catch Lsun/nio/fs/UnixException; {:try_start_45 .. :try_end_4f} :catch_89
    .catchall {:try_start_45 .. :try_end_4f} :catchall_87

    .line 182
    .local v8, "n":I
    if-nez v3, :cond_65

    .line 183
    if-gtz v8, :cond_5d

    .line 185
    nop

    .line 205
    :try_start_54
    invoke-static {v7}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_c8

    .line 208
    if-eqz v4, :cond_5c

    .line 209
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 185
    :cond_5c
    return v1

    .line 184
    :cond_5d
    :try_start_5d
    new-instance v1, Lsun/nio/fs/UnixException;

    sget v9, Lsun/nio/fs/UnixConstants;->ERANGE:I

    invoke-direct {v1, v9}, Lsun/nio/fs/UnixException;-><init>(I)V

    .end local v0    # "pos":I
    .end local v2    # "lim":I
    .end local v3    # "rem":I
    .end local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v5    # "address":J
    .end local v7    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v1

    .line 189
    .restart local v0    # "pos":I
    .restart local v2    # "lim":I
    .restart local v3    # "rem":I
    .restart local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .restart local v5    # "address":J
    .restart local v7    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :cond_65
    if-eqz v4, :cond_78

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    if-ge v1, v8, :cond_78

    .line 194
    sget-object v9, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v10, v1

    add-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 197
    .end local v1    # "i":I
    :cond_78
    add-int v1, v0, v8

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7d
    .catch Lsun/nio/fs/UnixException; {:try_start_5d .. :try_end_7d} :catch_89
    .catchall {:try_start_5d .. :try_end_7d} :catchall_87

    .line 198
    nop

    .line 205
    :try_start_7e
    invoke-static {v7}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_c8

    .line 208
    if-eqz v4, :cond_86

    .line 209
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 198
    :cond_86
    return v8

    .line 205
    .end local v8    # "n":I
    :catchall_87
    move-exception v1

    goto :goto_c3

    .line 199
    :catch_89
    move-exception v1

    .line 200
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_8a
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v8

    sget v9, Lsun/nio/fs/UnixConstants;->ERANGE:I

    if-ne v8, v9, :cond_95

    .line 201
    const-string v8, "Insufficient space in buffer"

    goto :goto_99

    :cond_95
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "msg":Ljava/lang/String;
    :goto_99
    new-instance v9, Ljava/nio/file/FileSystemException;

    iget-object v10, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v10}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error reading extended attribute \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v2    # "lim":I
    .end local v3    # "rem":I
    .end local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v5    # "address":J
    .end local v7    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v9
    :try_end_c3
    .catchall {:try_start_8a .. :try_end_c3} :catchall_87

    .line 205
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v0    # "pos":I
    .restart local v2    # "lim":I
    .restart local v3    # "rem":I
    .restart local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .restart local v5    # "address":J
    .restart local v7    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :goto_c3
    :try_start_c3
    invoke-static {v7}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 206
    nop

    .end local v0    # "pos":I
    .end local v2    # "lim":I
    .end local v3    # "rem":I
    .end local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v5    # "address":J
    .end local v7    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v1
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_c8

    .line 208
    .restart local v0    # "pos":I
    .restart local v2    # "lim":I
    .restart local v3    # "rem":I
    .restart local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .restart local v5    # "address":J
    .restart local v7    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_c8
    move-exception v1

    if-eqz v4, :cond_ce

    .line 209
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 210
    :cond_ce
    throw v1

    .line 159
    .end local v0    # "pos":I
    .end local v2    # "lim":I
    .end local v3    # "rem":I
    .end local v4    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v5    # "address":J
    .end local v7    # "fd":I
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api size(Ljava/lang/String;)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 138
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 140
    :cond_11
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v0, v2}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 143
    .local v0, "fd":I
    :try_start_19
    iget-object v2, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v2, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v1
    :try_end_25
    .catch Lsun/nio/fs/UnixException; {:try_start_19 .. :try_end_25} :catch_2b
    .catchall {:try_start_19 .. :try_end_25} :catchall_29

    .line 149
    invoke-static {v0}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 143
    return v1

    .line 149
    :catchall_29
    move-exception v1

    goto :goto_5a

    .line 144
    :catch_2b
    move-exception v1

    .line 145
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_2c
    new-instance v2, Ljava/nio/file/FileSystemException;

    iget-object v3, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get size of extended attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 147
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    throw v2
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_29

    .line 149
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_5a
    invoke-static {v0}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 150
    throw v1
.end method

.method public whitelist test-api write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 216
    iget-object v0, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->checkAccess(Ljava/lang/String;ZZ)V

    .line 218
    :cond_11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 219
    .local v0, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 220
    .local v2, "lim":I
    nop

    .line 221
    if-gt v0, v2, :cond_1e

    sub-int v1, v2, v0

    .line 225
    .local v1, "rem":I
    :cond_1e
    instance-of v3, p2, Lsun/nio/ch/DirectBuffer;

    if-eqz v3, :cond_2d

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, "nb":Lsun/nio/fs/NativeBuffer;
    move-object v4, p2

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    .local v4, "address":J
    goto :goto_64

    .line 230
    .end local v3    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v4    # "address":J
    :cond_2d
    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v3

    .line 231
    .restart local v3    # "nb":Lsun/nio/fs/NativeBuffer;
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    .line 233
    .restart local v4    # "address":J
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 238
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    if-ge v6, v1, :cond_4c

    .line 239
    sget-object v7, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v8, v6

    add-long/2addr v8, v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Ljdk/internal/misc/Unsafe;->putByte(JB)V

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .end local v6    # "i":I
    :cond_4c
    goto :goto_64

    .line 243
    :cond_4d
    new-array v6, v1, [B

    .line 244
    .local v6, "tmp":[B
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_56
    if-ge v7, v1, :cond_64

    .line 250
    sget-object v8, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    int-to-long v9, v7

    add-long/2addr v9, v4

    aget-byte v11, v6, v7

    invoke-virtual {v8, v9, v10, v11}, Ljdk/internal/misc/Unsafe;->putByte(JB)V

    .line 249
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 255
    .end local v6    # "tmp":[B
    .end local v7    # "i":I
    :cond_64
    :goto_64
    iget-object v6, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->followLinks:Z

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v6

    .line 258
    .local v6, "fd":I
    :try_start_6c
    iget-object v7, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-direct {p0, v7, p1}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->nameAsBytes(Lsun/nio/fs/UnixPath;Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7, v4, v5, v1}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V

    .line 259
    add-int v7, v0, v1

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7a
    .catch Lsun/nio/fs/UnixException; {:try_start_6c .. :try_end_7a} :catch_86
    .catchall {:try_start_6c .. :try_end_7a} :catchall_84

    .line 260
    nop

    .line 266
    :try_start_7b
    invoke-static {v6}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_ba

    .line 269
    if-eqz v3, :cond_83

    .line 270
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 260
    :cond_83
    return v1

    .line 266
    :catchall_84
    move-exception v7

    goto :goto_b5

    .line 261
    :catch_86
    move-exception v7

    .line 262
    .local v7, "x":Lsun/nio/fs/UnixException;
    :try_start_87
    new-instance v8, Ljava/nio/file/FileSystemException;

    iget-object v9, p0, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v9}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error writing extended attribute \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 264
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v10}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "rem":I
    .end local v2    # "lim":I
    .end local v3    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v4    # "address":J
    .end local v6    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    throw v8
    :try_end_b5
    .catchall {:try_start_87 .. :try_end_b5} :catchall_84

    .line 266
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "pos":I
    .restart local v1    # "rem":I
    .restart local v2    # "lim":I
    .restart local v3    # "nb":Lsun/nio/fs/NativeBuffer;
    .restart local v4    # "address":J
    .restart local v6    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    :goto_b5
    :try_start_b5
    invoke-static {v6}, Lsun/nio/fs/LinuxNativeDispatcher;->close(I)V

    .line 267
    nop

    .end local v0    # "pos":I
    .end local v1    # "rem":I
    .end local v2    # "lim":I
    .end local v3    # "nb":Lsun/nio/fs/NativeBuffer;
    .end local v4    # "address":J
    .end local v6    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    throw v7
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_ba

    .line 269
    .restart local v0    # "pos":I
    .restart local v1    # "rem":I
    .restart local v2    # "lim":I
    .restart local v3    # "nb":Lsun/nio/fs/NativeBuffer;
    .restart local v4    # "address":J
    .restart local v6    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxUserDefinedFileAttributeView;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    :catchall_ba
    move-exception v7

    if-eqz v3, :cond_c0

    .line 270
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 271
    :cond_c0
    throw v7
.end method
