.class public Landroid/app/ResourcesManager$SharedLibraryAssets;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedLibraryAssets"
.end annotation


# instance fields
.field private final blacklist mResourcesKey:Landroid/content/res/ResourcesKey;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)V
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "baseAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2007
    new-instance v0, Landroid/app/ResourcesManager$PathCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager$PathCollector;-><init>(Landroid/content/res/ResourcesKey;)V

    .line 2012
    .local v0, "collector":Landroid/app/ResourcesManager$PathCollector;
    if-eqz p2, :cond_58

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 2013
    iget-object v1, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2014
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 2015
    iget-object v1, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2017
    :cond_2b
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 2018
    iget-object v1, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2020
    :cond_3a
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 2021
    iget-object v1, v0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2023
    :cond_49
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_58

    .line 2024
    iget-object v1, v0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2027
    :cond_58
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 2029
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 2031
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 2033
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 2035
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v3, v0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 2037
    invoke-virtual {v0}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ResourcesManager$SharedLibraryAssets;->mResourcesKey:Landroid/content/res/ResourcesKey;

    .line 2042
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;Landroid/app/ResourcesManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager$SharedLibraryAssets;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist getResourcesKey()Landroid/content/res/ResourcesKey;
    .registers 2

    .line 2048
    iget-object v0, p0, Landroid/app/ResourcesManager$SharedLibraryAssets;->mResourcesKey:Landroid/content/res/ResourcesKey;

    return-object v0
.end method
