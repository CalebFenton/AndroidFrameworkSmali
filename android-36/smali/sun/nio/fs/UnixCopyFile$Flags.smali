.class Lsun/nio/fs/UnixCopyFile$Flags;
.super Ljava/lang/Object;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixCopyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# instance fields
.field blacklist atomicMove:Z

.field blacklist copyBasicAttributes:Z

.field blacklist copyNonPosixAttributes:Z

.field blacklist copyPosixAttributes:Z

.field blacklist failIfUnableToCopyBasic:Z

.field blacklist failIfUnableToCopyNonPosix:Z

.field blacklist failIfUnableToCopyPosix:Z

.field blacklist followLinks:Z

.field blacklist interruptible:Z

.field blacklist replaceExisting:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs blacklist fromCopyOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;
    .registers 8
    .param p0, "options"    # [Ljava/nio/file/CopyOption;

    .line 65
    new-instance v0, Lsun/nio/fs/UnixCopyFile$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixCopyFile$Flags;-><init>()V

    .line 66
    .local v0, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    .line 67
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_44

    aget-object v5, p0, v4

    .line 68
    .local v5, "option":Ljava/nio/file/CopyOption;
    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v5, v6, :cond_16

    .line 69
    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    .line 70
    goto :goto_31

    .line 72
    :cond_16
    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v5, v6, :cond_1d

    .line 73
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    .line 74
    goto :goto_31

    .line 76
    :cond_1d
    sget-object v6, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    if-ne v5, v6, :cond_2a

    .line 79
    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    .line 80
    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    .line 81
    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    .line 82
    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    .line 83
    goto :goto_31

    .line 85
    :cond_2a
    sget-object v6, Lcom/sun/nio/file/ExtendedCopyOption;->INTERRUPTIBLE:Lcom/sun/nio/file/ExtendedCopyOption;

    if-ne v5, v6, :cond_34

    .line 86
    iput-boolean v1, v0, Lsun/nio/fs/UnixCopyFile$Flags;->interruptible:Z

    .line 87
    nop

    .line 67
    .end local v5    # "option":Ljava/nio/file/CopyOption;
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 89
    .restart local v5    # "option":Ljava/nio/file/CopyOption;
    :cond_34
    if-nez v5, :cond_3c

    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 91
    :cond_3c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported copy option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v5    # "option":Ljava/nio/file/CopyOption;
    :cond_44
    return-object v0
.end method

.method static varargs blacklist fromMoveOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;
    .registers 7
    .param p0, "options"    # [Ljava/nio/file/CopyOption;

    .line 97
    new-instance v0, Lsun/nio/fs/UnixCopyFile$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixCopyFile$Flags;-><init>()V

    .line 98
    .local v0, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x1

    if-ge v2, v1, :cond_32

    aget-object v4, p0, v2

    .line 99
    .local v4, "option":Ljava/nio/file/CopyOption;
    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_13

    .line 100
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->atomicMove:Z

    .line 101
    goto :goto_1f

    .line 103
    :cond_13
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_1a

    .line 104
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    .line 105
    goto :goto_1f

    .line 107
    :cond_1a
    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v4, v3, :cond_22

    .line 109
    nop

    .line 98
    .end local v4    # "option":Ljava/nio/file/CopyOption;
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 111
    .restart local v4    # "option":Ljava/nio/file/CopyOption;
    :cond_22
    if-nez v4, :cond_2a

    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 113
    :cond_2a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported copy option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v4    # "option":Ljava/nio/file/CopyOption;
    :cond_32
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    .line 119
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    .line 120
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    .line 121
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    .line 122
    return-object v0
.end method
