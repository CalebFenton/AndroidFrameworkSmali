.class final Landroid/os/RecoverySystem$1;
.super Ljava/io/InputStream;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field lastPercent:I

.field lastPublishTime:J

.field soFar:J

.field toRead:J

.field final synthetic val$commentSize:I

.field final synthetic val$fileLen:J

.field final synthetic val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;

.field final synthetic val$startTimeMillis:J


# direct methods
.method constructor <init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 4
    .param p1, "val$fileLen"    # J
    .param p3, "val$commentSize"    # I
    .param p4, "val$startTimeMillis"    # J
    .param p6, "val$raf"    # Ljava/io/RandomAccessFile;
    .param p7, "val$listenerForInner"    # Landroid/os/RecoverySystem$ProgressListener;

    #@0
    .prologue
    .line 252
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    #@2
    iput p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    #@4
    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    #@6
    iput-object p6, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    #@8
    iput-object p7, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    #@a
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@d
    .line 255
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    #@f
    iget v2, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    #@11
    int-to-long v2, v2

    #@12
    sub-long/2addr v0, v2

    #@13
    const-wide/16 v2, 0x2

    #@15
    sub-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->toRead:J

    #@18
    .line 256
    const-wide/16 v0, 0x0

    #@1a
    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@1c
    .line 258
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    #@1f
    .line 259
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    #@21
    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    #@23
    .line 252
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public read([BII)I
    .locals 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 268
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@3
    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->toRead:J

    #@5
    cmp-long v5, v6, v8

    #@7
    if-ltz v5, :cond_0

    #@9
    .line 269
    return v10

    #@a
    .line 271
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 272
    return v10

    #@15
    .line 275
    :cond_1
    move v4, p3

    #@16
    .line 276
    .local v4, "size":I
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@18
    int-to-long v8, p3

    #@19
    add-long/2addr v6, v8

    #@1a
    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->toRead:J

    #@1c
    cmp-long v5, v6, v8

    #@1e
    if-lez v5, :cond_2

    #@20
    .line 277
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->toRead:J

    #@22
    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@24
    sub-long/2addr v6, v8

    #@25
    long-to-int v4, v6

    #@26
    .line 279
    :cond_2
    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    #@28
    invoke-virtual {v5, p1, p2, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    #@2b
    move-result v3

    #@2c
    .line 280
    .local v3, "read":I
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@2e
    int-to-long v8, v3

    #@2f
    add-long/2addr v6, v8

    #@30
    iput-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@32
    .line 282
    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@39
    move-result-wide v0

    #@3a
    .line 284
    .local v0, "now":J
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->soFar:J

    #@3c
    const-wide/16 v8, 0x64

    #@3e
    mul-long/2addr v6, v8

    #@3f
    iget-wide v8, p0, Landroid/os/RecoverySystem$1;->toRead:J

    #@41
    div-long/2addr v6, v8

    #@42
    long-to-int v2, v6

    #@43
    .line 285
    .local v2, "p":I
    iget v5, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    #@45
    if-le v2, v5, :cond_3

    #@47
    .line 286
    iget-wide v6, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    #@49
    sub-long v6, v0, v6

    #@4b
    const-wide/16 v8, 0x1f4

    #@4d
    cmp-long v5, v6, v8

    #@4f
    if-lez v5, :cond_3

    #@51
    .line 287
    iput v2, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    #@53
    .line 288
    iput-wide v0, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    #@55
    .line 289
    iget-object v5, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    #@57
    iget v6, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    #@59
    invoke-interface {v5, v6}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@5c
    .line 293
    .end local v0    # "now":J
    .end local v2    # "p":I
    :cond_3
    return v3
.end method
