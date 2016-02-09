.class public final Landroid/provider/DocumentsContract;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DocumentsContract$Document;,
        Landroid/provider/DocumentsContract$Root;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSE_DOCUMENT_ROOT:Ljava/lang/String; = "android.provider.action.BROWSE_DOCUMENT_ROOT"

.field public static final ACTION_DOCUMENT_ROOT_SETTINGS:Ljava/lang/String; = "android.provider.action.DOCUMENT_ROOT_SETTINGS"

.field public static final ACTION_MANAGE_DOCUMENT:Ljava/lang/String; = "android.provider.action.MANAGE_DOCUMENT"

.field public static final ACTION_MANAGE_ROOT:Ljava/lang/String; = "android.provider.action.MANAGE_ROOT"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_EXCLUDE_SELF:Ljava/lang/String; = "android.provider.extra.EXCLUDE_SELF"

.field public static final EXTRA_INFO:Ljava/lang/String; = "info"

.field public static final EXTRA_LOADING:Ljava/lang/String; = "loading"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "android.content.extra.ORIENTATION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_PROMPT:Ljava/lang/String; = "android.provider.extra.PROMPT"

.field public static final EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.content.extra.SHOW_ADVANCED"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final METHOD_CREATE_DOCUMENT:Ljava/lang/String; = "android:createDocument"

.field public static final METHOD_DELETE_DOCUMENT:Ljava/lang/String; = "android:deleteDocument"

.field public static final METHOD_RENAME_DOCUMENT:Ljava/lang/String; = "android:renameDocument"

.field private static final PARAM_MANAGE:Ljava/lang/String; = "manage"

.field private static final PARAM_QUERY:Ljava/lang/String; = "query"

.field private static final PATH_CHILDREN:Ljava/lang/String; = "children"

.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final PATH_RECENT:Ljava/lang/String; = "recent"

.field private static final PATH_ROOT:Ljava/lang/String; = "root"

.field private static final PATH_SEARCH:Ljava/lang/String; = "search"

.field private static final PATH_TREE:Ljava/lang/String; = "tree"

.field public static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.DOCUMENTS_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "Documents"

.field private static final THUMBNAIL_BUFFER_SIZE:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 666
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 667
    const-string/jumbo v1, "document"

    #@13
    .line 666
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 667
    const-string/jumbo v1, "children"

    #@1e
    .line 666
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public static buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "treeUri"    # Landroid/net/Uri;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 696
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    .line 697
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 696
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@13
    move-result-object v0

    #@14
    .line 697
    const-string/jumbo v1, "tree"

    #@17
    .line 696
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 698
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 696
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@22
    move-result-object v0

    #@23
    .line 698
    const-string/jumbo v1, "document"

    #@26
    .line 696
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2d
    move-result-object v0

    #@2e
    .line 699
    const-string/jumbo v1, "children"

    #@31
    .line 696
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@38
    move-result-object v0

    #@39
    return-object v0
.end method

.method public static buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 611
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 612
    const-string/jumbo v1, "document"

    #@13
    .line 611
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "documentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 647
    invoke-static {p0}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 648
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "treeUri"    # Landroid/net/Uri;
    .param p1, "documentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 639
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    .line 640
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 639
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@13
    move-result-object v0

    #@14
    .line 640
    const-string/jumbo v1, "tree"

    #@17
    .line 639
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 641
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 639
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@22
    move-result-object v0

    #@23
    .line 641
    const-string/jumbo v1, "document"

    #@26
    .line 639
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public static buildRecentDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 586
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 587
    const-string/jumbo v1, "root"

    #@13
    .line 586
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 588
    const-string/jumbo v1, "recent"

    #@1e
    .line 586
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public static buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 573
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 574
    const-string/jumbo v1, "root"

    #@13
    .line 573
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 562
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 563
    const-string/jumbo v1, "root"

    #@13
    .line 562
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static buildSearchDocumentsUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 713
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 714
    const-string/jumbo v1, "root"

    #@13
    .line 713
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 714
    const-string/jumbo v1, "search"

    #@1e
    .line 713
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@21
    move-result-object v0

    #@22
    .line 715
    const-string/jumbo v1, "query"

    #@25
    .line 713
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public static buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 598
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "content"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    move-result-object v0

    #@10
    .line 599
    const-string/jumbo v1, "tree"

    #@13
    .line 598
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 941
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 942
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    #@8
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    .line 943
    const-string/jumbo v2, "mime_type"

    #@e
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 944
    const-string/jumbo v2, "_display_name"

    #@14
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 946
    const-string/jumbo v2, "android:createDocument"

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p0, v2, v3, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@1e
    move-result-object v1

    #@1f
    .line 947
    .local v1, "out":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    #@22
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/net/Uri;

    #@28
    return-object v2
