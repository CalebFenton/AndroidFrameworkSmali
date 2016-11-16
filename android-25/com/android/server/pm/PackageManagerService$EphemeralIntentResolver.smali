.class final Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EphemeralIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;",
        "Landroid/content/pm/EphemeralResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 11273
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@3
    .line 11286
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@a
    .line 11273
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected filterResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 11323
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 11324
    return-void

    #@9
    .line 11326
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@c
    move-result v3

    #@d
    .line 11327
    .local v3, "resultSize":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@10
    .line 11328
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/content/pm/EphemeralResolveInfo;

    #@16
    .line 11329
    .local v1, "info":Landroid/content/pm/EphemeralResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 11330
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Landroid/util/Pair;

    #@22
    .line 11331
    .local v4, "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    if-nez v4, :cond_2

    #@24
    .line 11327
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 11335
    :cond_2
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@29
    if-ne v5, v1, :cond_4

    #@2b
    .line 11337
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 11338
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@32
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@35
    move-result v5

    #@36
    if-nez v5, :cond_1

    #@38
    .line 11321
    .end local v1    # "info":Landroid/content/pm/EphemeralResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    :cond_3
    return-void

    #@39
    .line 11345
    .restart local v1    # "info":Landroid/content/pm/EphemeralResolveInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3c
    .line 11346
    add-int/lit8 v3, v3, -0x1

    #@3e
    .line 11347
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 11294
    check-cast p2, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    #@2
    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    #@0
    .prologue
    .line 11295
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 11289
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 11290
    new-array v0, p1, [Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    #@2
    return-object v0
.end method

.method protected newResult(Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;II)Landroid/content/pm/EphemeralResolveInfo;
    .locals 7
    .param p1, "info"    # Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 11301
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 11302
    return-object v6

    #@a
    .line 11304
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 11305
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getOrder()I

    #@15
    move-result v4

    #@16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    .line 11307
    .local v1, "order":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/util/Pair;

    #@22
    .line 11309
    .local v0, "lastOrderResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/EphemeralResolveInfo;>;"
    if-eqz v0, :cond_1

    #@24
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@26
    check-cast v4, Ljava/lang/Integer;

    #@28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v5

    #@30
    if-lt v4, v5, :cond_1

    #@32
    .line 11310
    return-object v6

    #@33
    .line 11312
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;

    #@36
    move-result-object v3

    #@37
    .line 11313
    .local v3, "res":Landroid/content/pm/EphemeralResolveInfo;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v4

    #@3b
    if-lez v4, :cond_2

    #@3d
    .line 11315
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    #@3f
    new-instance v5, Landroid/util/Pair;

    #@41
    invoke-direct {v5, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@44
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 11317
    :cond_2
    return-object v3
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 11299
    check-cast p1, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;

    #@2
    .end local p1    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->newResult(Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;II)Landroid/content/pm/EphemeralResolveInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
