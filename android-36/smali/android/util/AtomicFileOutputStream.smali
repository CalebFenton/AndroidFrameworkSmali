.class public Landroid/util/AtomicFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "AtomicFileOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AtomicFileOutputStream"


# instance fields
.field private blacklist mClosed:Z

.field private final blacklist mFile:Landroid/util/AtomicFile;

.field private final blacklist mOutStream:Ljava/io/FileOutputStream;

.field private blacklist mWritingSuccessful:Z


# direct methods
.method public constructor blacklist <init>(Landroid/util/AtomicFile;)V
    .registers 3
    .param p1, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;)V

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;)V
    .registers 4
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "oStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 49
    iput-object p1, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    .line 50
    iput-object p2, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 71
    iget-object v0, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    monitor-enter v0

    .line 72
    :try_start_6
    iget-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mClosed:Z

    if-eqz v1, :cond_c

    .line 77
    monitor-exit v0

    return-void

    .line 79
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mClosed:Z

    .line 80
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_24

    .line 82
    iget-boolean v0, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    if-eqz v0, :cond_1c

    .line 83
    iget-object v0, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    iget-object v1, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_23

    .line 85
    :cond_1c
    iget-object v0, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    iget-object v1, p0, Landroid/util/AtomicFileOutputStream;->mOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 87
    :goto_23
    return-void

    .line 80
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist markSuccess()V
    .registers 3

    .line 57
    iget-boolean v0, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    if-nez v0, :cond_8

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    .line 61
    return-void

    .line 58
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AtomicFileOutputStream success is already marked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtomicFileOutputStream[mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/AtomicFileOutputStream;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWritingSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mWritingSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/util/AtomicFileOutputStream;->mClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
