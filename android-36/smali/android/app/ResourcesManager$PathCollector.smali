.class Landroid/app/ResourcesManager$PathCollector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathCollector"
.end annotation


# instance fields
.field public final blacklist libsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist orderedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist orderedOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist originalKey:Landroid/content/res/ResourcesKey;

.field public final blacklist overlaysSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/res/ResourcesKey;)V
    .registers 3
    .param p1, "original"    # Landroid/content/res/ResourcesKey;

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    .line 1650
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    .line 1651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1652
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    .line 1670
    iput-object p1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    .line 1671
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-eqz v0, :cond_2a

    .line 1672
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 1674
    :cond_2a
    return-void
.end method

.method static blacklist appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .registers 6
    .param p0, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1663
    .local p1, "uniquePaths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "orderedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_3

    return-void

    .line 1664
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_f

    .line 1665
    aget-object v2, p0, v0

    invoke-static {v2, p1, p2}, Landroid/app/ResourcesManager$PathCollector;->appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1664
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1667
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_f
    return-void
.end method

.method static blacklist appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1656
    .local p1, "uniquePaths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "orderedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1657
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist appendKey(Landroid/content/res/ResourcesKey;)V
    .registers 5
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .line 1677
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1678
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1679
    return-void
.end method

.method blacklist collectedKey()Landroid/content/res/ResourcesKey;
    .registers 12

    .line 1694
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 1695
    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move-object v1, v2

    goto :goto_d

    :cond_9
    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v1, v1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1696
    :goto_d
    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v3, :cond_13

    move-object v3, v2

    goto :goto_17

    :cond_13
    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v3, v3, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    :goto_17
    iget-object v4, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 1697
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object v6, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1698
    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v7, :cond_31

    goto :goto_35

    :cond_31
    iget-object v5, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget v5, v5, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1699
    :goto_35
    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v7, :cond_3b

    move-object v7, v2

    goto :goto_3f

    :cond_3b
    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v7, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 1700
    :goto_3f
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v8, :cond_45

    move-object v8, v2

    goto :goto_49

    :cond_45
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v8, v8, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1701
    :goto_49
    iget-object v9, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v9, :cond_4e

    goto :goto_52

    :cond_4e
    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v2, v2, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    :goto_52
    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1694
    return-object v0
.end method

.method blacklist isSameAsOriginal()Z
    .registers 5

    .line 1682
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    .line 1683
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 1685
    :cond_19
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_27
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    .line 1687
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_5c

    :cond_3a
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1688
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    :cond_48
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1690
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_5c

    :cond_5b
    goto :goto_5d

    :cond_5c
    move v1, v2

    .line 1685
    :goto_5d
    return v1
.end method
