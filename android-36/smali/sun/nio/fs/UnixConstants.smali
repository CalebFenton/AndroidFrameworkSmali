.class Lsun/nio/fs/UnixConstants;
.super Ljava/lang/Object;
.source "UnixConstants.java"


# static fields
.field static final blacklist AT_REMOVEDIR:I = 0x200

.field static final blacklist AT_SYMLINK_NOFOLLOW:I = 0x100

.field static final blacklist EACCES:I

.field static final blacklist EAGAIN:I

.field static final blacklist EEXIST:I

.field static final blacklist EINVAL:I

.field static final blacklist EISDIR:I

.field static final blacklist ELOOP:I

.field static final blacklist EMFILE:I

.field static final blacklist ENODATA:I

.field static final blacklist ENOENT:I

.field static final blacklist ENOSPC:I

.field static final blacklist ENOSYS:I

.field static final blacklist ENOTDIR:I

.field static final blacklist ENOTEMPTY:I

.field static final blacklist ERANGE:I

.field static final blacklist EROFS:I

.field static final blacklist EXDEV:I

.field static final blacklist F_OK:I

.field static final blacklist O_APPEND:I

.field static final blacklist O_CREAT:I

.field static final blacklist O_DSYNC:I

.field static final blacklist O_EXCL:I

.field static final blacklist O_NOFOLLOW:I

.field static final blacklist O_RDONLY:I

.field static final blacklist O_RDWR:I

.field static final blacklist O_SYNC:I

.field static final blacklist O_TRUNC:I

.field static final blacklist O_WRONLY:I

.field static final blacklist R_OK:I

.field static final blacklist S_IAMB:I

.field static final blacklist S_IFBLK:I

.field static final blacklist S_IFCHR:I

.field static final blacklist S_IFDIR:I

.field static final blacklist S_IFIFO:I

.field static final blacklist S_IFLNK:I

.field static final blacklist S_IFMT:I

.field static final blacklist S_IFREG:I

.field static final blacklist S_IRGRP:I

.field static final blacklist S_IROTH:I

.field static final blacklist S_IRUSR:I

.field static final blacklist S_IWGRP:I

.field static final blacklist S_IWOTH:I

.field static final blacklist S_IWUSR:I

.field static final blacklist S_IXGRP:I

.field static final blacklist S_IXOTH:I

.field static final blacklist S_IXUSR:I

.field static final blacklist W_OK:I

.field static final blacklist X_OK:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 41
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    .line 43
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_RDWR:I

    .line 45
    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_APPEND:I

    .line 47
    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    .line 49
    sget v0, Landroid/system/OsConstants;->O_EXCL:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    .line 51
    sget v0, Landroid/system/OsConstants;->O_TRUNC:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_TRUNC:I

    .line 53
    sget v0, Landroid/system/OsConstants;->O_SYNC:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_SYNC:I

    .line 55
    sget v0, Landroid/system/OsConstants;->O_DSYNC:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_DSYNC:I

    .line 57
    sget v0, Landroid/system/OsConstants;->O_NOFOLLOW:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    .line 59
    invoke-static {}, Lsun/nio/fs/UnixConstants;->get_S_IAMB()I

    move-result v0

    sput v0, Lsun/nio/fs/UnixConstants;->S_IAMB:I

    .line 61
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    .line 63
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    .line 65
    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    .line 67
    sget v0, Landroid/system/OsConstants;->S_IRGRP:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    .line 69
    sget v0, Landroid/system/OsConstants;->S_IWGRP:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    .line 71
    sget v0, Landroid/system/OsConstants;->S_IXGRP:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    .line 73
    sget v0, Landroid/system/OsConstants;->S_IROTH:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    .line 75
    sget v0, Landroid/system/OsConstants;->S_IWOTH:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    .line 77
    sget v0, Landroid/system/OsConstants;->S_IXOTH:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    .line 79
    sget v0, Landroid/system/OsConstants;->S_IFMT:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    .line 81
    sget v0, Landroid/system/OsConstants;->S_IFREG:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    .line 83
    sget v0, Landroid/system/OsConstants;->S_IFDIR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    .line 85
    sget v0, Landroid/system/OsConstants;->S_IFLNK:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFLNK:I

    .line 87
    sget v0, Landroid/system/OsConstants;->S_IFCHR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFCHR:I

    .line 89
    sget v0, Landroid/system/OsConstants;->S_IFBLK:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFBLK:I

    .line 91
    sget v0, Landroid/system/OsConstants;->S_IFIFO:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFIFO:I

    .line 93
    sget v0, Landroid/system/OsConstants;->R_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->R_OK:I

    .line 95
    sget v0, Landroid/system/OsConstants;->W_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->W_OK:I

    .line 97
    sget v0, Landroid/system/OsConstants;->X_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->X_OK:I

    .line 99
    sget v0, Landroid/system/OsConstants;->F_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->F_OK:I

    .line 101
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOENT:I

    .line 103
    sget v0, Landroid/system/OsConstants;->EACCES:I

    sput v0, Lsun/nio/fs/UnixConstants;->EACCES:I

    .line 105
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    sput v0, Lsun/nio/fs/UnixConstants;->EEXIST:I

    .line 107
    sget v0, Landroid/system/OsConstants;->ENOTDIR:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    .line 109
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    sput v0, Lsun/nio/fs/UnixConstants;->EINVAL:I

    .line 111
    sget v0, Landroid/system/OsConstants;->EXDEV:I

    sput v0, Lsun/nio/fs/UnixConstants;->EXDEV:I

    .line 113
    sget v0, Landroid/system/OsConstants;->EISDIR:I

    sput v0, Lsun/nio/fs/UnixConstants;->EISDIR:I

    .line 115
    sget v0, Landroid/system/OsConstants;->ENOTEMPTY:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    .line 117
    sget v0, Landroid/system/OsConstants;->ENOSPC:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOSPC:I

    .line 119
    sget v0, Landroid/system/OsConstants;->EAGAIN:I

    sput v0, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    .line 121
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOSYS:I

    .line 123
    sget v0, Landroid/system/OsConstants;->ELOOP:I

    sput v0, Lsun/nio/fs/UnixConstants;->ELOOP:I

    .line 125
    sget v0, Landroid/system/OsConstants;->EROFS:I

    sput v0, Lsun/nio/fs/UnixConstants;->EROFS:I

    .line 127
    sget v0, Landroid/system/OsConstants;->ENODATA:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENODATA:I

    .line 129
    sget v0, Landroid/system/OsConstants;->ERANGE:I

    sput v0, Lsun/nio/fs/UnixConstants;->ERANGE:I

    .line 131
    sget v0, Landroid/system/OsConstants;->EMFILE:I

    sput v0, Lsun/nio/fs/UnixConstants;->EMFILE:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist get_S_IAMB()I
    .registers 2

    .line 136
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sget v1, Landroid/system/OsConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    return v0
.end method