.end method

.method public static createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 926
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@7
    move-result-object v0

    #@8
    .line 929
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 934
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@f
    .line 929
    return-object v2

    #@10
    .line 930
    :catch_0
    move-exception v1

    #@11
    .line 931
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Documents"

    #@14
    const-string/jumbo v3, "Failed to create document"

    #@17
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 932
    const/4 v2, 0x0

    #@1b
    .line 934
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@1e
    .line 932
    return-object v2

    #@1f
    .line 933
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@20
    .line 934
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@23
    .line 933
    throw v2
.end method

.method public static deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 3
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1012
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1013
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v1, "uri"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@b
    .line 1015
    const-string/jumbo v1, "android:deleteDocument"

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@12
    .line 1011
    return-void
.end method

.method public static deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 997
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 996
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@7
    move-result-object v0

    #@8
    .line 999
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1000
    const/4 v2, 0x1

    #@c
    .line 1005
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@f
    .line 1000
    return v2

    #@10
    .line 1001
    :catch_0
    move-exception v1

    #@11
    .line 1002
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Documents"

    #@14
    const-string/jumbo v3, "Failed to delete document"

    #@17
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 1003
    const/4 v2, 0x0

    #@1b
    .line 1005
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@1e
    .line 1003
    return v2

    #@1f
    .line 1004
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@20
    .line 1005
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@23
    .line 1004
    throw v2
.end method

