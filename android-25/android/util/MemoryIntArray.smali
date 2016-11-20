.class public final Landroid/util/MemoryIntArray;
.super Ljava/lang/Object;
.source "MemoryIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MemoryIntArray$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/util/MemoryIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MemoryIntArray"


# instance fields
.field private final mClientWritable:Z

.field private mFd:I

.field private final mMemoryAddr:J

.field private final mOwnerPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 244
    new-instance v0, Landroid/util/MemoryIntArray$1;

    #@2
    invoke-direct {v0}, Landroid/util/MemoryIntArray$1;-><init>()V

    #@5
    .line 243
    sput-object v0, Landroid/util/MemoryIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 49
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "clientWritable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    const/16 v1, 0x400

    #@5
    if-le p1, v1, :cond_0

    #@7
    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "Max size is 1024"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 71
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/util/MemoryIntArray;->mOwnerPid:I

    #@16
    .line 72
    iput-boolean p2, p0, Landroid/util/MemoryIntArray;->mClientWritable:Z

    #@18
    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 74
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/util/MemoryIntArray;->nativeCreate(Ljava/lang/String;I)I

    #@23
    move-result v1

    #@24
    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@26
    .line 75
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@28
    const/4 v2, 0x1

    #@29
    invoke-direct {p0, v1, v2, p2}, Landroid/util/MemoryIntArray;->nativeOpen(IZZ)J

    #@2c
    move-result-wide v2

    #@2d
    iput-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@2f
    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v5

    #@a
    iput v5, p0, Landroid/util/MemoryIntArray;->mOwnerPid:I

    #@c
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v5

    #@10
    if-ne v5, v3, :cond_0

    #@12
    :goto_0
    iput-boolean v3, p0, Landroid/util/MemoryIntArray;->mClientWritable:Z

    #@14
    .line 81
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    #@1a
    .line 82
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_1

    #@1c
    .line 83
    new-instance v3, Ljava/io/IOException;

    #@1e
    const-string/jumbo v4, "No backing file descriptor"

    #@21
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v3

    #@25
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    move v3, v4

    #@26
    .line 80
    goto :goto_0

    #@27
    .line 85
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    #@2a
    move-result v3

    #@2b
    iput v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@2d
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@30
    move-result-wide v0

    #@31
    .line 87
    .local v0, "memoryAddress":J
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->isOwner()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_2

    #@37
    .line 88
    iput-wide v0, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@39
    .line 78
    :goto_1
    return-void

    #@3a
    .line 90
    :cond_2
    iget v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@3c
    iget-boolean v5, p0, Landroid/util/MemoryIntArray;->mClientWritable:Z

    #@3e
    invoke-direct {p0, v3, v4, v5}, Landroid/util/MemoryIntArray;->nativeOpen(IZZ)J

    #@41
    move-result-wide v4

    #@42
    iput-wide v4, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@44
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private enforceNotClosed()V
    .locals 2

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "cannot interact with a closed instance"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 209
    :cond_0
    return-void
.end method

.method private enforceValidIndex(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->size()I

    #@3
    move-result v0

    #@4
    .line 217
    .local v0, "size":I
    if-ltz p1, :cond_0

    #@6
    add-int/lit8 v1, v0, -0x1

    #@8
    if-le p1, v1, :cond_1

    #@a
    .line 218
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@c
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " not between 0 and "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    add-int/lit8 v3, v0, -0x1

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 218
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 215
    :cond_1
    return-void
.end method

.method private enforceWritable()V
    .locals 2

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isWritable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "array is not writable"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 223
    :cond_0
    return-void
.end method

.method public static getMaxSize()I
    .locals 1

    #@0
    .prologue
    .line 240
    const/16 v0, 0x400

    #@2
    return v0
.end method

.method private isOwner()Z
    .locals 2

    #@0
    .prologue
    .line 206
    iget v0, p0, Landroid/util/MemoryIntArray;->mOwnerPid:I

    #@2
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@5
    move-result v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private native nativeClose(IJZ)V
.end method

.method private native nativeCreate(Ljava/lang/String;I)I
.end method

.method private native nativeGet(IJIZ)I
.end method

.method private native nativeOpen(IZZ)J
.end method

.method private native nativeSet(IJIIZ)V
.end method

.method private native nativeSize(I)I
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 149
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@8
    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@a
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->isOwner()Z

    #@d
    move-result v1

    #@e
    invoke-direct {p0, v0, v2, v3, v1}, Landroid/util/MemoryIntArray;->nativeClose(IJZ)V

    #@11
    .line 150
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@14
    .line 147
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 187
    if-nez p1, :cond_0

    #@4
    .line 188
    return v2

    #@5
    .line 190
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 191
    return v1

    #@8
    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 194
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 196
    check-cast v0, Landroid/util/MemoryIntArray;

    #@16
    .line 197
    .local v0, "other":Landroid/util/MemoryIntArray;
    iget v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@18
    iget v4, v0, Landroid/util/MemoryIntArray;->mFd:I

    #@1a
    if-ne v3, v4, :cond_3

    #@1c
    :goto_0
    return v1

    #@1d
    :cond_3
    move v1, v2

    #@1e
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3
    .line 164
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 162
    return-void
.end method

.method public get(I)I
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    #@3
    .line 111
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    #@6
    .line 112
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@8
    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@a
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->isOwner()Z

    #@d
    move-result v5

    #@e
    move-object v0, p0

    #@f
    move v4, p1

    #@10
    invoke-direct/range {v0 .. v5}, Landroid/util/MemoryIntArray;->nativeGet(IJIZ)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@2
    return v0
.end method

.method public isClosed()Z
    .locals 2

    #@0
    .prologue
    .line 158
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    #@3
    .line 99
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->isOwner()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/util/MemoryIntArray;->mClientWritable:Z

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public set(II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    #@3
    .line 126
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceWritable()V

    #@6
    .line 127
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    #@9
    .line 128
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@b
    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@d
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->isOwner()Z

    #@10
    move-result v6

    #@11
    move-object v0, p0

    #@12
    move v4, p1

    #@13
    move v5, p2

    #@14
    invoke-direct/range {v0 .. v6}, Landroid/util/MemoryIntArray;->nativeSet(IJIIZ)V

    #@17
    .line 124
    return-void
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    #@3
    .line 138
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@5
    invoke-direct {p0, v0}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 174
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    #@2
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v0

    #@6
    .line 176
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget v1, p0, Landroid/util/MemoryIntArray;->mOwnerPid:I

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 177
    iget-boolean v1, p0, Landroid/util/MemoryIntArray;->mClientWritable:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 178
    and-int/lit8 v1, p2, -0x2

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@18
    .line 179
    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    #@1a
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 181
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    #@20
    .line 173
    return-void

    #@21
    .line 177
    :cond_0
    const/4 v1, 0x0

    #@22
    goto :goto_0

    #@23
    .line 180
    :catchall_0
    move-exception v1

    #@24
    .line 181
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    #@27
    .line 180
    throw v1
.end method
