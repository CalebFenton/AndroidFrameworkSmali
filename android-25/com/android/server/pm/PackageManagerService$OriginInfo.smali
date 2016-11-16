.class Lcom/android/server/pm/PackageManagerService$OriginInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OriginInfo"
.end annotation


# instance fields
.field final cid:Ljava/lang/String;

.field final existing:Z

.field final file:Ljava/io/File;

.field final resolvedFile:Ljava/io/File;

.field final resolvedPath:Ljava/lang/String;

.field final staged:Z


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "staged"    # Z
    .param p4, "existing"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 12702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 12703
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    #@6
    .line 12704
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    #@8
    .line 12705
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    #@a
    .line 12706
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    #@c
    .line 12708
    if-eqz p2, :cond_0

    #@e
    .line 12709
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@14
    .line 12710
    new-instance v0, Ljava/io/File;

    #@16
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@1d
    .line 12702
    :goto_0
    return-void

    #@1e
    .line 12711
    :cond_0
    if-eqz p1, :cond_1

    #@20
    .line 12712
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@26
    .line 12713
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@28
    goto :goto_0

    #@29
    .line 12715
    :cond_1
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    #@2b
    .line 12716
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@2d
    goto :goto_0
.end method

.method static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 12691
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    #@8
    return-object v0
.end method

.method static fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 12683
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@4
    invoke-direct {v0, v2, v2, v1, v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    #@7
    return-object v0
.end method

.method static fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12699
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    #@8
    return-object v0
.end method

.method static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 12695
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    #@8
    return-object v0
.end method

.method static fromUntrustedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 12687
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    #@7
    return-object v0
.end method
