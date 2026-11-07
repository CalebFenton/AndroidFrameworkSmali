.class Lsun/nio/fs/LinuxDosFileAttributeView;
.super Lsun/nio/fs/UnixFileAttributeViews$Basic;
.source "LinuxDosFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributeView;


# static fields
.field private static final blacklist ARCHIVE_NAME:Ljava/lang/String; = "archive"

.field private static final blacklist DOS_XATTR_ARCHIVE:I = 0x20

.field private static final blacklist DOS_XATTR_HIDDEN:I = 0x2

.field private static final blacklist DOS_XATTR_NAME:Ljava/lang/String; = "user.DOSATTRIB"

.field private static final blacklist DOS_XATTR_NAME_AS_BYTES:[B

.field private static final blacklist DOS_XATTR_READONLY:I = 0x1

.field private static final blacklist DOS_XATTR_SYSTEM:I = 0x4

.field private static final blacklist HIDDEN_NAME:Ljava/lang/String; = "hidden"

.field private static final blacklist READONLY_NAME:Ljava/lang/String; = "readonly"

.field private static final blacklist SYSTEM_NAME:Ljava/lang/String; = "system"

.field private static final blacklist dosAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 46
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 54
    const-string v0, "user.DOSATTRIB"

    invoke-static {v0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    .line 62
    sget-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "readonly"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "archive"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "system"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hidden"

    aput-object v3, v1, v2

    .line 63
    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->dosAttributeNames:Ljava/util/Set;

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .line 66
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    .line 67
    return-void
.end method

.method private blacklist getDosAttribute(I)I
    .registers 12
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 212
    const/16 v0, 0x18

    .line 214
    .local v0, "size":I
    const/16 v1, 0x18

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v2

    .line 216
    .local v2, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    sget-object v3, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    .line 217
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {p1, v3, v4, v5, v1}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v1

    .line 219
    .local v1, "len":I
    if-lez v1, :cond_60

    .line 221
    sget-object v3, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v3

    if-nez v3, :cond_27

    .line 222
    add-int/lit8 v1, v1, -0x1

    .line 225
    :cond_27
    new-array v3, v1, [B

    .line 229
    .local v3, "buf":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    if-ge v4, v1, :cond_3d

    .line 230
    sget-object v5, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    int-to-long v8, v4

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v5

    aput-byte v5, v3, v4

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 232
    .end local v4    # "i":I
    :cond_3d
    invoke-static {v3}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_60

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_4e
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_4e} :catch_6a
    .catchall {:try_start_8 .. :try_end_4e} :catchall_68

    if-eqz v5, :cond_60

    .line 237
    const/4 v5, 0x2

    :try_start_51
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_5b} :catch_5f
    .catch Lsun/nio/fs/UnixException; {:try_start_51 .. :try_end_5b} :catch_6a
    .catchall {:try_start_51 .. :try_end_5b} :catchall_68

    .line 250
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 237
    return v5

    .line 238
    :catch_5f
    move-exception v5

    .line 243
    .end local v3    # "buf":[B
    .end local v4    # "value":Ljava/lang/String;
    :cond_60
    :try_start_60
    new-instance v3, Lsun/nio/fs/UnixException;

    const-string v4, "Value of user.DOSATTRIB attribute is invalid"

    invoke-direct {v3, v4}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v2    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local p0    # "this":Lsun/nio/fs/LinuxDosFileAttributeView;
    .end local p1    # "fd":I
    throw v3
    :try_end_68
    .catch Lsun/nio/fs/UnixException; {:try_start_60 .. :try_end_68} :catch_6a
    .catchall {:try_start_60 .. :try_end_68} :catchall_68

    .line 250
    .end local v1    # "len":I
    .restart local v0    # "size":I
    .restart local v2    # "buffer":Lsun/nio/fs/NativeBuffer;
    .restart local p0    # "this":Lsun/nio/fs/LinuxDosFileAttributeView;
    .restart local p1    # "fd":I
    :catchall_68
    move-exception v1

    goto :goto_7b

    .line 244
    :catch_6a
    move-exception v1

    .line 246
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_6b
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENODATA:I
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_68

    if-ne v3, v4, :cond_79

    .line 247
    nop

    .line 250
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 247
    const/4 v3, 0x0

    return v3

    .line 248
    :cond_79
    nop

    .end local v0    # "size":I
    .end local v2    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local p0    # "this":Lsun/nio/fs/LinuxDosFileAttributeView;
    .end local p1    # "fd":I
    :try_start_7a
    throw v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_68

    .line 250
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "size":I
    .restart local v2    # "buffer":Lsun/nio/fs/NativeBuffer;
    .restart local p0    # "this":Lsun/nio/fs/LinuxDosFileAttributeView;
    .restart local p1    # "fd":I
    :goto_7b
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 251
    throw v1
.end method

.method private blacklist updateDosAttribute(IZ)V
    .registers 12
    .param p1, "flag"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 260
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->followLinks:Z

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 262
    .local v0, "fd":I
    :try_start_d
    invoke-direct {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->getDosAttribute(I)I

    move-result v1

    .line 263
    .local v1, "oldValue":I
    move v2, v1

    .line 264
    .local v2, "newValue":I
    if-eqz p2, :cond_16

    .line 265
    or-int/2addr v2, p1

    goto :goto_18

    .line 267
    :cond_16
    not-int v3, p1

    and-int/2addr v2, v3

    .line 269
    :goto_18
    if-eq v2, v1, :cond_57

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 271
    .local v3, "value":[B
    invoke-static {v3}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v4
    :try_end_39
    .catch Lsun/nio/fs/UnixException; {:try_start_d .. :try_end_39} :catch_51
    .catchall {:try_start_d .. :try_end_39} :catchall_4f

    .line 273
    .local v4, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_39
    sget-object v5, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    .line 274
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v6

    array-length v8, v3

    add-int/lit8 v8, v8, 0x1

    .line 273
    invoke-static {v0, v5, v6, v7, v8}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_49

    .line 276
    :try_start_45
    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 277
    goto :goto_57

    .line 276
    :catchall_49
    move-exception v5

    invoke-virtual {v4}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 277
    nop

    .end local v0    # "fd":I
    .end local p0    # "this":Lsun/nio/fs/LinuxDosFileAttributeView;
    .end local p1    # "flag":I
    .end local p2    # "enable":Z
    throw v5
    :try_end_4f
    .catch Lsun/nio/fs/UnixException; {:try_start_45 .. :try_end_4f} :catch_51
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4f

    .line 282
    .end local v1    # "oldValue":I
    .end local v2    # "newValue":I
    .end local v3    # "value":[B
    .end local v4    # "buffer":Lsun/nio/fs/NativeBuffer;
    .restart local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxDosFileAttributeView;
    .restart local p1    # "flag":I
    .restart local p2    # "enable":Z
    :catchall_4f
    move-exception v1

    goto :goto_5c

    .line 279
    :catch_51
    move-exception v1

    .line 280
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_52
    iget-object v2, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_4f

    .line 282
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_57
    :goto_57
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :goto_5c
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 283
    throw v1
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "dos"

    return-object v0
.end method

.method public bridge synthetic whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 120
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->followLinks:Z

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 122
    .local v0, "fd":I
    :try_start_d
    invoke-static {v0}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    .line 123
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-direct {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->getDosAttribute(I)I

    move-result v2

    .line 125
    .local v2, "dosAttribute":I
    new-instance v3, Lsun/nio/fs/LinuxDosFileAttributeView$1;

    invoke-direct {v3, p0, v1, v2}, Lsun/nio/fs/LinuxDosFileAttributeView$1;-><init>(Lsun/nio/fs/LinuxDosFileAttributeView;Lsun/nio/fs/UnixFileAttributes;I)V
    :try_end_1a
    .catch Lsun/nio/fs/UnixException; {:try_start_d .. :try_end_1a} :catch_20
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    .line 184
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 125
    return-object v3

    .line 184
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v2    # "dosAttribute":I
    :catchall_1e
    move-exception v1

    goto :goto_2c

    .line 180
    :catch_20
    move-exception v1

    .line 181
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_21
    iget-object v2, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    .line 182
    nop

    .line 184
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 182
    const/4 v2, 0x0

    return-object v2

    .line 184
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :goto_2c
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 185
    throw v1
.end method

.method public blacklist readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    sget-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->dosAttributeNames:Ljava/util/Set;

    .line 102
    invoke-static {v0, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    .line 103
    .local v0, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v1

    .line 104
    .local v1, "attrs":Ljava/nio/file/attribute/DosFileAttributes;
    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 105
    const-string v2, "readonly"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 106
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_20
    const-string v2, "archive"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 108
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_33
    const-string v2, "system"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 110
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_46
    const-string v2, "hidden"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 112
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_59
    invoke-virtual {v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api setArchive(Z)V
    .registers 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 201
    return-void
.end method

.method public blacklist setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "readonly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setReadOnly(Z)V

    .line 80
    return-void

    .line 82
    :cond_13
    const-string v0, "archive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 83
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setArchive(Z)V

    .line 84
    return-void

    .line 86
    :cond_26
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 87
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setSystem(Z)V

    .line 88
    return-void

    .line 90
    :cond_39
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 91
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setHidden(Z)V

    .line 92
    return-void

    .line 94
    :cond_4c
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public whitelist test-api setHidden(Z)V
    .registers 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 196
    return-void
.end method

.method public whitelist test-api setReadOnly(Z)V
    .registers 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 191
    return-void
.end method

.method public whitelist test-api setSystem(Z)V
    .registers 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 206
    return-void
.end method
