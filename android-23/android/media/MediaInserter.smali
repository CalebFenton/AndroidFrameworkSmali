.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private final mBufferSizePerUri:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V
    .locals 1
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bufferSizePerUri"    # I

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 35
    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    #@a
    .line 38
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 37
    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    #@11
    .line 45
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    #@13
    .line 46
    iput-object p2, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    #@15
    .line 47
    iput p3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    #@17
    .line 44
    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .param p1, "tableUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    new-array v0, v1, [Landroid/content/ContentValues;

    #@c
    .line 92
    .local v0, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v0, [Landroid/content/ContentValues;

    #@12
    .line 93
    .restart local v0    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    #@14
    iget-object v2, p0, Landroid/media/MediaInserter;->mPackageName:Ljava/lang/String;

    #@16
    invoke-interface {v1, v2, p1, v0}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    #@19
    .line 94
    invoke-interface {p2}, Ljava/util/List;->clear()V

    #@1c
    .line 89
    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private flushAllPriority()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "tableUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/net/Uri;

    #@16
    .line 83
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    #@18
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/List;

    #@1e
    .line 84
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    #@21
    goto :goto_0

    #@22
    .line 86
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "tableUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    #@24
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@27
    .line 81
    return-void
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 4
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "priority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    if-eqz p3, :cond_2

    #@2
    iget-object v1, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    #@4
    .line 60
    .local v1, "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/List;

    #@a
    .line 61
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    #@c
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    #@e
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 63
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 65
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    #@16
    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    #@19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
    iget v3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    #@22
    if-lt v2, v3, :cond_1

    #@24
    .line 67
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    #@27
    .line 68
    invoke-direct {p0, p1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    #@2a
    .line 58
    :cond_1
    return-void

    #@2b
    .line 59
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_2
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    #@2d
    .restart local v1    # "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    goto :goto_0
.end method


# virtual methods
.method public flushAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    #@3
    .line 74
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "tableUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/net/Uri;

    #@19
    .line 75
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/List;

    #@21
    .line 76
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    #@24
    goto :goto_0

    #@25
    .line 78
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "tableUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    #@27
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    #@2a
    .line 72
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    #@4
    .line 50
    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    #@4
    .line 54
    return-void
.end method
