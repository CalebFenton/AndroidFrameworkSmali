.class public Landroid/content/res/AssetManager$Builder;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNoInit:Z

.field private final greylist-max-o mUserApkAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    .registers 3
    .param p1, "apkAssets"    # Landroid/content/res/ApkAssets;

    .line 157
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-object p0
.end method

.method public blacklist addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;
    .registers 3
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;

    .line 163
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-object p0
.end method

.method public greylist-max-o build()Landroid/content/res/AssetManager;
    .registers 12

    .line 174
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 179
    .local v0, "systemApkAssets":[Landroid/content/res/ApkAssets;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "loaderApkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 181
    .local v2, "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    const/4 v4, 0x0

    if-ltz v3, :cond_46

    .line 182
    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 183
    .local v5, "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_2f
    if-ltz v6, :cond_43

    .line 184
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 185
    .local v7, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 186
    invoke-virtual {v1, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    .end local v7    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_40
    add-int/lit8 v6, v6, -0x1

    goto :goto_2f

    .line 181
    .end local v5    # "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "j":I
    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 191
    .end local v3    # "i":I
    :cond_46
    array-length v3, v0

    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 193
    .local v3, "totalApkAssetCount":I
    new-array v5, v3, [Landroid/content/res/ApkAssets;

    .line 195
    .local v5, "apkAssets":[Landroid/content/res/ApkAssets;
    array-length v6, v0

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_60
    if-ge v6, v7, :cond_71

    .line 199
    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    .line 198
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 203
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_71
    const/4 v6, 0x0

    .restart local v6    # "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .restart local v7    # "n":I
    :goto_76
    if-ge v6, v7, :cond_8c

    .line 204
    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    .line 205
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 210
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_8c
    new-instance v6, Landroid/content/res/AssetManager;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Landroid/content/res/AssetManager;-><init>(ZLandroid/content/res/AssetManager-IA;)V

    .line 211
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v6, v5}, Landroid/content/res/AssetManager;->-$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V

    .line 212
    invoke-static {v6}, Landroid/content/res/AssetManager;->-$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J

    move-result-wide v8

    iget-boolean v10, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    invoke-static {v8, v9, v5, v4, v10}, Landroid/content/res/AssetManager;->-$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    .line 214
    iget-object v8, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a7

    goto :goto_b2

    .line 215
    :cond_a7
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    new-array v4, v4, [Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Landroid/content/res/loader/ResourcesLoader;

    :goto_b2
    invoke-static {v6, v7}, Landroid/content/res/AssetManager;->-$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 217
    return-object v6
.end method

.method public blacklist setNoInit()Landroid/content/res/AssetManager$Builder;
    .registers 2

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager$Builder;->mNoInit:Z

    .line 169
    return-object p0
.end method
