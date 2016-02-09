.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    iput p1, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    #@5
    .line 78
    return-void
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "data"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "obb"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "data"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    const/4 v2, 0x2

    #@14
    aput-object p1, v1, v2

    #@16
    const-string/jumbo v2, "cache"

    #@19
    const/4 v3, 0x3

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "data"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    const/4 v2, 0x2

    #@14
    aput-object p1, v1, v2

    #@16
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "data"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    const/4 v2, 0x2

    #@14
    aput-object p1, v1, v2

    #@16
    const-string/jumbo v2, "files"

    #@19
    const/4 v3, 0x3

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "media"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    const/4 v2, 0x2

    #@14
    aput-object p1, v1, v2

    #@16
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "obb"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    const/4 v2, 0x2

    #@14
    aput-object p1, v1, v2

    #@16
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object p1, v1, v2

    #@a
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getExternalDirs()[Ljava/io/File;
    .locals 5

    #@0
    .prologue
    .line 83
    iget v3, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    #@2
    .line 84
    const/4 v4, 0x1

    #@3
    .line 83
    invoke-static {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    #@6
    move-result-object v2

    #@7
    .line 85
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v2

    #@8
    new-array v0, v3, [Ljava/io/File;

    #@a
    .line 86
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@c
    if-ge v1, v3, :cond_0

    #@e
    .line 87
    aget-object v3, v2, v1

    #@10
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v0, v1

    #@16
    .line 86
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 89
    :cond_0
    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    aget-object v0, v0, v1

    #@7
    return-object v0
.end method
