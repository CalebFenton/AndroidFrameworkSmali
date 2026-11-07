.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private final greylist-max-o mBufferSizePerUri:I

.field private final greylist-max-o mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mProvider:Landroid/content/ContentProviderClient;

.field private final greylist-max-o mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/ContentProviderClient;I)V
    .registers 4
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "bufferSizePerUri"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    .line 46
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 47
    return-void
.end method

.method private greylist-max-o flush(Landroid/net/Uri;Ljava/util/List;)V
    .registers 5
    .param p1, "tableUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 92
    .local v0, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/ContentValues;

    .line 93
    iget-object v1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 94
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 96
    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    :cond_1b
    return-void
.end method

.method private greylist-max-o flushAllPriority()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 83
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 84
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v1, v2}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 85
    .end local v1    # "tableUri":Landroid/net/Uri;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    goto :goto_a

    .line 86
    :cond_22
    iget-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    return-void
.end method

.method private greylist-max-o insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .registers 8
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "priority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    if-eqz p3, :cond_5

    iget-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 59
    .local v0, "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :goto_7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 60
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_18

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 62
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_18
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v2, v3, :cond_2e

    .line 66
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 67
    invoke-direct {p0, p1, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 69
    :cond_2e
    return-void
.end method


# virtual methods
.method public greylist flushAll()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 74
    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 75
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 76
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v1, v2}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 77
    .end local v1    # "tableUri":Landroid/net/Uri;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    goto :goto_d

    .line 78
    :cond_25
    iget-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    return-void
.end method

.method public greylist-max-o insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 51
    return-void
.end method

.method public greylist-max-o insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 55
    return-void
.end method
