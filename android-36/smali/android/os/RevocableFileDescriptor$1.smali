.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/RevocableFileDescriptor;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/RevocableFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method

.method private blacklist checkRevoked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmRevoked(Landroid/os/RevocableFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 134
    return-void

    .line 132
    :cond_9
    new-instance v0, Landroid/system/ErrnoException;

    const-string v1, "RevocableFileDescriptor"

    sget v2, Landroid/system/OsConstants;->EPERM:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public whitelist onFsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 174
    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onFsync()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 176
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 177
    return-void
.end method

.method public whitelist onGetSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 139
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public whitelist onRead(JI[B)I
    .registers 12
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 145
    const/4 v0, 0x0

    move v3, v0

    .line 146
    .local v3, "n":I
    :goto_5
    if-ge v3, p3, :cond_23

    .line 148
    :try_start_7
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_d} :catch_1b

    sub-int v4, p3, v3

    int-to-long v5, v3

    add-long/2addr v5, p1

    move-object v2, p4

    .end local p4    # "data":[B
    .local v2, "data":[B
    :try_start_12
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p4
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_12 .. :try_end_16} :catch_18

    add-int/2addr v3, p4

    .line 149
    goto :goto_24

    .line 150
    :catch_18
    move-exception v0

    move-object p4, v0

    goto :goto_1e

    .end local v2    # "data":[B
    .restart local p4    # "data":[B
    :catch_1b
    move-exception v0

    move-object v2, p4

    move-object p4, v0

    .line 151
    .restart local v2    # "data":[B
    .local p4, "e":Ljava/io/InterruptedIOException;
    :goto_1e
    iget v0, p4, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v3, v0

    .line 152
    .end local p4    # "e":Ljava/io/InterruptedIOException;
    move-object p4, v2

    goto :goto_5

    .line 146
    .end local v2    # "data":[B
    .local p4, "data":[B
    :cond_23
    move-object v2, p4

    .line 154
    .end local p4    # "data":[B
    .restart local v2    # "data":[B
    :goto_24
    return v3
.end method

.method public whitelist onRelease()V
    .registers 3

    .line 181
    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fputmRevoked(Landroid/os/RevocableFileDescriptor;Z)V

    .line 183
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 184
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 185
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmOnCloseListener(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    .line 187
    :cond_29
    return-void
.end method

.method public whitelist onWrite(JI[B)I
    .registers 12
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 160
    const/4 v0, 0x0

    move v3, v0

    .line 161
    .local v3, "n":I
    :goto_5
    if-ge v3, p3, :cond_23

    .line 163
    :try_start_7
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-$$Nest$fgetmInner(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_d} :catch_1b

    sub-int v4, p3, v3

    int-to-long v5, v3

    add-long/2addr v5, p1

    move-object v2, p4

    .end local p4    # "data":[B
    .local v2, "data":[B
    :try_start_12
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p4
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_12 .. :try_end_16} :catch_18

    add-int/2addr v3, p4

    .line 164
    goto :goto_24

    .line 165
    :catch_18
    move-exception v0

    move-object p4, v0

    goto :goto_1e

    .end local v2    # "data":[B
    .restart local p4    # "data":[B
    :catch_1b
    move-exception v0

    move-object v2, p4

    move-object p4, v0

    .line 166
    .restart local v2    # "data":[B
    .local p4, "e":Ljava/io/InterruptedIOException;
    :goto_1e
    iget v0, p4, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v3, v0

    .line 167
    .end local p4    # "e":Ljava/io/InterruptedIOException;
    move-object p4, v2

    goto :goto_5

    .line 161
    .end local v2    # "data":[B
    .local p4, "data":[B
    :cond_23
    move-object v2, p4

    .line 169
    .end local p4    # "data":[B
    .restart local v2    # "data":[B
    :goto_24
    return v3
.end method
