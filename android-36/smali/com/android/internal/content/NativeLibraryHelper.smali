.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;
    }
.end annotation


# static fields
.field private static final blacklist BITCODE_PRESENT:I = 0x1

.field public static final blacklist CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final blacklist DEBUG_NATIVE:Z = false

.field public static final blacklist LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final blacklist LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final blacklist TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeClose(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenApk(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAlignmentForCompatMode(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 18
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/lang/String;
    .param p2, "nativeLibraryRootRequiresIsa"    # Z
    .param p3, "abiOverride"    # Ljava/lang/String;

    .line 468
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, "abi":I
    const/4 v1, -0x1

    if-gez v0, :cond_a

    .line 470
    return v1

    .line 473
    :cond_a
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 474
    .local v2, "supportedAbi":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "instructionSet":Ljava/lang/String;
    move-object v4, p1

    .line 476
    .local v4, "subDir":Ljava/lang/String;
    if-eqz p2, :cond_2e

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_2f

    .line 476
    :cond_2e
    move-object v7, v4

    .line 480
    .end local v4    # "subDir":Ljava/lang/String;
    .local v7, "subDir":Ljava/lang/String;
    :goto_2f
    const/4 v4, 0x0

    .line 481
    .local v4, "mode":I
    iget-object v11, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v12, v11

    const/4 v5, 0x0

    move v13, v5

    :goto_35
    if-ge v13, v12, :cond_4c

    aget-wide v5, v11, v13

    .line 482
    .local v5, "apkHandle":J
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v8, v8, v0

    iget-boolean v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    iget-boolean v10, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 483
    invoke-static/range {v5 .. v10}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCheckAlignment(JLjava/lang/String;Ljava/lang/String;ZZ)I

    move-result v8

    .line 489
    .local v8, "res":I
    if-ne v8, v1, :cond_48

    .line 490
    return v8

    .line 492
    :cond_48
    or-int/2addr v4, v8

    .line 481
    .end local v5    # "apkHandle":J
    .end local v8    # "res":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_35

    .line 494
    :cond_4c
    return v4
.end method

.method public static blacklist copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .registers 14
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1f

    aget-wide v4, v0, v2

    .line 216
    .local v4, "apkHandle":J
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    iget-boolean v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    iget-boolean v10, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->pageSizeCompatDisabled:Z

    move-object v7, p2

    .end local p2    # "abi":Ljava/lang/String;
    .local v7, "abi":Ljava/lang/String;
    invoke-static/range {v4 .. v10}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I

    move-result p2

    .line 218
    .local p2, "res":I
    if-eq p2, v3, :cond_1b

    .line 219
    return p2

    .line 215
    .end local v4    # "apkHandle":J
    .end local p2    # "res":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    move-object p2, v7

    goto :goto_4

    .line 222
    .end local v7    # "abi":Ljava/lang/String;
    .local p2, "abi":Ljava/lang/String;
    :cond_1f
    return v3
.end method

.method public static blacklist copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I
    .registers 11
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "useIsaSubdir"    # Z
    .param p4, "isIncremental"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, "abi":I
    if-gez v0, :cond_7

    .line 344
    return v0

    .line 351
    :cond_7
    aget-object v1, p2, v0

    .line 352
    .local v1, "supportedAbi":Ljava/lang/String;
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "instructionSet":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 355
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "subDir":Ljava/io/File;
    goto :goto_16

    .line 357
    .end local v3    # "subDir":Ljava/io/File;
    :cond_15
    move-object v3, p1

    .line 360
    .restart local v3    # "subDir":Ljava/io/File;
    :goto_16
    const/4 v4, 0x1

    if-eqz p4, :cond_22

    .line 361
    nop

    .line 362
    invoke-static {p0, v3, v1}, Lcom/android/internal/content/NativeLibraryHelper;->incrementalConfigureNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    .line 363
    .local v5, "res":I
    if-eq v5, v4, :cond_21

    .line 368
    return v5

    .line 370
    :cond_21
    return v0

    .line 374
    .end local v5    # "res":I
    :cond_22
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 375
    if-eq v3, p1, :cond_2a

    .line 376
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 381
    :cond_2a
    invoke-static {p0, v3, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v5

    .line 382
    .local v5, "copyRet":I
    if-eq v5, v4, :cond_31

    .line 383
    return v5

    .line 386
    :cond_31
    return v0
.end method

.method public static blacklist copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I
    .registers 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .param p3, "isIncremental"    # Z

    .line 392
    const-string v0, "NativeHelper"

    :try_start_2
    iget-boolean v1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4} :catch_b9

    const-string v2, "-"

    const/16 v3, -0x72

    const/4 v4, 0x1

    if-eqz v1, :cond_6e

    .line 396
    if-eqz p2, :cond_18

    :try_start_d
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 397
    const-string v1, "Ignoring abiOverride for multi arch application."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_18
    const/16 v1, -0x72

    .line 401
    .local v1, "copyRet":I
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/16 v5, -0x71

    if-lez v2, :cond_45

    .line 402
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    move v1, v2

    .line 405
    if-gez v1, :cond_45

    if-eq v1, v3, :cond_45

    if-eq v1, v5, :cond_45

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v1

    .line 412
    :cond_45
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6d

    .line 413
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    .line 416
    .end local v1    # "copyRet":I
    .local v2, "copyRet":I
    if-gez v2, :cond_6d

    if-eq v2, v3, :cond_6d

    if-eq v2, v5, :cond_6d

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v2

    .line 422
    .end local v2    # "copyRet":I
    :cond_6d
    goto :goto_b8

    .line 423
    :cond_6e
    const/4 v1, 0x0

    .line 424
    .local v1, "cpuAbiOverride":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 425
    const/4 v1, 0x0

    goto :goto_7a

    .line 426
    :cond_77
    if-eqz p2, :cond_7a

    .line 427
    move-object v1, p2

    .line 430
    :cond_7a
    :goto_7a
    if-eqz v1, :cond_81

    .line 431
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_83

    :cond_81
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 432
    .local v2, "abiList":[Ljava/lang/String;
    :goto_83
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_93

    if-nez v1, :cond_93

    .line 433
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 434
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v2, v5

    .line 437
    :cond_93
    invoke-static {p0, p1, v2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v5

    .line 439
    .local v5, "copyRet":I
    if-gez v5, :cond_b8

    if-eq v5, v3, :cond_b8

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure copying native libraries [errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b7} :catch_b9

    .line 441
    return v5

    .line 445
    .end local v1    # "cpuAbiOverride":Ljava/lang/String;
    .end local v2    # "abiList":[Ljava/lang/String;
    .end local v5    # "copyRet":I
    :cond_b8
    :goto_b8
    return v4

    .line 446
    :catch_b9
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Copying native libraries failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    const/16 v0, -0x6e

    return v0
.end method

.method public static blacklist createNativeLibrarySubdir(Ljava/io/File;)V
    .registers 5
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_60

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 317
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    sget v2, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_24} :catch_25

    .line 321
    goto :goto_66

    .line 318
    :catch_25
    move-exception v0

    .line 319
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 313
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_43
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_60
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 325
    :goto_66
    return-void

    .line 323
    :cond_67
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set SELinux context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .registers 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "supportedAbis"    # [Ljava/lang/String;

    .line 233
    const/16 v0, -0x72

    .line 234
    .local v0, "finalRes":I
    iget-object v1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_27

    aget-wide v4, v1, v3

    .line 235
    .local v4, "apkHandle":J
    invoke-static {v4, v5, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;)I

    move-result v6

    .line 236
    .local v6, "res":I
    const/16 v7, -0x72

    if-ne v6, v7, :cond_13

    goto :goto_23

    .line 238
    :cond_13
    const/16 v7, -0x71

    if-ne v6, v7, :cond_1c

    .line 241
    if-gez v0, :cond_23

    .line 242
    const/16 v0, -0x71

    goto :goto_23

    .line 244
    :cond_1c
    if-ltz v6, :cond_26

    .line 246
    if-ltz v0, :cond_22

    if-ge v6, v0, :cond_23

    .line 247
    :cond_22
    move v0, v6

    .line 234
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 251
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_26
    return v6

    .line 254
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_27
    return v0
.end method

.method private static blacklist getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 585
    .local v0, "basePath":Ljava/nio/file/Path;
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 586
    .local v1, "targetPath":Ljava/nio/file/Path;
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 587
    .local v2, "relativePath":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 588
    const-string v3, ""

    return-object v3

    .line 590
    :cond_19
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v3

    .line 591
    .end local v0    # "basePath":Ljava/nio/file/Path;
    .end local v1    # "targetPath":Ljava/nio/file/Path;
    .end local v2    # "relativePath":Ljava/nio/file/Path;
    :catch_1e
    move-exception v0

    .line 592
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find relative path between: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 593
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    const-string v2, "NativeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    return-object v1
.end method

.method private static native blacklist hasRenderscriptBitcode(J)I
.end method

.method public static blacklist hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .registers 9
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_2f

    aget-wide v4, v0, v3

    .line 605
    .local v4, "apkHandle":J
    invoke-static {v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v6

    .line 606
    .local v6, "res":I
    if-ltz v6, :cond_16

    .line 608
    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 609
    return v7

    .line 604
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 607
    .restart local v4    # "apkHandle":J
    .restart local v6    # "res":I
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error scanning APK, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    .end local v4    # "apkHandle":J
    .end local v6    # "res":I
    :cond_2f
    return v2
.end method

.method private static blacklist incrementalConfigureNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .registers 13
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libSubDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkPaths:[Ljava/lang/String;

    .line 548
    .local v0, "apkPaths":[Ljava/lang/String;
    const-string v1, "NativeHelper"

    const/16 v2, -0x6e

    if-eqz v0, :cond_56

    array-length v3, v0

    if-nez v3, :cond_c

    goto :goto_56

    .line 553
    :cond_c
    const-string v3, "incremental"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 554
    .local v3, "incrementalService":Landroid/os/IBinder;
    if-nez v3, :cond_15

    .line 556
    return v2

    .line 558
    :cond_15
    new-instance v4, Landroid/os/incremental/IncrementalManager;

    .line 559
    invoke-static {v3}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 560
    .local v4, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 561
    .local v5, "apkParent":Ljava/io/File;
    nop

    .line 562
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v6

    .line 563
    .local v6, "incrementalStorage":Landroid/os/incremental/IncrementalStorage;
    if-nez v6, :cond_3b

    .line 564
    const-string v7, "Failed to find incremental storage"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v2

    .line 568
    :cond_3b
    invoke-static {v5, p1}, Lcom/android/internal/content/NativeLibraryHelper;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "libRelativeDir":Ljava/lang/String;
    if-nez v1, :cond_42

    .line 570
    return v2

    .line 573
    :cond_42
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_43
    array-length v8, v0

    if-ge v7, v8, :cond_54

    .line 574
    aget-object v8, v0, v7

    iget-boolean v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    invoke-virtual {v6, v8, v1, p2, v9}, Landroid/os/incremental/IncrementalStorage;->configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_51

    .line 576
    return v2

    .line 573
    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 579
    .end local v7    # "i":I
    :cond_54
    const/4 v2, 0x1

    return v2

    .line 549
    .end local v1    # "libRelativeDir":Ljava/lang/String;
    .end local v3    # "incrementalService":Landroid/os/IBinder;
    .end local v4    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local v5    # "apkParent":Ljava/io/File;
    .end local v6    # "incrementalStorage":Landroid/os/incremental/IncrementalStorage;
    :cond_56
    :goto_56
    const-string v3, "No apks to extract native libraries from."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v2
.end method

.method private static native blacklist nativeCheckAlignment(JLjava/lang/String;Ljava/lang/String;ZZ)I
.end method

.method private static native blacklist nativeClose(J)V
.end method

.method private static native blacklist nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I
.end method

.method private static native blacklist nativeFindSupportedAbi(J[Ljava/lang/String;)I
.end method

.method private static native blacklist nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeSumNativeBinaries(JLjava/lang/String;)J
.end method

.method public static blacklist removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .registers 7
    .param p0, "nativeLibraryRoot"    # Ljava/io/File;
    .param p1, "deleteRootDir"    # Z

    .line 279
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 280
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 281
    .local v0, "files":[Ljava/io/File;
    const-string v1, "NativeHelper"

    if-eqz v0, :cond_48

    .line 282
    const/4 v2, 0x0

    .local v2, "nn":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_48

    .line 287
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 288
    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    goto :goto_45

    .line 289
    :cond_21
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_45

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 296
    .end local v2    # "nn":I
    :cond_48
    if-eqz p1, :cond_6a

    .line 297
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete native binary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0    # "files":[Ljava/io/File;
    :cond_6a
    return-void
.end method

.method public static blacklist removeNativeBinariesLI(Ljava/lang/String;)V
    .registers 3
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .line 261
    if-nez p0, :cond_3

    return-void

    .line 262
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 263
    return-void
.end method

.method private static blacklist sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 11
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abi"    # Ljava/lang/String;

    .line 199
    const-wide/16 v0, 0x0

    .line 200
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_12

    aget-wide v5, v2, v4

    .line 201
    .local v5, "apkHandle":J
    invoke-static {v5, v6, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 200
    .end local v5    # "apkHandle":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 203
    :cond_12
    return-wide v0
.end method

.method private static blacklist sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .registers 5
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiList"    # [Ljava/lang/String;

    .line 328
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "abi":I
    if-ltz v0, :cond_d

    .line 330
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 332
    :cond_d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static blacklist sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    const-wide/16 v0, 0x0

    .line 500
    .local v0, "sum":J
    iget-boolean v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    const-string v3, "-"

    if-eqz v2, :cond_30

    .line 504
    if-eqz p1, :cond_17

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 505
    const-string v2, "NativeHelper"

    const-string v3, "Ignoring abiOverride for multi arch application."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_17
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_23

    .line 509
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 512
    :cond_23
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5b

    .line 513
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_5b

    .line 516
    :cond_30
    const/4 v2, 0x0

    .line 517
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 518
    const/4 v2, 0x0

    goto :goto_3c

    .line 519
    :cond_39
    if-eqz p1, :cond_3c

    .line 520
    move-object v2, p1

    .line 523
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_45

    .line 524
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_47

    :cond_45
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 525
    .local v3, "abiList":[Ljava/lang/String;
    :goto_47
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_56

    if-nez v2, :cond_56

    .line 526
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 527
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 530
    :cond_56
    invoke-static {p0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 532
    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    .end local v3    # "abiList":[Ljava/lang/String;
    :cond_5b
    :goto_5b
    return-wide v0
.end method
