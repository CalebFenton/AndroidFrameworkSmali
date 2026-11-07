.class public final Landroid/util/MemoryIntArray;
.super Ljava/lang/Object;
.source "MemoryIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MemoryIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SIZE:I = 0x400

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MemoryIntArray"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mFd:I

.field private final greylist-max-o mIsOwner:Z

.field private final greylist-max-o mMemoryAddr:J

.field private final blacklist mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/util/MemoryIntArray$1;

    invoke-direct {v0}, Landroid/util/MemoryIntArray$1;-><init>()V

    sput-object v0, Landroid/util/MemoryIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 72
    const/16 v0, 0x400

    if-gt p1, v0, :cond_3b

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/util/MemoryIntArray;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 78
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-boolean v2, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v1, v2}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 81
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-direct {p0, v1}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mSize:I

    .line 82
    iget-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "MemoryIntArray.close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 83
    return-void

    .line 73
    .end local v0    # "name":Ljava/lang/String;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size is 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 87
    const/4 v0, 0x0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 88
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_3a

    .line 91
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 92
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-boolean v2, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v1, v2}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 93
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-direct {p0, v1}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mSize:I

    .line 94
    iget-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "MemoryIntArray.close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 95
    return-void

    .line 89
    :cond_3a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No backing file descriptor"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o enforceNotClosed()V
    .registers 3

    .line 211
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    return-void

    .line 212
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a closed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o enforceValidIndex(I)V
    .registers 5
    .param p1, "index"    # I

    .line 217
    if-ltz p1, :cond_9

    iget v0, p0, Landroid/util/MemoryIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_9

    .line 221
    return-void

    .line 218
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/MemoryIntArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o enforceWritable()V
    .registers 3

    .line 224
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    return-void

    .line 225
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "array is not writable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getMaxSize()I
    .registers 1

    .line 240
    const/16 v0, 0x400

    return v0
.end method

.method private native greylist-max-o nativeClose(IJZ)V
.end method

.method private native greylist-max-o nativeCreate(Ljava/lang/String;I)I
.end method

.method private native greylist-max-o nativeGet(IJI)I
.end method

.method private native greylist-max-o nativeOpen(IZ)J
.end method

.method private native greylist-max-o nativeSet(IJII)V
.end method

.method private native greylist-max-o nativeSize(I)I
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 150
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    iget-boolean v3, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/util/MemoryIntArray;->nativeClose(IJZ)V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 152
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 154
    :cond_17
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 193
    return v0

    .line 195
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 196
    return v1

    .line 198
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 199
    return v0

    .line 201
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/util/MemoryIntArray;

    .line 202
    .local v2, "other":Landroid/util/MemoryIntArray;
    iget v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget v4, v2, Landroid/util/MemoryIntArray;->mFd:I

    if-ne v3, v4, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 170
    :cond_9
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 172
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    throw v0
.end method

.method public greylist-max-o get(I)I
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 114
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 115
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/util/MemoryIntArray;->nativeGet(IJI)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    return v0
.end method

.method public greylist-max-o isClosed()Z
    .registers 3

    .line 160
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isWritable()Z
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 102
    iget-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    return v0
.end method

.method public greylist-max-o set(II)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 129
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceWritable()V

    .line 130
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 131
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    .end local p1    # "index":I
    .end local p2    # "value":I
    .local v4, "index":I
    .local v5, "value":I
    invoke-direct/range {v0 .. v5}, Landroid/util/MemoryIntArray;->nativeSet(IJII)V

    .line 132
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 139
    iget v0, p0, Landroid/util/MemoryIntArray;->mSize:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    :try_start_0
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_1c

    .line 184
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_6
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    .line 185
    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1c

    .line 187
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_e
    nop

    .line 188
    return-void

    .line 183
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    :try_start_18
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/util/MemoryIntArray;
    .end local p1    # "parcel":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :cond_1b
    :goto_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_1c

    .line 185
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/util/MemoryIntArray;
    .restart local p1    # "parcel":Landroid/os/Parcel;
    .restart local p2    # "flags":I
    :catch_1c
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
