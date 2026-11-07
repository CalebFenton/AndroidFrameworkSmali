.class Lsun/nio/fs/UnixFileAttributes;
.super Ljava/lang/Object;
.source "UnixFileAttributes.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;
    }
.end annotation


# instance fields
.field private volatile blacklist group:Ljava/nio/file/attribute/GroupPrincipal;

.field private volatile blacklist key:Lsun/nio/fs/UnixFileKey;

.field private volatile blacklist owner:Ljava/nio/file/attribute/UserPrincipal;

.field private blacklist st_atime_nsec:J

.field private blacklist st_atime_sec:J

.field private blacklist st_birthtime_sec:J

.field private blacklist st_ctime_nsec:J

.field private blacklist st_ctime_sec:J

.field private blacklist st_dev:J

.field private blacklist st_gid:I

.field private blacklist st_ino:J

.field private blacklist st_mode:I

.field private blacklist st_mtime_nsec:J

.field private blacklist st_mtime_sec:J

.field private blacklist st_nlink:I

.field private blacklist st_rdev:J

.field private blacklist st_size:J

.field private blacklist st_uid:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static blacklist get(I)Lsun/nio/fs/UnixFileAttributes;
    .registers 2
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 79
    new-instance v0, Lsun/nio/fs/UnixFileAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileAttributes;-><init>()V

    .line 80
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->fstat(ILsun/nio/fs/UnixFileAttributes;)V

    .line 81
    return-object v0
.end method

.method static blacklist get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    .registers 6
    .param p0, "dfd"    # I
    .param p1, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 88
    new-instance v0, Lsun/nio/fs/UnixFileAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileAttributes;-><init>()V

    .line 89
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-eqz p2, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    const/16 v1, 0x100

    .line 90
    .local v1, "flag":I
    :goto_b
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v2

    invoke-static {p0, v2, v1, v0}, Lsun/nio/fs/UnixNativeDispatcher;->fstatat(I[BILsun/nio/fs/UnixFileAttributes;)V

    .line 91
    return-object v0
.end method

.method static blacklist get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    .registers 3
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 68
    new-instance v0, Lsun/nio/fs/UnixFileAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileAttributes;-><init>()V

    .line 69
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-eqz p1, :cond_b

    .line 70
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->stat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V

    goto :goto_e

    .line 72
    :cond_b
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->lstat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V

    .line 74
    :goto_e
    return-object v0
.end method

.method private static blacklist toFileTime(JJ)Ljava/nio/file/attribute/FileTime;
    .registers 8
    .param p0, "sec"    # J
    .param p2, "nsec"    # J

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_d

    .line 110
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0

    .line 115
    :cond_d
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    add-long/2addr v0, v2

    .line 116
    .local v0, "micro":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    return-object v2
.end method

.method static blacklist toUnixFileAttributes(Ljava/nio/file/attribute/BasicFileAttributes;)Lsun/nio/fs/UnixFileAttributes;
    .registers 2
    .param p0, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 253
    instance-of v0, p0, Lsun/nio/fs/UnixFileAttributes;

    if-eqz v0, :cond_8

    .line 254
    move-object v0, p0

    check-cast v0, Lsun/nio/fs/UnixFileAttributes;

    return-object v0

    .line 255
    :cond_8
    instance-of v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    if-eqz v0, :cond_14

    .line 256
    move-object v0, p0

    check-cast v0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->unwrap()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0

    .line 258
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method blacklist asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2

    .line 247
    invoke-static {p0}, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->wrap(Lsun/nio/fs/UnixFileAttributes;)Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api creationTime()Ljava/nio/file/attribute/FileTime;
    .registers 4

    .line 143
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->birthtimeSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_birthtime_sec:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0

    .line 147
    :cond_f
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method blacklist ctime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .line 121
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_ctime_sec:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_ctime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->toFileTime(JJ)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method blacklist dev()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api fileKey()Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributes;->fileKey()Lsun/nio/fs/UnixFileKey;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fileKey()Lsun/nio/fs/UnixFileKey;
    .registers 6

    .line 181
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    if-nez v0, :cond_19

    .line 182
    monitor-enter p0

    .line 183
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    if-nez v0, :cond_14

    .line 184
    new-instance v0, Lsun/nio/fs/UnixFileKey;

    iget-wide v1, p0, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    iget-wide v3, p0, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/nio/fs/UnixFileKey;-><init>(JJ)V

    iput-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    .line 186
    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0

    .line 188
    :cond_19
    :goto_19
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    return-object v0
.end method

.method blacklist gid()I
    .registers 2

    .line 106
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_gid:I

    return v0
.end method

.method public whitelist test-api group()Ljava/nio/file/attribute/GroupPrincipal;
    .registers 2

    .line 205
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    if-nez v0, :cond_16

    .line 206
    monitor-enter p0

    .line 207
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    if-nez v0, :cond_11

    .line 208
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_gid:I

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->fromGid(I)Lsun/nio/fs/UnixUserPrincipals$Group;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    .line 210
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 212
    :cond_16
    :goto_16
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    return-object v0
.end method

.method blacklist ino()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    return-wide v0
.end method

.method blacklist isDevice()Z
    .registers 3

    .line 125
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    .line 126
    .local v0, "type":I
    sget v1, Lsun/nio/fs/UnixConstants;->S_IFCHR:I

    if-eq v0, v1, :cond_14

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFBLK:I

    if-eq v0, v1, :cond_14

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFIFO:I

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method public whitelist test-api isDirectory()Z
    .registers 3

    .line 158
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api isOther()Z
    .registers 3

    .line 168
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    .line 169
    .local v0, "type":I
    sget v1, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    if-eq v0, v1, :cond_13

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    if-eq v0, v1, :cond_13

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFLNK:I

    if-eq v0, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public whitelist test-api isRegularFile()Z
    .registers 3

    .line 153
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method blacklist isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z
    .registers 6
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;

    .line 96
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    iget-wide v2, p1, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    iget-wide v2, p1, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api isSymbolicLink()Z
    .registers 3

    .line 163
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFLNK:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .line 138
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_atime_sec:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_atime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->toFileTime(JJ)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .line 133
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mtime_sec:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_mtime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->toFileTime(JJ)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method blacklist mode()I
    .registers 2

    .line 100
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    return v0
.end method

.method blacklist nlink()I
    .registers 2

    .line 104
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_nlink:I

    return v0
.end method

.method public whitelist test-api owner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2

    .line 193
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    if-nez v0, :cond_16

    .line 194
    monitor-enter p0

    .line 195
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    if-nez v0, :cond_11

    .line 196
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_uid:I

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->fromUid(I)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    .line 198
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 200
    :cond_16
    :goto_16
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    return-object v0
.end method

.method public whitelist test-api permissions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 217
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IAMB:I

    and-int/2addr v0, v1

    .line 218
    .local v0, "bits":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v1, "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget v2, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_14

    .line 221
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_14
    sget v2, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_1e

    .line 223
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1e
    sget v2, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_28

    .line 225
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_28
    sget v2, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_32

    .line 228
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_32
    sget v2, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_3c

    .line 230
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3c
    sget v2, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_46

    .line 232
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_46
    sget v2, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_50

    .line 235
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_50
    sget v2, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_5a

    .line 237
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5a
    sget v2, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_64

    .line 239
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_64
    return-object v1
.end method

.method blacklist rdev()J
    .registers 3

    .line 103
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_rdev:J

    return-wide v0
.end method

.method public whitelist test-api size()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_size:J

    return-wide v0
.end method

.method blacklist uid()I
    .registers 2

    .line 105
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_uid:I

    return v0
.end method
