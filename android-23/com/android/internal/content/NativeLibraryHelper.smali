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
.field private static final BITCODE_PRESENT:I = 0x1

.field public static final CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final DEBUG_NATIVE:Z = false

.field private static final HAS_NATIVE_BRIDGE:Z

.field public static final LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)J
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0
    .param p0, "handle"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 428
    const-string/jumbo v0, "0"

    #@3
    const-string/jumbo v1, "ro.dalvik.vm.native.bridge"

    #@6
    const-string/jumbo v2, "0"

    #@9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x0

    #@14
    .line 427
    :goto_0
    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    #@16
    .line 54
    return-void

    #@17
    .line 428
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 11
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;
    .param p2, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 174
    iget-object v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    #@3
    const/4 v2, 0x0

    #@4
    array-length v9, v8

    #@5
    move v7, v2

    #@6
    :goto_0
    if-ge v7, v9, :cond_1

    #@8
    aget-wide v0, v8, v7

    #@a
    .line 175
    .local v0, "apkHandle":J
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 176
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    #@10
    sget-boolean v5, Lcom/android/internal/content/NativeLibraryHelper;->HAS_NATIVE_BRIDGE:Z

    #@12
    move-object v3, p2

    #@13
    .line 175
    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZ)I

    #@16
    move-result v6

    #@17
    .line 177
    .local v6, "res":I
    if-eq v6, v10, :cond_0

    #@19
    .line 178
    return v6

    #@1a
    .line 174
    :cond_0
    add-int/lit8 v2, v7, 0x1

    #@1c
    move v7, v2

    #@1d
    goto :goto_0

    #@1e
    .line 181
    .end local v0    # "apkHandle":J
    .end local v6    # "res":I
    :cond_1
    return v10
.end method

