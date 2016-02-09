.class public Landroid/test/mock/MockContentResolver;
.super Landroid/content/ContentResolver;
.source "MockContentResolver.java"


# instance fields
.field mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/test/mock/MockContentResolver;-><init>(Landroid/content/Context;)V

    #@4
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    #@3
    .line 71
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    #@9
    .line 69
    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 102
    iget-object v1, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    #@3
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/ContentProvider;

    #@9
    .line 104
    .local v0, "provider":Landroid/content/ContentProvider;
    if-eqz v0, :cond_0

    #@b
    .line 105
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 107
    :cond_0
    return-object v2
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ContentProvider;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 81
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    #@0
    .prologue
    .line 146
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 1
    .param p1, "provider"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 114
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 1
    .param p1, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 0
    .param p1, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 131
    return-void
.end method
