.class Landroid/app/ActivityThread$AndroidOs;
.super Llibcore/io/ForwardingOs;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidOs"
.end annotation


# direct methods
.method private constructor blacklist <init>(Llibcore/io/Os;)V
    .registers 2
    .param p1, "os"    # Llibcore/io/Os;

    .line 8898
    invoke-direct {p0, p1}, Llibcore/io/ForwardingOs;-><init>(Llibcore/io/Os;)V

    .line 8899
    return-void
.end method

.method private blacklist deleteDeprecatedDataPath(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8920
    invoke-static {p1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8921
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8923
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 8924
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8926
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_33
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3b

    .line 8933
    nop

    .line 8934
    return-void

    .line 8927
    :cond_3b
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local p0    # "this":Landroid/app/ActivityThread$AndroidOs;
    .end local p1    # "path":Ljava/lang/String;
    throw v2
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_41} :catch_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_41} :catch_41

    .line 8931
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local p0    # "this":Landroid/app/ActivityThread$AndroidOs;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_41
    move-exception v2

    .line 8932
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 8929
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4e
    move-exception v2

    .line 8930
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->EACCES:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public static blacklist install()V
    .registers 2

    .line 8893
    nop

    :cond_1
    invoke-static {}, Llibcore/io/Os;->getDefault()Llibcore/io/Os;

    move-result-object v0

    .line 8894
    .local v0, "def":Llibcore/io/Os;
    new-instance v1, Landroid/app/ActivityThread$AndroidOs;

    invoke-direct {v1, v0}, Landroid/app/ActivityThread$AndroidOs;-><init>(Llibcore/io/Os;)V

    invoke-static {v0, v1}, Llibcore/io/Os;->compareAndSetDefault(Llibcore/io/Os;Llibcore/io/Os;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8895
    return-void
.end method

.method private blacklist openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8902
    invoke-static {p1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8903
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8905
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 8906
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8908
    .local v1, "cr":Landroid/content/ContentResolver;
    :try_start_32
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 8909
    .local v2, "fd":Ljava/io/FileDescriptor;
    nop

    .line 8910
    invoke-static {p2}, Landroid/os/FileUtils;->translateModePosixToString(I)Ljava/lang/String;

    move-result-object v3

    .line 8909
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 8910
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    .line 8909
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_47} :catch_55
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_47} :catch_48

    .line 8911
    return-object v2

    .line 8914
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_48
    move-exception v2

    .line 8915
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 8912
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_55
    move-exception v2

    .line 8913
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/system/OsConstants;->EACCES:I

    invoke-direct {v3, v4, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method


# virtual methods
.method public blacklist test-api access(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8938
    if-eqz p1, :cond_18

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8940
    nop

    .line 8941
    invoke-static {p2}, Landroid/os/FileUtils;->translateModeAccessToPosix(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread$AndroidOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 8940
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 8942
    const/4 v0, 0x1

    return v0

    .line 8944
    :cond_18
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist test-api open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8950
    if-eqz p1, :cond_f

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8951
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread$AndroidOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 8953
    :cond_f
    invoke-super {p0, p1, p2, p3}, Llibcore/io/ForwardingOs;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8982
    if-eqz p1, :cond_e

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8983
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$AndroidOs;->deleteDeprecatedDataPath(Ljava/lang/String;)V

    goto :goto_11

    .line 8985
    :cond_e
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->remove(Ljava/lang/String;)V

    .line 8987
    :goto_11
    return-void
.end method

.method public blacklist test-api rename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8992
    :try_start_0
    invoke-super {p0, p1, p2}, Llibcore/io/ForwardingOs;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 9014
    goto :goto_59

    .line 8993
    :catch_4
    move-exception v0

    .line 9001
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EXDEV:I

    if-ne v1, v2, :cond_61

    const-string v1, "/storage/emulated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 9002
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 9003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recovering failed rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9005
    :try_start_3b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_58} :catch_5a

    .line 9010
    nop

    .line 9015
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_59
    return-void

    .line 9007
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :catch_5a
    move-exception v1

    .line 9008
    .local v1, "e2":Ljava/io/IOException;
    const-string v3, "Rename recovery failed "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9009
    throw v0

    .line 9012
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_61
    throw v0
.end method

.method public blacklist test-api stat(Ljava/lang/String;)Landroid/system/StructStat;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8959
    if-eqz p1, :cond_1d

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 8960
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread$AndroidOs;->openDeprecatedDataPath(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 8962
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_10
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 8964
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 8962
    return-object v1

    .line 8964
    :catchall_18
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 8965
    throw v1

    .line 8967
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_1d
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api unlink(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 8973
    if-eqz p1, :cond_e

    const-string v0, "/mnt/content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8974
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$AndroidOs;->deleteDeprecatedDataPath(Ljava/lang/String;)V

    goto :goto_11

    .line 8976
    :cond_e
    invoke-super {p0, p1}, Llibcore/io/ForwardingOs;->unlink(Ljava/lang/String;)V

    .line 8978
    :goto_11
    return-void
.end method
