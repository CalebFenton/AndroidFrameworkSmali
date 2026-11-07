.class abstract Lsun/nio/fs/UnixFileStore;
.super Ljava/nio/file/FileStore;
.source "UnixFileStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileStore$FeatureStatus;
    }
.end annotation


# static fields
.field private static final blacklist loadLock:Ljava/lang/Object;

.field private static volatile blacklist props:Ljava/util/Properties;


# instance fields
.field private final blacklist dev:J

.field private final blacklist entry:Lsun/nio/fs/UnixMountEntry;

.field private final blacklist file:Lsun/nio/fs/UnixPath;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/nio/fs/UnixFileStore;->loadLock:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V
    .registers 7
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    .line 66
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    iput-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    .line 67
    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dev()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0}, Lsun/nio/fs/UnixFileStore;->devFor(Lsun/nio/fs/UnixPath;)J

    move-result-wide v0

    goto :goto_23

    :cond_1f
    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dev()J

    move-result-wide v0

    :goto_23
    iput-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    .line 68
    iput-object p2, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 69
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;)V
    .registers 4
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    .line 60
    iput-object p1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    .line 61
    invoke-static {p1}, Lsun/nio/fs/UnixFileStore;->devFor(Lsun/nio/fs/UnixPath;)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    .line 62
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->findMountEntry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 63
    return-void
.end method

.method private static blacklist devFor(Lsun/nio/fs/UnixPath;)J
    .registers 4
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v0
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_9} :catch_a

    return-wide v0

    .line 53
    :catch_a
    move-exception v0

    .line 54
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 55
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private blacklist readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->get(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0
    :try_end_6
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 109
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method blacklist checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v0
.end method

.method blacklist dev()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    return-wide v0
.end method

.method blacklist entry()Lsun/nio/fs/UnixMountEntry;
    .registers 2

    .line 85
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "ob"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 187
    return v0

    .line 188
    :cond_4
    instance-of v1, p1, Lsun/nio/fs/UnixFileStore;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 189
    return v2

    .line 190
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixFileStore;

    .line 191
    .local v1, "other":Lsun/nio/fs/UnixFileStore;
    iget-wide v3, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    iget-wide v5, v1, Lsun/nio/fs/UnixFileStore;->dev:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    iget-object v3, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 192
    invoke-virtual {v3}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v3

    iget-object v4, v1, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v4}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 193
    invoke-virtual {v3}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v4}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 191
    :goto_3b
    return v0
.end method

.method blacklist file()Lsun/nio/fs/UnixPath;
    .registers 2

    .line 77
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method abstract blacklist findMountEntry()Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const-string v0, "totalSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 148
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 149
    :cond_11
    const-string v0, "usableSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 150
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getUsableSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 151
    :cond_22
    const-string v0, "unallocatedSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 152
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getUnallocatedSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 153
    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBlockSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 128
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileStoreAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 140
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p1, :cond_7

    .line 142
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/nio/file/attribute/FileStoreAttributeView;

    return-object v0

    .line 141
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getTotalSpace()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 116
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->totalBlocks()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api getUnallocatedSpace()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 134
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->freeBlocks()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api getUsableSpace()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 122
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v1

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->availableBlocks()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 198
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api supportsFileAttributeView(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation

    .line 158
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/FileAttributeView;>;"
    if-eqz p1, :cond_20

    .line 160
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 161
    return v1

    .line 162
    :cond_8
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p1, v0, :cond_12

    goto :goto_13

    .line 170
    :cond_12
    return v2

    .line 166
    :cond_13
    :goto_13
    const-string v0, "posix"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v0

    .line 168
    .local v0, "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    if-eq v0, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    .line 159
    .end local v0    # "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api supportsFileAttributeView(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 175
    const-string v0, "basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "unix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_31

    .line 177
    :cond_11
    const-string v0, "posix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 178
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 179
    :cond_20
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 180
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 181
    :cond_2f
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_31
    :goto_31
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api type()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
