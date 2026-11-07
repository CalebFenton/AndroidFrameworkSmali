.class public Landroid/content/pm/PackagePartitions$SystemPartition;
.super Ljava/lang/Object;
.source "PackagePartitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPartition"
.end annotation


# instance fields
.field private final blacklist mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNonConicalFolder:Ljava/io/File;

.field private final blacklist mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final blacklist mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 5
    .param p1, "original"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iget v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    .line 177
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    .line 178
    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v1, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 179
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 180
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 181
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 182
    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    .line 183
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/File;ILjava/lang/String;ZZ)V
    .registers 9
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "containsPrivApp"    # Z
    .param p5, "containsOverlay"    # Z

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    .line 165
    iput-object p3, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 167
    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string v2, "app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 168
    if-eqz p4, :cond_23

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "priv-app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions-IA;)V

    goto :goto_24

    .line 169
    :cond_23
    move-object v0, v1

    :goto_24
    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 170
    if-eqz p5, :cond_32

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "overlay"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions-IA;)V

    move-object v1, v0

    goto :goto_33

    .line 171
    :cond_32
    nop

    :goto_33
    iput-object v1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 172
    iput-object p1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 9
    .param p1, "rootFolder"    # Ljava/io/File;
    .param p2, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 190
    iget v2, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v3, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    move v0, v4

    move v4, v1

    goto :goto_e

    :cond_d
    move v0, v4

    :goto_e
    iget-object v5, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v5, :cond_14

    move v5, v1

    goto :goto_15

    :cond_14
    move v5, v0

    :goto_15
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "rootFolder":Ljava/io/File;
    .local v1, "rootFolder":Ljava/io/File;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist containsApp(Ljava/io/File;)Z
    .registers 4
    .param p1, "scanFile"    # Ljava/io/File;

    .line 251
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 252
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 251
    :goto_17
    return v0
.end method

.method public blacklist containsFile(Ljava/io/File;)Z
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 240
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist containsOverlay(Ljava/io/File;)Z
    .registers 4
    .param p1, "scanFile"    # Ljava/io/File;

    .line 257
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 258
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 257
    :goto_17
    return v0
.end method

.method public blacklist containsPath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist containsPrivApp(Ljava/io/File;)Z
    .registers 4
    .param p1, "scanFile"    # Ljava/io/File;

    .line 245
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    .line 246
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 245
    :goto_17
    return v0
.end method

.method public blacklist getAppFolder()Ljava/io/File;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public blacklist getFolder()Ljava/io/File;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNonConicalFolder()Ljava/io/File;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-object v0
.end method

.method public blacklist getOverlayFolder()Ljava/io/File;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public blacklist getPrivAppFolder()Ljava/io/File;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_c
    return-object v0
.end method
