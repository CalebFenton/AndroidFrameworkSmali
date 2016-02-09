.class Landroid/test/mock/MockContentProvider$InversionIContentProvider;
.super Ljava/lang/Object;
.source "MockContentProvider.java"

# interfaces
.implements Landroid/content/IContentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/mock/MockContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InversionIContentProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/mock/MockContentProvider;


# direct methods
.method private constructor <init>(Landroid/test/mock/MockContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/mock/MockContentProvider;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider$InversionIContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/mock/MockContentProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "request"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/test/mock/MockContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p1}, Landroid/test/mock/MockContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .param p5, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3}, Landroid/test/mock/MockContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3, p4}, Landroid/test/mock/MockContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    move-object v1, p2

    #@3
    move-object v2, p3

    #@4
    move-object v3, p4

    #@5
    move-object v4, p5

    #@6
    move-object v5, p6

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/test/mock/MockContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2}, Landroid/test/mock/MockContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;->this$0:Landroid/test/mock/MockContentProvider;

    #@2
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/test/mock/MockContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