.method public static getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "documentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 772
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 773
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    if-lt v1, v4, :cond_0

    #@c
    const-string/jumbo v1, "document"

    #@f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 774
    const/4 v1, 0x1

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    return-object v1

    #@21
    .line 776
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x4

    #@26
    if-lt v1, v2, :cond_1

    #@28
    const-string/jumbo v1, "tree"

    #@2b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 777
    const-string/jumbo v1, "document"

    #@38
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    .line 776
    if-eqz v1, :cond_1

    #@42
    .line 778
    const/4 v1, 0x3

    #@43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, Ljava/lang/String;

    #@49
    return-object v1

    #@4a
    .line 780
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "Invalid URI: "

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 847
    new-instance v17, Landroid/os/Bundle;

    #@2
    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 848
    .local v17, "openOpts":Landroid/os/Bundle;
    const-string/jumbo v5, "android.content.extra.SIZE"

    #@8
    move-object/from16 v0, v17

    #@a
    move-object/from16 v1, p2

    #@c
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 850
    const/4 v11, 0x0

    #@10
    .line 851
    .local v11, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v4, 0x0

    #@11
    .line 853
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string/jumbo v5, "image/*"

    #@14
    move-object/from16 v0, p0

    #@16
    move-object/from16 v1, p1

    #@18
    move-object/from16 v2, v17

    #@1a
    move-object/from16 v3, p3

    #@1c
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@1f
    move-result-object v11

    #@20
    .line 855
    .local v11, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@23
    move-result-object v14

    #@24
    .line 856
    .local v14, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-wide v18

    #@28
    .line 860
    .local v18, "offset":J
    const/16 v16, 0x0

    #@2a
    .line 862
    .local v16, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    #@2c
    move-wide/from16 v0, v18

    #@2e
    invoke-static {v14, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 870
    .end local v16    # "is":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    #@33
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@36
    .line 871
    .local v20, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    #@37
    move-object/from16 v0, v20

    #@39
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@3b
    .line 872
    if-eqz v16, :cond_1

    #@3d
    .line 873
    const/4 v5, 0x0

    #@3e
    move-object/from16 v0, v16

    #@40
    move-object/from16 v1, v20

    #@42
    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@45
    .line 878
    :goto_1
    move-object/from16 v0, v20

    #@47
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@49
    move-object/from16 v0, p2

    #@4b
    iget v6, v0, Landroid/graphics/Point;->x:I

    #@4d
    div-int v22, v5, v6

    #@4f
    .line 879
    .local v22, "widthSample":I
    move-object/from16 v0, v20

    #@51
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@53
    move-object/from16 v0, p2

    #@55
    iget v6, v0, Landroid/graphics/Point;->y:I

    #@57
    div-int v15, v5, v6

    #@59
    .line 881
    .local v15, "heightSample":I
    const/4 v5, 0x0

    #@5a
    move-object/from16 v0, v20

    #@5c
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@5e
    .line 882
    move/from16 v0, v22

    #@60
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    #@63
    move-result v5

    #@64
    move-object/from16 v0, v20

    #@66
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@68
    .line 883
    if-eqz v16, :cond_2

    #@6a
    .line 884
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedInputStream;->reset()V

    #@6d
    .line 885
    const/4 v5, 0x0

    #@6e
    move-object/from16 v0, v16

    #@70
    move-object/from16 v1, v20

    #@72
    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@75
    move-result-object v4

    #@76
    .line 898
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    #@79
    move-result-object v13

    #@7a
    .line 899
    .local v13, "extras":Landroid/os/Bundle;
    if-eqz v13, :cond_3

    #@7c
    const-string/jumbo v5, "android.content.extra.ORIENTATION"

    #@7f
    const/4 v6, 0x0

    #@80
    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@83
    move-result v21

    #@84
    .line 900
    .local v21, "orientation":I
    :goto_3
    if-eqz v21, :cond_0

    #@86
    .line 901
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    #@89
    move-result v7

    #@8a
    .line 902
    .local v7, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    #@8d
    move-result v8

    #@8e
    .line 904
    .local v8, "height":I
    new-instance v9, Landroid/graphics/Matrix;

    #@90
    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    #@93
    .line 905
    .local v9, "m":Landroid/graphics/Matrix;
    move/from16 v0, v21

    #@95
    int-to-float v5, v0

    #@96
    div-int/lit8 v6, v7, 0x2

    #@98
    int-to-float v6, v6

    #@99
    div-int/lit8 v10, v8, 0x2

    #@9b
    int-to-float v10, v10

    #@9c
    invoke-virtual {v9, v5, v6, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@9f
    .line 906
    const/4 v5, 0x0

    #@a0
    const/4 v6, 0x0

    #@a1
    const/4 v10, 0x0

    #@a2
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a5
    move-result-object v4

    #@a6
    .line 909
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a9
    .line 912
    return-object v4

    #@aa
    .line 863
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v15    # "heightSample":I
    .end local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "orientation":I
    .end local v22    # "widthSample":I
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "is":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v12

    #@ab
    .line 864
    .local v12, "e":Landroid/system/ErrnoException;
    :try_start_3
    new-instance v16, Ljava/io/BufferedInputStream;

    #@ad
    .end local v16    # "is":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/FileInputStream;

    #@af
    invoke-direct {v5, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@b2
    const/high16 v6, 0x20000

    #@b4
    move-object/from16 v0, v16

    #@b6
    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@b9
    .line 865
    .local v16, "is":Ljava/io/BufferedInputStream;
    const/high16 v5, 0x20000

    #@bb
    move-object/from16 v0, v16

    #@bd
    invoke-virtual {v0, v5}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c0
    goto/16 :goto_0

    #@c2
    .line 908
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "e":Landroid/system/ErrnoException;
    .end local v14    # "fd":Ljava/io/FileDescriptor;
    .end local v16    # "is":Ljava/io/BufferedInputStream;
    .end local v18    # "offset":J
    :catchall_0
    move-exception v5

    #@c3
    .line 909
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c6
    .line 908
    throw v5

    #@c7
    .line 875
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "fd":Ljava/io/FileDescriptor;
    .restart local v18    # "offset":J
    .restart local v20    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x0

    #@c8
    :try_start_4
    move-object/from16 v0, v20

    #@ca
    invoke-static {v14, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cd
    goto/16 :goto_1

    #@cf
    .line 888
    .restart local v15    # "heightSample":I
    .restart local v22    # "widthSample":I
    :cond_2
    :try_start_5
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    #@d1
    move-wide/from16 v0, v18

    #@d3
    invoke-static {v14, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d6
    .line 892
    :goto_4
    const/4 v5, 0x0

    #@d7
    :try_start_6
    move-object/from16 v0, v20

    #@d9
    invoke-static {v14, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@dc
    move-result-object v4

    #@dd
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    #@de
    .line 889
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v12

    #@df
    .line 890
    .restart local v12    # "e":Landroid/system/ErrnoException;
    invoke-virtual {v12}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@e2
    goto :goto_4

    #@e3
    .line 899
    .end local v12    # "e":Landroid/system/ErrnoException;
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "extras":Landroid/os/Bundle;
    :cond_3
    const/16 v21, 0x0

    #@e5
    .restart local v21    # "orientation":I
    goto :goto_3
.end method

.method public static getDocumentThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    .line 830
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 829
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@7
    move-result-object v0

    #@8
    .line 832
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->getDocumentThumbnail(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 839
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@f
    .line 832
    return-object v2

    #@10
    .line 833
    :catch_0
    move-exception v1

    #@11
    .line 834
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v2, v1, Landroid/os/OperationCanceledException;

    #@13
    if-nez v2, :cond_0

    #@15
    .line 835
    const-string/jumbo v2, "Documents"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Failed to load thumbnail for "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string/jumbo v4, ": "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 837
    :cond_0
    const/4 v2, 0x0

    #@3b
    .line 839
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@3e
    .line 837
    return-object v2

    #@3f
    .line 838
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@40
    .line 839
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@43
    .line 838
    throw v2
.end method

.method public static getRootId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "rootUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 759
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 760
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x2

    #@9
    if-lt v1, v2, :cond_0

    #@b
    const-string/jumbo v1, "root"

    #@e
    const/4 v2, 0x0

    #@f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 761
    const/4 v1, 0x1

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    return-object v1

    #@21
    .line 763
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Invalid URI: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method

.method public static getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "searchDocumentsUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 799
    const-string/jumbo v0, "query"

    #@3
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "documentUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 788
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x2

    #@9
    if-lt v1, v2, :cond_0

    #@b
    const-string/jumbo v1, "tree"

    #@e
    const/4 v2, 0x0

    #@f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 789
    const/4 v1, 0x1

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/String;

    #@20
    return-object v1

    #@21
    .line 791
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Invalid URI: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 726
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 727
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    if-ne v1, v4, :cond_0

    #@c
    const-string/jumbo v1, "document"

    #@f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 728
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    return v1

    #@22
    .line 730
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x4

    #@27
    if-ne v1, v2, :cond_1

    #@29
    const-string/jumbo v1, "tree"

    #@2c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 731
    const-string/jumbo v1, "document"

    #@39
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    .line 730
    if-eqz v1, :cond_1

    #@43
    .line 732
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    #@4a
    move-result v1

    #@4b
    return v1

    #@4c
    .line 734
    :cond_1
    return v3
.end method

.method private static isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 744
    new-instance v3, Landroid/content/Intent;

    #@3
    const-string/jumbo v4, "android.content.action.DOCUMENTS_PROVIDER"

    #@6
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 745
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    #@10
    move-result-object v2

    #@11
    .line 747
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@21
    .line 748
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@23
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 749
    const/4 v4, 0x1

    #@2c
    return v4

    #@2d
    .line 752
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v5
.end method

.method public static isManageMode(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 809
    const-string/jumbo v0, "manage"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isTreeUri(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 739
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 740
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    const/4 v3, 0x2

    #@a
    if-lt v2, v3, :cond_0

    #@c
    const-string/jumbo v2, "tree"

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :cond_0
    return v1
.end method

.method public static openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1027
    const/high16 v0, 0x10000000

    #@2
    .line 1026
    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v1

    #@6
    .line 1028
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    #@7
    .line 1031
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    #@9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    #@10
    .line 1033
    .local v8, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v0, "Orientation"

    #@13
    const/4 v2, -0x1

    #@14
    invoke-virtual {v8, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    #@17
    move-result v0

    #@18
    packed-switch v0, :pswitch_data_0

    #@1b
    .line 1048
    .end local v6    # "extras":Landroid/os/Bundle;
    :goto_0
    :pswitch_0
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    #@1e
    move-result-object v10

    #@1f
    .line 1049
    .local v10, "thumb":[J
    if-eqz v10, :cond_0

    #@21
    .line 1050
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@23
    const/4 v2, 0x0

    #@24
    aget-wide v2, v10, v2

    #@26
    const/4 v4, 0x1

    #@27
    aget-wide v4, v10, v4

    #@29
    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    #@2c
    return-object v0

    #@2d
    .line 1035
    .end local v10    # "thumb":[J
    .restart local v6    # "extras":Landroid/os/Bundle;
    :pswitch_1
    new-instance v9, Landroid/os/Bundle;

    #@2f
    const/4 v0, 0x1

    #@30
    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 1036
    .local v9, "extras":Landroid/os/Bundle;
    :try_start_1
    const-string/jumbo v0, "android.content.extra.ORIENTATION"

    #@36
    .end local v6    # "extras":Landroid/os/Bundle;
    const/16 v2, 0x5a

    #@38
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-object v6, v9

    #@3c
    .line 1037
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    goto :goto_0

    #@3d
    .line 1039
    .local v6, "extras":Landroid/os/Bundle;
    :pswitch_2
    :try_start_2
    new-instance v9, Landroid/os/Bundle;

    #@3f
    const/4 v0, 0x1

    #@40
    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 1040
    .restart local v9    # "extras":Landroid/os/Bundle;
    :try_start_3
    const-string/jumbo v0, "android.content.extra.ORIENTATION"

    #@46
    .end local v6    # "extras":Landroid/os/Bundle;
    const/16 v2, 0xb4

    #@48
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@4b
    move-object v6, v9

    #@4c
    .line 1041
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    goto :goto_0

    #@4d
    .line 1043
    .local v6, "extras":Landroid/os/Bundle;
    :pswitch_3
    :try_start_4
    new-instance v9, Landroid/os/Bundle;

    #@4f
    const/4 v0, 0x1

    #@50
    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@53
    .line 1044
    .restart local v9    # "extras":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v0, "android.content.extra.ORIENTATION"

    #@56
    .end local v6    # "extras":Landroid/os/Bundle;
    const/16 v2, 0x10e

    #@58
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@5b
    move-object v6, v9

    #@5c
    .line 1045
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v6, "extras":Landroid/os/Bundle;
    goto :goto_0

    #@5d
    .line 1052
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v7

    #@5e
    .line 1055
    :cond_0
    :goto_1
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@60
    const-wide/16 v2, 0x0

    #@62
    const-wide/16 v4, -0x1

    #@64
    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    #@67
    return-object v0

    #@68
    .line 1052
    .restart local v8    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v7

    #@69
    .local v7, "e":Ljava/io/IOException;
    move-object v6, v9

    #@6a
    .end local v9    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_1

    #@6b
    .line 1033
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static renameDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 980
    new-instance v0, Landroid/os/Bundle;

    #@3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 981
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v3, "uri"

    #@9
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@c
    .line 982
    const-string/jumbo v3, "_display_name"

    #@f
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 984
    const-string/jumbo v3, "android:renameDocument"

    #@15
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@18
    move-result-object v1

    #@19
    .line 985
    .local v1, "out":Landroid/os/Bundle;
    const-string/jumbo v3, "uri"

    #@1c
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/net/Uri;

    #@22
    .line 986
    .local v2, "outUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    #@24
    .end local v2    # "outUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    #@25
    .restart local v2    # "outUri":Landroid/net/Uri;
    :cond_0
    move-object v2, p1

    #@26
    goto :goto_0
.end method

.method public static renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 966
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 965
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@7
    move-result-object v0

    #@8
    .line 968
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 973
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@f
    .line 968
    return-object v2

    #@10
    .line 969
    :catch_0
    move-exception v1

    #@11
    .line 970
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "Documents"

    #@14
    const-string/jumbo v3, "Failed to rename document"

    #@17
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 971
    const/4 v2, 0x0

    #@1b
    .line 973
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@1e
    .line 971
    return-object v2

    #@1f
    .line 972
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@20
    .line 973
    invoke-static {v0}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    #@23
    .line 972
    throw v2
.end method

.method public static setManageMode(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 804
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "manage"

    #@7
    const-string/jumbo v2, "true"

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method
