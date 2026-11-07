.class public Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/vcn/util/PersistableBundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockingReadWriteHelper"
.end annotation


# instance fields
.field private final blacklist mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist mPath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 337
    const-string v0, "fileName was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mPath:Ljava/lang/String;

    .line 338
    return-void
.end method


# virtual methods
.method public blacklist readFromDisk()Landroid/os/PersistableBundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 349
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_42

    if-nez v1, :cond_22

    .line 351
    nop

    .line 358
    iget-object v1, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    const/4 v1, 0x0

    return-object v1

    .line 354
    :cond_22
    :try_start_22
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_42

    .line 355
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_27
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_38

    .line 356
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_42

    .line 358
    iget-object v3, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 355
    return-object v2

    .line 354
    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    :goto_41
    throw v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 358
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 359
    throw v0
.end method

.method public blacklist writeToDisk(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    const-string v0, "bundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 377
    :cond_22
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_42

    .line 378
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_27
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_38

    .line 379
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_42

    .line 381
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    iget-object v0, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    nop

    .line 383
    return-void

    .line 377
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    .end local p1    # "bundle":Landroid/os/PersistableBundle;
    :goto_41
    throw v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 381
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    .restart local p1    # "bundle":Landroid/os/PersistableBundle;
    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    throw v0
.end method
