.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidUserSysTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final blacklist REMOVE_UID_PROC_FILE:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private final blacklist mBuffer:[J

.field private final blacklist mUsrSysTime:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V
    .registers 5
    .param p1, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p2, "throttle"    # Z
    .param p3, "clock"    # Lcom/android/internal/os/Clock;

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    .line 228
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "throttle"    # Z

    .line 217
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 218
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .registers 4
    .param p1, "throttle"    # Z
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 221
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getUserSysTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    .line 222
    return-void
.end method

.method private blacklist removeUidsFromKernelModule(II)V
    .registers 8
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 309
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing uids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 311
    .local v0, "oldMask":I
    :try_start_26
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_58
    .catchall {:try_start_26 .. :try_end_2d} :catchall_56

    .line 312
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_48
    .catchall {:try_start_2d .. :try_end_48} :catchall_4c

    .line 314
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_58
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    .line 318
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_82

    .line 311
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v3

    :try_start_52
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "oldMask":I
    .end local p0    # "this":Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
    .end local p1    # "startUid":I
    .end local p2    # "endUid":I
    :goto_55
    throw v2
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_58
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 318
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "oldMask":I
    .restart local p0    # "this":Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
    .restart local p1    # "startUid":I
    .restart local p2    # "endUid":I
    :catchall_56
    move-exception v1

    goto :goto_87

    .line 314
    :catch_58
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/IOException;
    :try_start_59
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to remove uids "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from uid_cputime module"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_59 .. :try_end_81} :catchall_56

    .line 318
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_82
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :goto_87
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 319
    throw v1
.end method


# virtual methods
.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 270
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mThrottle:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 271
    .local v0, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    if-nez v0, :cond_12

    .line 284
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 272
    :cond_11
    return-void

    .line 275
    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    move-object v3, v1

    .local v3, "buf":Ljava/nio/CharBuffer;
    if-eqz v1, :cond_5c

    .line 276
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    invoke-static {v3, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_3f

    .line 277
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    goto :goto_12

    .line 280
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v4, v4, v2

    const/4 v6, 0x0

    aput-wide v4, v1, v6

    .line 281
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v1, v2

    .line 282
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v4, v1, v6

    long-to-int v1, v4

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    invoke-interface {p1, v1, v4}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_62

    goto :goto_12

    .line 284
    .end local v3    # "buf":Ljava/nio/CharBuffer;
    :cond_5c
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 285
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_61
    return-void

    .line 270
    .restart local v0    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_62
    move-exception v1

    if-eqz v0, :cond_6d

    :try_start_65
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    throw v1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .registers 21
    .param p2, "forceRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 232
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " s="

    iget-object v3, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mThrottle:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_13

    if-eqz p2, :cond_11

    goto :goto_13

    :cond_11
    move v4, v5

    goto :goto_14

    :cond_13
    :goto_13
    move v4, v6

    :goto_14
    invoke-virtual {v3, v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v3

    .line 233
    .local v3, "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    if-nez v3, :cond_20

    .line 265
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 234
    :cond_1f
    return-void

    .line 237
    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v4

    move-object v7, v4

    .local v7, "buf":Ljava/nio/CharBuffer;
    if-eqz v4, :cond_104

    .line 238
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    invoke-static {v7, v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v4

    const/4 v8, 0x3

    if-ge v4, v8, :cond_4d

    .line 239
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    goto :goto_20

    .line 242
    :cond_4d
    iget-object v4, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v8, v4, v5

    long-to-int v4, v8

    .line 243
    .local v4, "uid":I
    iget-object v8, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    .line 244
    .local v8, "lastTimes":[J
    const/4 v9, 0x2

    if-nez v8, :cond_65

    .line 245
    new-array v10, v9, [J

    move-object v8, v10

    .line 246
    iget-object v10, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    :cond_65
    iget-object v10, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v10, v10, v6

    .line 249
    .local v10, "currUsrTimeUs":J
    iget-object v12, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v12, v12, v9

    .line 250
    .local v12, "currSysTimeUs":J
    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v8, v5

    sub-long v14, v10, v14

    aput-wide v14, v9, v5

    .line 251
    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v8, v6

    sub-long v14, v12, v14

    aput-wide v14, v9, v6

    .line 253
    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v9, v5

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-ltz v9, :cond_b4

    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v9, v6

    cmp-long v9, v14, v16

    if-gez v9, :cond_90

    goto :goto_b4

    .line 257
    :cond_90
    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v9, v5

    cmp-long v9, v14, v16

    if-gtz v9, :cond_a5

    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v14, v9, v6

    cmp-long v9, v14, v16

    if-lez v9, :cond_a1

    goto :goto_a5

    :cond_a1
    move v15, v5

    move/from16 v16, v6

    goto :goto_f7

    .line 258
    :cond_a5
    :goto_a5
    if-eqz v2, :cond_b0

    .line 259
    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    invoke-interface {v2, v4, v9}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    move v15, v5

    move/from16 v16, v6

    goto :goto_f7

    .line 258
    :cond_b0
    move v15, v5

    move/from16 v16, v6

    goto :goto_f7

    .line 254
    :cond_b4
    :goto_b4
    iget-object v9, v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Negative user/sys time delta for UID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\nPrev times: u="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v5

    move/from16 v16, v6

    aget-wide v5, v8, v15

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v1, v8, v16

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr times: u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_f7
    aput-wide v10, v8, v15

    .line 263
    aput-wide v12, v8, v16
    :try_end_fb
    .catchall {:try_start_20 .. :try_end_fb} :catchall_10a

    .line 264
    .end local v4    # "uid":I
    .end local v8    # "lastTimes":[J
    .end local v10    # "currUsrTimeUs":J
    .end local v12    # "currSysTimeUs":J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v15

    move/from16 v6, v16

    goto/16 :goto_20

    .line 265
    .end local v7    # "buf":Ljava/nio/CharBuffer;
    :cond_104
    if-eqz v3, :cond_109

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 266
    .end local v3    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :cond_109
    return-void

    .line 232
    .restart local v3    # "iter":Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    :catchall_10a
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_116

    :try_start_10e
    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_116

    :catchall_112
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_116
    :goto_116
    throw v1
.end method

.method public blacklist removeUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 289
    invoke-super {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->removeUid(I)V

    .line 290
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->removeUidsFromKernelModule(II)V

    .line 291
    return-void
.end method

.method public blacklist removeUidsInRange(II)V
    .registers 3
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 295
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;->removeUidsInRange(II)V

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->removeUidsFromKernelModule(II)V

    .line 297
    return-void
.end method
