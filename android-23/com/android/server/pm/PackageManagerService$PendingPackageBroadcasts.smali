.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcasts"
.end annotation


# instance fields
.field final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 827
    new-instance v0, Landroid/util/SparseArray;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@b
    .line 826
    return-void
.end method

.method private getOrAllocate(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    .line 878
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    #@a
    .line 879
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 880
    .restart local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 882
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 872
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    .line 832
    .local v0, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/ArrayList;

    #@a
    return-object v1
.end method

.method public packagesForUserId(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    return-object v0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 836
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    .line 837
    .local v0, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 835
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@5
    .line 847
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    .line 842
    .local v0, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    #@a
    .line 843
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 840
    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 865
    const/4 v1, 0x0

    #@1
    .line 866
    .local v1, "num":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v2

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 867
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v2

    #@16
    add-int/2addr v1, v2

    #@17
    .line 866
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 869
    :cond_0
    return v1
.end method

.method public userIdAt(I)I
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public userIdCount()I
    .locals 1

    #@0
    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
