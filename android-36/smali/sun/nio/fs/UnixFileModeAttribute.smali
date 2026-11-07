.class Lsun/nio/fs/UnixFileModeAttribute;
.super Ljava/lang/Object;
.source "UnixFileModeAttribute.java"


# static fields
.field static final blacklist ALL_PERMISSIONS:I

.field static final blacklist ALL_READWRITE:I

.field static final blacklist TEMPFILE_PERMISSIONS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    .line 37
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 42
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->TEMPFILE_PERMISSIONS:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static varargs blacklist toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I
    .registers 8
    .param p0, "defaultMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)I"
        }
    .end annotation

    .line 70
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    move v0, p0

    .line 71
    .local v0, "mode":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4c

    aget-object v3, p1, v2

    .line 72
    .local v3, "attr":Ljava/nio/file/attribute/FileAttribute;, "Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {v3}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "name":Ljava/lang/String;
    const-string v5, "posix:permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "unix:permissions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_3f

    .line 74
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' not supported as initial attribute"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_3f
    :goto_3f
    invoke-interface {v3}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v5}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v0

    .line 71
    .end local v3    # "attr":Ljava/nio/file/attribute/FileAttribute;, "Ljava/nio/file/attribute/FileAttribute<*>;"
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 79
    :cond_4c
    return v0
.end method

.method static blacklist toUnixMode(Ljava/util/Set;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)I"
        }
    .end annotation

    .line 49
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, "mode":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/PosixFilePermission;

    .line 51
    .local v2, "perm":Ljava/nio/file/attribute/PosixFilePermission;
    if-eqz v2, :cond_43

    .line 53
    sget-object v3, Lsun/nio/fs/UnixFileModeAttribute$1;->$SwitchMap$java$nio$file$attribute$PosixFilePermission:[I

    invoke-virtual {v2}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4a

    goto :goto_42

    .line 62
    :pswitch_1f
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 61
    :pswitch_23
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 60
    :pswitch_27
    sget v3, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 59
    :pswitch_2b
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 58
    :pswitch_2f
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 57
    :pswitch_33
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 56
    :pswitch_37
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 55
    :pswitch_3b
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v3

    goto :goto_42

    .line 54
    :pswitch_3f
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    or-int/2addr v0, v3

    .line 64
    .end local v2    # "perm":Ljava/nio/file/attribute/PosixFilePermission;
    :goto_42
    goto :goto_5

    .line 52
    .restart local v2    # "perm":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_43
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 65
    .end local v2    # "perm":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_49
    return v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
