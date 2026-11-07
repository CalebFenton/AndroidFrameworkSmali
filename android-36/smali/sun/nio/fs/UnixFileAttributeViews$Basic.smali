.class Lsun/nio/fs/UnixFileAttributeViews$Basic;
.super Lsun/nio/fs/AbstractBasicFileAttributeView;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Basic"
.end annotation


# instance fields
.field protected final blacklist file:Lsun/nio/fs/UnixPath;

.field protected final blacklist followLinks:Z


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .line 42
    invoke-direct {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;-><init>()V

    .line 43
    iput-object p1, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    .line 44
    iput-boolean p2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 51
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    .line 52
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 53
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1
    :try_end_11
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_11} :catch_12

    return-object v1

    .line 54
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_12
    move-exception v0

    .line 55
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 56
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .registers 15
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "createTime"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 68
    return-void

    .line 72
    :cond_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 74
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0

    .line 79
    .local v0, "fd":I
    if-eqz p1, :cond_16

    if-nez p2, :cond_31

    .line 81
    :cond_16
    :try_start_16
    invoke-static {v0}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    .line 82
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-nez p1, :cond_21

    .line 83
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    move-object p1, v2

    .line 84
    :cond_21
    if-nez p2, :cond_28

    .line 85
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2
    :try_end_27
    .catch Lsun/nio/fs/UnixException; {:try_start_16 .. :try_end_27} :catch_2b
    .catchall {:try_start_16 .. :try_end_27} :catchall_29

    move-object p2, v2

    .line 88
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_28
    goto :goto_31

    .line 126
    :catchall_29
    move-exception v1

    goto :goto_91

    .line 86
    :catch_2b
    move-exception v1

    .line 87
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_2c
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 92
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_31
    :goto_31
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 93
    .local v1, "modValue":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_29

    .line 95
    .local v3, "accessValue":J
    const/4 v5, 0x0

    .line 97
    .local v5, "retry":Z
    const-wide/16 v6, 0x0

    :try_start_40
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 98
    invoke-static {v0, v3, v4, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V

    goto :goto_4f

    .line 100
    :cond_4a
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v8, v3, v4, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_4f
    .catch Lsun/nio/fs/UnixException; {:try_start_40 .. :try_end_4f} :catch_50
    .catchall {:try_start_40 .. :try_end_4f} :catchall_29

    .line 111
    :goto_4f
    goto :goto_68

    .line 102
    :catch_50
    move-exception v8

    .line 105
    .local v8, "x":Lsun/nio/fs/UnixException;
    :try_start_51
    invoke-virtual {v8}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v9, v10, :cond_63

    cmp-long v9, v1, v6

    if-ltz v9, :cond_61

    cmp-long v9, v3, v6

    if-gez v9, :cond_63

    .line 107
    :cond_61
    const/4 v5, 0x1

    goto :goto_68

    .line 109
    :cond_63
    iget-object v9, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v8, v9}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_29

    .line 112
    .end local v8    # "x":Lsun/nio/fs/UnixException;
    :goto_68
    if-eqz v5, :cond_8c

    .line 113
    cmp-long v8, v1, v6

    if-gez v8, :cond_70

    const-wide/16 v1, 0x0

    .line 114
    :cond_70
    cmp-long v6, v3, v6

    if-gez v6, :cond_76

    const-wide/16 v3, 0x0

    .line 116
    :cond_76
    :try_start_76
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 117
    invoke-static {v0, v3, v4, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V

    goto :goto_85

    .line 119
    :cond_80
    iget-object v6, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v6, v3, v4, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_85
    .catch Lsun/nio/fs/UnixException; {:try_start_76 .. :try_end_85} :catch_86
    .catchall {:try_start_76 .. :try_end_85} :catchall_29

    .line 123
    :goto_85
    goto :goto_8c

    .line 121
    :catch_86
    move-exception v6

    .line 122
    .local v6, "x":Lsun/nio/fs/UnixException;
    :try_start_87
    iget-object v7, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_29

    .line 126
    .end local v1    # "modValue":J
    .end local v3    # "accessValue":J
    .end local v5    # "retry":Z
    .end local v6    # "x":Lsun/nio/fs/UnixException;
    :cond_8c
    :goto_8c
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 127
    nop

    .line 128
    return-void

    .line 126
    :goto_91
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 127
    throw v1
.end method
