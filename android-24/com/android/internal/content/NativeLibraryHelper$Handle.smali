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
.field final apkHandles:[J

.field final extractNativeLibs:Z

.field private volatile mClosed:Z

.field private final mGuard:Ldalvik/system/CloseGuard;

.field final multiArch:Z


# direct methods
.method constructor <init>([JZZ)V
    .locals 2
    .param p1, "apkHandles"    # [J
    .param p2, "multiArch"    # Z
    .param p3, "extractNativeLibs"    # Z

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 119
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    #@b
    .line 120
    iput-boolean p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    #@d
    .line 121
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    #@f
    .line 122
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    #@11
    const-string/jumbo v1, "close"

    #@14
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@17
    .line 118
    return-void
.end method

.method public static create(Landroid/content/pm/PackageParser$Package;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 90
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    .line 91
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    const/high16 v4, -0x80000000

    #@c
    and-int/2addr v0, v4

    #@d
    if-eqz v0, :cond_0

    #@f
    move v0, v1

    #@10
    .line 92
    :goto_0
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@14
    const/high16 v5, 0x10000000

    #@16
    and-int/2addr v4, v5

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 90
    :goto_1
    invoke-static {v3, v0, v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    :cond_0
    move v0, v2

    #@1f
    .line 91
    goto :goto_0

    #@20
    :cond_1
    move v1, v2

    #@21
    .line 92
    goto :goto_1
.end method

.method public static create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 3
    .param p0, "lite"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    #@6
    iget-boolean v2, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    #@8
    invoke-static {v0, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 5
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    const/4 v2, 0x0

    #@1
    :try_start_0
    invoke-static {p0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    #@4
    move-result-object v1

    #@5
    .line 83
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    return-object v2

    #@a
    .line 84
    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    #@b
    .line 85
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v2, Ljava/io/IOException;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Failed to parse package: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v2
.end method

.method private static create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 10
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 102
    .local v4, "size":I
    new-array v0, v4, [J

    #@6
    .line 103
    .local v0, "apkHandles":[J
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@9
    .line 104
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Ljava/lang/String;

    #@f
    .line 105
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->-wrap0(Ljava/lang/String;)J

    #@12
    move-result-wide v6

    #@13
    aput-wide v6, v0, v1

    #@15
    .line 106
    aget-wide v6, v0, v1

    #@17
    const-wide/16 v8, 0x0

    #@19
    cmp-long v5, v6, v8

    #@1b
    if-nez v5, :cond_1

    #@1d
    .line 108
    const/4 v2, 0x0

    #@1e
    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    #@20
    .line 109
    aget-wide v6, v0, v2

    #@22
    invoke-static {v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->-wrap1(J)V

    #@25
    .line 108
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 111
    :cond_0
    new-instance v5, Ljava/io/IOException;

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Unable to open APK: "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v5

    #@42
    .line 103
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 115
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    #@47
    invoke-direct {v5, v0, p1, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([JZZ)V

    #@4a
    return-object v5
.end method


# virtual methods
.method public close()V
    .locals 5

    #@0
    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    #@2
    const/4 v2, 0x0

    #@3
    array-length v4, v3

    #@4
    :goto_0
    if-ge v2, v4, :cond_0

    #@6
    aget-wide v0, v3, v2

    #@8
    .line 128
    .local v0, "apkHandle":J
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->-wrap1(J)V

    #@b
    .line 127
    add-int/lit8 v2, v2, 0x1

    #@d
    goto :goto_0

    #@e
    .line 130
    .end local v0    # "apkHandle":J
    :cond_0
    iget-object v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    #@10
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    #@13
    .line 131
    const/4 v2, 0x1

    #@14
    iput-boolean v2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    #@16
    .line 126
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 140
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 141
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 144
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@13
    .line 135
    return-void

    #@14
    .line 143
    :catchall_0
    move-exception v0

    #@15
    .line 144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@18
    .line 143
    throw v0
.end method