.method public static copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I
    .locals 6
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiList"    # [Ljava/lang/String;
    .param p3, "useIsaSubdir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    #@3
    .line 300
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 301
    .local v0, "abi":I
    if-ltz v0, :cond_1

    #@9
    .line 306
    aget-object v5, p2, v0

    #@b
    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 308
    .local v2, "instructionSet":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@11
    .line 309
    new-instance v3, Ljava/io/File;

    #@13
    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 310
    .local v3, "isaSubdir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    #@19
    .line 311
    move-object v4, v3

    #@1a
    .line 316
    .end local v3    # "isaSubdir":Ljava/io/File;
    .local v4, "subDir":Ljava/io/File;
    :goto_0
    aget-object v5, p2, v0

    #@1c
    invoke-static {p0, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    .line 317
    .local v1, "copyRet":I
    const/4 v5, 0x1

    #@21
    if-eq v1, v5, :cond_1

    #@23
    .line 318
    return v1

    #@24
    .line 313
    .end local v1    # "copyRet":I
    .end local v4    # "subDir":Ljava/io/File;
    :cond_0
    move-object v4, p1

    #@25
    .restart local v4    # "subDir":Ljava/io/File;
    goto :goto_0

    #@26
    .line 322
    .end local v2    # "instructionSet":Ljava/lang/String;
    .end local v4    # "subDir":Ljava/io/File;
    :cond_1
    return v0
.end method

.method public static copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .locals 9
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "libraryRoot"    # Ljava/io/File;
    .param p2, "abiOverride"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, -0x71

    #@2
    const/16 v7, -0x72

    #@4
    const/4 v6, 0x1

    #@5
    .line 328
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    #@7
    if-eqz v4, :cond_3

    #@9
    .line 332
    if-eqz p2, :cond_0

    #@b
    const-string/jumbo v4, "-"

    #@e
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 336
    :cond_0
    :goto_0
    const/16 v1, -0x72

    #@16
    .line 337
    .local v1, "copyRet":I
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@18
    array-length v4, v4

    #@19
    if-lez v4, :cond_2

    #@1b
    .line 339
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@1d
    const/4 v5, 0x1

    #@1e
    .line 338
    invoke-static {p0, p1, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    #@21
    move-result v1

    #@22
    .line 340
    if-gez v1, :cond_2

    #@24
    if-eq v1, v7, :cond_2

    #@26
    .line 341
    if-eq v1, v8, :cond_2

    #@28
    .line 342
    const-string/jumbo v4, "NativeHelper"

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Failure copying 32 bit native libraries; copyRet="

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 343
    return v1

    #@43
    .line 333
    .end local v1    # "copyRet":I
    :cond_1
    const-string/jumbo v4, "NativeHelper"

    #@46
    const-string/jumbo v5, "Ignoring abiOverride for multi arch application."

    #@49
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    goto :goto_0

    #@4d
    .line 380
    :catch_0
    move-exception v3

    #@4e
    .line 381
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "NativeHelper"

    #@51
    const-string/jumbo v5, "Copying native libraries failed"

    #@54
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 382
    const/16 v4, -0x6e

    #@59
    return v4

    #@5a
    .line 347
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "copyRet":I
    :cond_2
    :try_start_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@5c
    array-length v4, v4

    #@5d
    if-lez v4, :cond_8

    #@5f
    .line 349
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@61
    const/4 v5, 0x1

    #@62
    .line 348
    invoke-static {p0, p1, v4, v5}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    #@65
    move-result v1

    #@66
    .line 350
    if-gez v1, :cond_8

    #@68
    if-eq v1, v7, :cond_8

    #@6a
    .line 351
    if-eq v1, v8, :cond_8

    #@6c
    .line 352
    const-string/jumbo v4, "NativeHelper"

    #@6f
    new-instance v5, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v6, "Failure copying 64 bit native libraries; copyRet="

    #@77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 353
    return v1

    #@87
    .line 357
    .end local v1    # "copyRet":I
    :cond_3
    const/4 v2, 0x0

    #@88
    .line 358
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    const-string/jumbo v4, "-"

    #@8b
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v4

    #@8f
    if-eqz v4, :cond_6

    #@91
    .line 359
    const/4 v2, 0x0

    #@92
    .line 364
    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v2, :cond_7

    #@94
    .line 365
    const/4 v4, 0x1

    #@95
    new-array v0, v4, [Ljava/lang/String;

    #@97
    const/4 v4, 0x0

    #@98
    aput-object v2, v0, v4

    #@9a
    .line 366
    .local v0, "abiList":[Ljava/lang/String;
    :goto_2
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@9c
    array-length v4, v4

    #@9d
    if-lez v4, :cond_5

    #@9f
    if-nez v2, :cond_5

    #@a1
    .line 367
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    #@a4
    move-result v4

    #@a5
    .line 366
    if-eqz v4, :cond_5

    #@a7
    .line 368
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@a9
    .line 372
    :cond_5
    const/4 v4, 0x1

    #@aa
    .line 371
    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;Z)I

    #@ad
    move-result v1

    #@ae
    .line 373
    .restart local v1    # "copyRet":I
    if-gez v1, :cond_8

    #@b0
    if-eq v1, v7, :cond_8

    #@b2
    .line 374
    const-string/jumbo v4, "NativeHelper"

    #@b5
    new-instance v5, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v6, "Failure copying native libraries [errorCode="

    #@bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    const-string/jumbo v6, "]"

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 375
    return v1

    #@d4
    .line 360
    .end local v0    # "abiList":[Ljava/lang/String;
    .end local v1    # "copyRet":I
    .restart local v2    # "cpuAbiOverride":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_4

    #@d6
    .line 361
    move-object v2, p2

    #@d7
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    goto :goto_1

    #@d8
    .line 365
    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    :cond_7
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@da
    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_2

    #@db
    .line 379
    .end local v0    # "abiList":[Ljava/lang/String;
    .restart local v1    # "copyRet":I
    :cond_8
    return v6
.end method

.method private static createNativeLibrarySubdir(Ljava/io/File;)V
    .locals 4
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_2

    #@6
    .line 266
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@9
    .line 268
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 269
    new-instance v1, Ljava/io/IOException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Cannot create "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 273
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    sget v2, Landroid/system/OsConstants;->S_IRWXU:I

    #@33
    sget v3, Landroid/system/OsConstants;->S_IRGRP:I

    #@35
    or-int/2addr v2, v3

    #@36
    sget v3, Landroid/system/OsConstants;->S_IXGRP:I

    #@38
    or-int/2addr v2, v3

    #@39
    sget v3, Landroid/system/OsConstants;->S_IROTH:I

    #@3b
    or-int/2addr v2, v3

    #@3c
    sget v3, Landroid/system/OsConstants;->S_IXOTH:I

    #@3e
    or-int/2addr v2, v3

    #@3f
    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 264
    :cond_1
    return-void

    #@43
    .line 274
    :catch_0
    move-exception v0

    #@44
    .line 275
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "Cannot chmod native library directory "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    .line 276
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@61
    throw v1

    #@62
    .line 278
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_2
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@65
    move-result v1

    #@66
    if-nez v1, :cond_1

    #@68
    .line 279
    new-instance v1, Ljava/io/IOException;

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "Cannot set SELinux context for "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@85
    throw v1
.end method

.method public static findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "supportedAbis"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 192
    const/16 v2, -0x72

    #@3
    .line 193
    .local v2, "finalRes":I
    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    #@5
    array-length v6, v5

    #@6
    :goto_0
    if-ge v4, v6, :cond_5

    #@8
    aget-wide v0, v5, v4

    #@a
    .line 194
    .local v0, "apkHandle":J
    invoke-static {v0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;)I

    #@d
    move-result v3

    #@e
    .line 195
    .local v3, "res":I
    const/16 v7, -0x72

    #@10
    if-ne v3, v7, :cond_1

    #@12
    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@14
    goto :goto_0

    #@15
    .line 197
    :cond_1
    const/16 v7, -0x71

    #@17
    if-ne v3, v7, :cond_2

    #@19
    .line 200
    if-gez v2, :cond_0

    #@1b
    .line 201
    const/16 v2, -0x71

    #@1d
    goto :goto_1

    #@1e
    .line 203
    :cond_2
    if-ltz v3, :cond_4

    #@20
    .line 205
    if-ltz v2, :cond_3

    #@22
    if-ge v3, v2, :cond_0

    #@24
    .line 206
    :cond_3
    move v2, v3

    #@25
    goto :goto_1

    #@26
    .line 210
    :cond_4
    return v3

    #@27
    .line 213
    .end local v0    # "apkHandle":J
    .end local v3    # "res":I
    :cond_5
    return v2
.end method

.method private static native hasRenderscriptBitcode(J)I
.end method

.method public static hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 433
    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    #@4
    array-length v6, v5

    #@5
    move v3, v4

    #@6
    :goto_0
    if-ge v3, v6, :cond_2

    #@8
    aget-wide v0, v5, v3

    #@a
    .line 434
    .local v0, "apkHandle":J
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    #@d
    move-result v2

    #@e
    .line 435
    .local v2, "res":I
    if-gez v2, :cond_0

    #@10
    .line 436
    new-instance v3, Ljava/io/IOException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Error scanning APK, code: "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 437
    :cond_0
    if-ne v2, v7, :cond_1

    #@2c
    .line 438
    return v7

    #@2d
    .line 433
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 441
    .end local v0    # "apkHandle":J
    .end local v2    # "res":I
    :cond_2
    return v4
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZ)I
.end method

.method private static native nativeFindSupportedAbi(J[Ljava/lang/String;)I
.end method

.method private static native nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native nativeSumNativeBinaries(JLjava/lang/String;)J
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .locals 5
    .param p0, "nativeLibraryRoot"    # Ljava/io/File;
    .param p1, "deleteRootDir"    # Z

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 239
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    .line 240
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    #@c
    .line 241
    const/4 v1, 0x0

    #@d
    .local v1, "nn":I
    :goto_0
    array-length v2, v0

    #@e
    if-ge v1, v2, :cond_2

    #@10
    .line 246
    aget-object v2, v0, v1

    #@12
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 247
    aget-object v2, v0, v1

    #@1a
    const/4 v3, 0x1

    #@1b
    invoke-static {v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    #@1e
    .line 241
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 248
    :cond_1
    aget-object v2, v0, v1

    #@23
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_0

    #@29
    .line 249
    const-string/jumbo v2, "NativeHelper"

    #@2c
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Could not delete native binary: "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    aget-object v4, v0, v1

    #@3a
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_1

    #@4a
    .line 255
    .end local v1    # "nn":I
    :cond_2
    if-eqz p1, :cond_3

    #@4c
    .line 256
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_3

    #@52
    .line 257
    const-string/jumbo v2, "NativeHelper"

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "Could not delete native binary directory: "

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 258
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 228
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)V
    .locals 2
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    if-nez p0, :cond_0

    #@2
    return-void

    #@3
    .line 221
    :cond_0
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    #@c
    .line 219
    return-void
.end method

.method private static sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 10
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    const-wide/16 v2, 0x0

    #@2
    .line 159
    .local v2, "sum":J
    iget-object v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    #@4
    const/4 v4, 0x0

    #@5
    array-length v6, v5

    #@6
    :goto_0
    if-ge v4, v6, :cond_0

    #@8
    aget-wide v0, v5, v4

    #@a
    .line 160
    .local v0, "apkHandle":J
    invoke-static {v0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;)J

    #@d
    move-result-wide v8

    #@e
    add-long/2addr v2, v8

    #@f
    .line 159
    add-int/lit8 v4, v4, 0x1

    #@11
    goto :goto_0

    #@12
    .line 162
    .end local v0    # "apkHandle":J
    :cond_0
    return-wide v2
.end method

.method private static sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .locals 4
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiList"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 285
    .local v0, "abi":I
    if-ltz v0, :cond_0

    #@6
    .line 286
    aget-object v1, p1, v0

    #@8
    invoke-static {p0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 288
    :cond_0
    const-wide/16 v2, 0x0

    #@f
    return-wide v2
.end method

.method public static sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .locals 8
    .param p0, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p1, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 388
    const-wide/16 v2, 0x0

    #@5
    .line 389
    .local v2, "sum":J
    iget-boolean v4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    #@7
    if-eqz v4, :cond_4

    #@9
    .line 393
    if-eqz p1, :cond_0

    #@b
    const-string/jumbo v4, "-"

    #@e
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_3

    #@14
    .line 397
    :cond_0
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@16
    array-length v4, v4

    #@17
    if-lez v4, :cond_1

    #@19
    .line 398
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@1b
    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    #@1e
    move-result-wide v4

    #@1f
    add-long v2, v6, v4

    #@21
    .line 401
    :cond_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@23
    array-length v4, v4

    #@24
    if-lez v4, :cond_2

    #@26
    .line 402
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@28
    invoke-static {p0, v4}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    #@2b
    move-result-wide v4

    #@2c
    add-long/2addr v2, v4

    #@2d
    .line 421
    :cond_2
    :goto_1
    return-wide v2

    #@2e
    .line 394
    :cond_3
    const-string/jumbo v4, "NativeHelper"

    #@31
    const-string/jumbo v5, "Ignoring abiOverride for multi arch application."

    #@34
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0

    #@38
    .line 405
    :cond_4
    const/4 v1, 0x0

    #@39
    .line 406
    .local v1, "cpuAbiOverride":Ljava/lang/String;
    const-string/jumbo v4, "-"

    #@3c
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_7

    #@42
    .line 407
    const/4 v1, 0x0

    #@43
    .line 412
    .end local v1    # "cpuAbiOverride":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    #@45
    .line 413
    const/4 v4, 0x1

    #@46
    new-array v0, v4, [Ljava/lang/String;

    #@48
    aput-object v1, v0, v5

    #@4a
    .line 414
    .local v0, "abiList":[Ljava/lang/String;
    :goto_3
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@4c
    array-length v4, v4

    #@4d
    if-lez v4, :cond_6

    #@4f
    if-nez v1, :cond_6

    #@51
    .line 415
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    #@54
    move-result v4

    #@55
    .line 414
    if-eqz v4, :cond_6

    #@57
    .line 416
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    #@59
    .line 419
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    #@5c
    move-result-wide v4

    #@5d
    add-long v2, v6, v4

    #@5f
    goto :goto_1

    #@60
    .line 408
    .end local v0    # "abiList":[Ljava/lang/String;
    .restart local v1    # "cpuAbiOverride":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_5

    #@62
    .line 409
    move-object v1, p1

    #@63
    .local v1, "cpuAbiOverride":Ljava/lang/String;
    goto :goto_2

    #@64
    .line 413
    .end local v1    # "cpuAbiOverride":Ljava/lang/String;
    :cond_8
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@66
    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_3
.end method
