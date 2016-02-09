.class Landroid/media/MediaScanner$MediaBulkDeleter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBulkDeleter"
.end annotation


# instance fields
.field final mBaseUri:Landroid/net/Uri;

.field final mPackageName:Ljava/lang/String;

.field final mProvider:Landroid/content/IContentProvider;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    #@a
    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    #@c
    const/16 v1, 0x64

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    #@13
    .line 1233
    iput-object p1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    #@15
    .line 1234
    iput-object p2, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mPackageName:Ljava/lang/String;

    #@17
    .line 1235
    iput-object p3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    #@19
    .line 1232
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1239
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1240
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    #@a
    const-string/jumbo v1, ","

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 1242
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    #@12
    const-string/jumbo v1, "?"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1243
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, ""

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 1244
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v0

    #@37
    const/16 v1, 0x64

    #@39
    if-le v0, v1, :cond_1

    #@3b
    .line 1245
    invoke-virtual {p0}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    #@3e
    .line 1238
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1249
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 1250
    .local v2, "size":I
    if-lez v2, :cond_0

    #@9
    .line 1251
    new-array v0, v2, [Ljava/lang/String;

    #@b
    .line 1252
    .local v0, "foo":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .end local v0    # "foo":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    #@13
    .line 1253
    .restart local v0    # "foo":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    #@15
    iget-object v4, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mPackageName:Ljava/lang/String;

    #@17
    iget-object v5, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    #@19
    .line 1254
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "_id IN ("

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    .line 1255
    iget-object v7, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    #@27
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 1254
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    .line 1255
    const-string/jumbo v7, ")"

    #@32
    .line 1254
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .line 1253
    invoke-interface {v3, v4, v5, v6, v0}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@3d
    move-result v1

    #@3e
    .line 1257
    .local v1, "numrows":I
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    #@40
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@43
    .line 1258
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@48
    .line 1248
    .end local v0    # "foo":[Ljava/lang/String;
    .end local v1    # "numrows":I
    :cond_0
    return-void
.end method
