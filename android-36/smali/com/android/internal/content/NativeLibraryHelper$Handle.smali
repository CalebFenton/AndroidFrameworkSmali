.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final blacklist apkHandles:[J

.field final blacklist apkPaths:[Ljava/lang/String;

.field final blacklist debuggable:Z

.field final blacklist extractNativeLibs:Z

.field private volatile blacklist mClosed:Z

.field private final blacklist mGuard:Ldalvik/system/CloseGuard;

.field final blacklist multiArch:Z

.field final blacklist pageSizeCompatDisabled:Z


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;[JZZZZ)V
    .registers 9
    .param p1, "apkPaths"    # [Ljava/lang/String;
    .param p2, "apkHandles"    # [J
    .param p3, "multiArch"    # Z
    .param p4, "extractNativeLibs"    # Z
    .param p5, "debuggable"    # Z
    .param p6, "isPageSizeCompatDisabled"    # Z

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 148
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkPaths:[Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 150
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 151
    iput-boolean p4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 152
    iput-boolean p5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 153
    iput-boolean p6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->pageSizeCompatDisabled:Z

    .line 154
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static blacklist create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 6
    .param p0, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPageSizeCompat()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 104
    .local v0, "isPageSizeCompatDisabled":Z
    :goto_b
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v2

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v3

    .line 105
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v4

    .line 104
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 6
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 92
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 94
    .local v1, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 98
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v2

    return-object v2

    .line 95
    :cond_1e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 14
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .param p3, "debuggable"    # Z
    .param p4, "isPageSizeCompatDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    .local v0, "size":I
    new-array v2, v0, [Ljava/lang/String;

    .line 113
    .local v2, "apkPaths":[Ljava/lang/String;
    new-array v3, v0, [J

    .line 114
    .local v3, "apkHandles":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_48

    .line 115
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    .local v4, "path":Ljava/lang/String;
    aput-object v4, v2, v1

    .line 117
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeOpenApk(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v1

    .line 118
    aget-wide v5, v3, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_45

    .line 120
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_22
    if-ge v5, v1, :cond_2c

    .line 121
    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeClose(J)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 123
    .end local v5    # "j":I
    :cond_2c
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open APK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    .end local v4    # "path":Ljava/lang/String;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 127
    .end local v1    # "i":I
    :cond_48
    new-instance v1, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "multiArch":Z
    .end local p2    # "extractNativeLibs":Z
    .end local p3    # "debuggable":Z
    .end local p4    # "isPageSizeCompatDisabled":Z
    .local v4, "multiArch":Z
    .local v5, "extractNativeLibs":Z
    .local v6, "debuggable":Z
    .local v7, "isPageSizeCompatDisabled":Z
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([Ljava/lang/String;[JZZZZ)V

    return-object v1
.end method

.method public static blacklist createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 11
    .param p0, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x1

    new-array v3, v0, [J

    .line 133
    .local v3, "apkHandles":[J
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "path":Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    .line 135
    aget-wide v1, v3, v4

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_37

    .line 139
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPageSizeCompat()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_20

    move v7, v0

    goto :goto_21

    :cond_20
    move v7, v4

    .line 142
    .local v7, "isPageSizeCompatDisabled":Z
    :goto_21
    new-instance v1, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v4

    .line 143
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v5

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([Ljava/lang/String;[JZZZZ)V

    .line 142
    return-object v1

    .line 136
    .end local v7    # "isPageSizeCompatDisabled":Z
    :cond_37
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open APK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from fd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-wide v3, v0, v2

    .line 160
    .local v3, "apkHandle":J
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeClose(J)V

    .line 159
    .end local v3    # "apkHandle":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    :cond_e
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 164
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 172
    :cond_9
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    if-nez v0, :cond_10

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 176
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 177
    throw v0
.end method
