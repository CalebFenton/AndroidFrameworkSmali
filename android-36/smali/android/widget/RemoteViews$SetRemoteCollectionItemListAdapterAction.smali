.class Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteCollectionItemListAdapterAction"
.end annotation


# instance fields
.field blacklist mIntentId:I

.field blacklist mIsReplacedIntoAction:Z

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field final blacklist mServiceIntent:Landroid/content/Intent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 5
    .param p2, "id"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1245
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1234
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1246
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1247
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1248
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    .line 1249
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 6
    .param p2, "id"    # I
    .param p3, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1238
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1234
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1235
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1239
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1240
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1241
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1242
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    .line 1243
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 5
    .param p2, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1251
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 1234
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1235
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 1255
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    .line 1256
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2d

    .line 1257
    goto :goto_36

    .line 1258
    :cond_2d
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    :goto_36
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1259
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 12
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 1288
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1289
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 1291
    :cond_9
    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 1292
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v1, :cond_1c

    .line 1293
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    goto :goto_2b

    .line 1294
    :cond_1c
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    goto :goto_2b

    .line 1295
    :cond_1f
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    :goto_2b
    nop

    .line 1298
    .local v1, "items":Landroid/widget/RemoteViews$RemoteCollectionItems;
    instance-of v2, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v3, ")"

    const-string v4, "RemoteViews"

    if-nez v2, :cond_52

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRemoteAdapter can only be used for AppWidgets (root id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void

    .line 1304
    :cond_52
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_73

    .line 1305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot call setRemoteAdapter on a view which is not an AdapterView (id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-void

    .line 1310
    :cond_73
    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    .line 1311
    .local v2, "adapterView":Landroid/widget/AdapterView;
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    .line 1312
    .local v3, "adapter":Landroid/widget/Adapter;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v4

    .line 1317
    .local v4, "onLightBackground":Z
    instance-of v5, v3, Landroid/widget/RemoteCollectionItemsAdapter;

    if-eqz v5, :cond_a2

    .line 1318
    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v6

    if-lt v5, v6, :cond_a2

    .line 1320
    :try_start_8f
    move-object v5, v3

    check-cast v5, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v6, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v7, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 1321
    invoke-virtual {v5, v1, v6, v7, v4}, Landroid/widget/RemoteCollectionItemsAdapter;->setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_9b

    .line 1330
    nop

    .line 1331
    return-void

    .line 1326
    :catchall_9b
    move-exception v5

    .line 1329
    .local v5, "throwable":Ljava/lang/Throwable;
    new-instance v6, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v6, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1335
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_a2
    :try_start_a2
    new-instance v5, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v6, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v7, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {v5, v1, v6, v7, v4}, Landroid/widget/RemoteCollectionItemsAdapter;-><init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Z)V

    invoke-virtual {v2, v5}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V
    :try_end_ae
    .catchall {:try_start_a2 .. :try_end_ae} :catchall_bf

    .line 1342
    nop

    .line 1343
    instance-of v5, v2, Landroid/widget/AbsListView;

    if-eqz v5, :cond_be

    move-object v5, v2

    check-cast v5, Landroid/widget/AbsListView;

    .line 1344
    .local v5, "listView":Landroid/widget/AbsListView;
    new-instance v6, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;

    invoke-direct {v6, p0, p3}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction$1;-><init>(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1358
    .end local v5    # "listView":Landroid/widget/AbsListView;
    :cond_be
    return-void

    .line 1338
    :catchall_bf
    move-exception v5

    .line 1341
    .local v5, "throwable":Ljava/lang/Throwable;
    new-instance v6, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v6, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 1401
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 1362
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "33_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 4
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 1263
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_a

    .line 1264
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1265
    return-void

    .line 1268
    :cond_a
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 1270
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V

    .line 1272
    :cond_1a
    return-void
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 1387
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/Icon;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_16

    .line 1388
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1389
    .local v0, "cachedItems":Landroid/widget/RemoteViews$RemoteCollectionItems;
    if-eqz v0, :cond_15

    .line 1390
    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitIcons(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1392
    :cond_15
    return-void

    .line 1395
    .end local v0    # "cachedItems":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :cond_16
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitIcons(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1396
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1372
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_16

    .line 1375
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    .line 1376
    .local v0, "cachedItems":Landroid/widget/RemoteViews$RemoteCollectionItems;
    if-eqz v0, :cond_15

    .line 1377
    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1379
    :cond_15
    return-void

    .line 1382
    .end local v0    # "cachedItems":Landroid/widget/RemoteViews$RemoteCollectionItems;
    :cond_16
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    .line 1383
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1276
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1279
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1280
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_1e

    .line 1281
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    .line 1283
    :cond_1e
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 1406
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_5

    return-void

    .line 1407
    :cond_5
    const-wide v0, 0x10b0000000eL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1409
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    .line 1410
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1409
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1411
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1413
    .local v2, "itemsToken":J
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v5, 0x1

    invoke-static {v4, p2, p1, v5}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToProto(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 1414
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1415
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1416
    return-void
.end method
