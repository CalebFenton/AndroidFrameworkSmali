.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Closer;,
        Landroid/os/SharedMemory$Unmapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROT_MASK:I


# instance fields
.field private greylist-max-o mCleaner:Lsun/misc/Cleaner;

.field private final greylist-max-o mFileDescriptor:Ljava/io/FileDescriptor;

.field private final greylist-max-o mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 116
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    or-int/2addr v0, v1

    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    .line 311
    new-instance v0, Landroid/os/SharedMemory$1;

    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/io/FileDescriptor;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_49

    .line 54
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 58
    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 59
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/os/SharedMemory;->mSize:I

    .line 60
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    if-lez v0, :cond_39

    .line 64
    new-instance v0, Landroid/os/SharedMemory$MemoryRegistration;

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory-IA;)V

    iput-object v0, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    .line 65
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    new-instance v1, Landroid/os/SharedMemory$Closer;

    iget-object v3, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 66
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    iget-object v4, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-direct {v1, v3, v4, v2}, Landroid/os/SharedMemory$Closer;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V

    .line 65
    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 67
    return-void

    .line 61
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to create SharedMemory from closed FileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to create SharedMemory from a null FileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private greylist-max-o checkOpen()V
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    return-void

    .line 92
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SharedMemory is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 84
    if-lez p1, :cond_c

    .line 87
    new-instance v0, Landroid/os/SharedMemory;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 85
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;
    .registers 3
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 111
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 112
    .local v0, "f":Ljava/io/FileDescriptor;
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 113
    new-instance v1, Landroid/os/SharedMemory;

    invoke-direct {v1, v0}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method private static native greylist-max-o nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native greylist-max-o nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static whitelist unmap(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 263
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_8

    .line 264
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 269
    return-void

    .line 266
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o validateProt(I)V
    .registers 3
    .param p0, "prot"    # I

    .line 120
    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    not-int v0, v0

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    .line 123
    return-void

    .line 121
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid prot value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 279
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 280
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_12

    .line 281
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 284
    :cond_12
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getFd()I
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method public blacklist getFdDup()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getSize()I
    .registers 2

    .line 190
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 191
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    return v0
.end method

.method public whitelist map(III)Ljava/nio/ByteBuffer;
    .registers 20
    .param p1, "prot"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 237
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v3, p3

    invoke-direct {v0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 238
    invoke-static/range {p1 .. p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 239
    if-ltz v1, :cond_5b

    .line 242
    if-lez v3, :cond_53

    .line 245
    add-int v2, v1, v3

    iget v4, v0, Landroid/os/SharedMemory;->mSize:I

    if-gt v2, v4, :cond_4a

    .line 248
    int-to-long v7, v3

    sget v10, Landroid/system/OsConstants;->MAP_SHARED:I

    iget-object v11, v0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    int-to-long v12, v1

    const-wide/16 v5, 0x0

    move/from16 v9, p1

    invoke-static/range {v5 .. v13}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v4

    .line 249
    .local v4, "address":J
    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    and-int v2, p1, v2

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    move v8, v2

    .line 250
    .local v8, "readOnly":Z
    new-instance v2, Landroid/os/SharedMemory$Unmapper;

    iget-object v6, v0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v6}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v14, v4

    move v5, v3

    move-wide v3, v14

    .end local v4    # "address":J
    .local v3, "address":J
    invoke-direct/range {v2 .. v7}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V

    move-object v7, v2

    .line 251
    .local v7, "unmapper":Ljava/lang/Runnable;
    new-instance v2, Ljava/nio/DirectByteBuffer;

    iget-object v6, v0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    move-wide v4, v3

    move/from16 v3, p3

    .end local v3    # "address":J
    .restart local v4    # "address":J
    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    move-wide v3, v4

    .end local v4    # "address":J
    .restart local v3    # "address":J
    return-object v2

    .line 246
    .end local v3    # "address":J
    .end local v7    # "unmapper":Ljava/lang/Runnable;
    .end local v8    # "readOnly":Z
    :cond_4a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "offset + length must not exceed getSize()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_5b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Offset must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist mapReadOnly()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 219
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist mapReadWrite()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 205
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setProtect(I)Z
    .registers 4
    .param p1, "prot"    # I

    .line 151
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 152
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 153
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 154
    .local v0, "errno":I
    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 293
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 294
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 295
    return-void
.end method
