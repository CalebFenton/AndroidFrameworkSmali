.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1212
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@a
    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@11
    .line 1216
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@13
    .line 1215
    return-void
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    #@0
    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    #@3
    move-result v1

    #@4
    if-ne p2, v1, :cond_0

    #@6
    .line 1282
    iget-object v8, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@8
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@a
    move-object v1, p0

    #@b
    move-object v2, p3

    #@c
    move/from16 v3, p4

    #@e
    move-object/from16 v4, p5

    #@10
    move/from16 v5, p6

    #@12
    move/from16 v6, p7

    #@14
    move/from16 v7, p8

    #@16
    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@19
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1284
    return-void

    #@1d
    .line 1288
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    #@20
    move-result-object v11

    #@21
    .line 1289
    .local v11, "segment":Ljava/lang/String;
    if-nez v11, :cond_1

    #@23
    .line 1290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Invalid Uri ("

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, ") used for observer"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 1292
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v9

    #@4a
    .line 1293
    .local v9, "N":I
    const/4 v10, 0x0

    #@4b
    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_3

    #@4d
    .line 1294
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@55
    .line 1295
    .local v0, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@57
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 1296
    add-int/lit8 v2, p2, 0x1

    #@5f
    move-object v1, p1

    #@60
    move-object v3, p3

    #@61
    move/from16 v4, p4

    #@63
    move-object/from16 v5, p5

    #@65
    move/from16 v6, p6

    #@67
    move/from16 v7, p7

    #@69
    move/from16 v8, p8

    #@6b
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@6e
    .line 1298
    return-void

    #@6f
    .line 1293
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1303
    .end local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@74
    invoke-direct {v0, v11}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    #@77
    .line 1304
    .restart local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7c
    .line 1305
    add-int/lit8 v2, p2, 0x1

    #@7e
    move-object v1, p1

    #@7f
    move-object v3, p3

    #@80
    move/from16 v4, p4

    #@82
    move-object/from16 v5, p5

    #@84
    move/from16 v6, p6

    #@86
    move/from16 v7, p7

    #@88
    move/from16 v8, p8

    #@8a
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@8d
    .line 1279
    return-void
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "leaf"    # Z
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1341
    .local p6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1342
    .local v0, "N":I
    if-nez p2, :cond_3

    #@8
    const/4 v3, 0x0

    #@9
    .line 1343
    :goto_0
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_8

    #@c
    .line 1344
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@14
    .line 1348
    .local v1, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@16
    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v5

    #@1a
    if-ne v5, v3, :cond_4

    #@1c
    const/4 v4, 0x1

    #@1d
    .line 1349
    .local v4, "selfChange":Z
    :goto_2
    if-eqz v4, :cond_0

    #@1f
    if-eqz p3, :cond_2

    #@21
    .line 1354
    :cond_0
    const/4 v5, -0x1

    #@22
    if-eq p5, v5, :cond_1

    #@24
    .line 1355
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-get0(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    #@27
    move-result v5

    #@28
    const/4 v6, -0x1

    #@29
    if-ne v5, v6, :cond_5

    #@2b
    .line 1358
    :cond_1
    :goto_3
    if-eqz p1, :cond_6

    #@2d
    .line 1362
    and-int/lit8 v5, p4, 0x2

    #@2f
    if-eqz v5, :cond_7

    #@31
    .line 1363
    iget-boolean v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    #@33
    .line 1362
    if-eqz v5, :cond_7

    #@35
    .line 1343
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_1

    #@38
    .line 1342
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2    # "i":I
    .end local v4    # "selfChange":Z
    :cond_3
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@3b
    move-result-object v3

    #@3c
    .local v3, "observerBinder":Landroid/os/IBinder;
    goto :goto_0

    #@3d
    .line 1348
    .end local v3    # "observerBinder":Landroid/os/IBinder;
    .restart local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2    # "i":I
    :cond_4
    const/4 v4, 0x0

    #@3e
    goto :goto_2

    #@3f
    .line 1356
    .restart local v4    # "selfChange":Z
    :cond_5
    invoke-static {v1}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-get0(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    #@42
    move-result v5

    #@43
    if-ne p5, v5, :cond_2

    #@45
    goto :goto_3

    #@46
    .line 1371
    :cond_6
    iget-boolean v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    #@48
    if-eqz v5, :cond_2

    #@4a
    .line 1380
    :cond_7
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    #@4c
    iget-object v6, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@4e
    .line 1381
    iget v7, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    #@50
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    #@53
    move-result v7

    #@54
    .line 1380
    invoke-direct {v5, p0, v6, v4, v7}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZI)V

    #@57
    invoke-virtual {p6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_4

    #@5b
    .line 1340
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v4    # "selfChange":Z
    :cond_8
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1263
    if-nez p1, :cond_0

    #@2
    .line 1264
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1266
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    return v0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1251
    if-eqz p1, :cond_1

    #@3
    .line 1252
    if-nez p2, :cond_0

    #@5
    .line 1253
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 1255
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    add-int/lit8 v1, p2, -0x1

    #@10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    return-object v0

    #@17
    .line 1258
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    #@0
    .prologue
    .line 1273
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move-object v5, p4

    #@6
    move v6, p5

    #@7
    move v7, p6

    #@8
    move/from16 v8, p7

    #@a
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    #@d
    .line 1272
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1392
    .local p7, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    const/4 v10, 0x0

    #@1
    .line 1393
    .local v10, "segment":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    #@4
    move-result v11

    #@5
    .line 1394
    .local v11, "segmentCount":I
    if-lt p2, v11, :cond_3

    #@7
    .line 1397
    const/4 v1, 0x1

    #@8
    move-object v0, p0

    #@9
    move-object v2, p3

    #@a
    move/from16 v3, p4

    #@c
    move/from16 v4, p5

    #@e
    move/from16 v5, p6

    #@10
    move-object/from16 v6, p7

    #@12
    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    #@15
    .line 1408
    .end local v10    # "segment":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v8

    #@1b
    .line 1409
    .local v8, "N":I
    const/4 v9, 0x0

    #@1c
    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    #@1e
    .line 1410
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@26
    .line 1411
    .local v0, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v10, :cond_1

    #@28
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_4

    #@30
    .line 1413
    :cond_1
    add-int/lit8 v2, p2, 0x1

    #@32
    move-object v1, p1

    #@33
    move-object v3, p3

    #@34
    move/from16 v4, p4

    #@36
    move/from16 v5, p5

    #@38
    move/from16 v6, p6

    #@3a
    move-object/from16 v7, p7

    #@3c
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    #@3f
    .line 1415
    if-eqz v10, :cond_4

    #@41
    .line 1391
    .end local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_2
    return-void

    #@42
    .line 1399
    .end local v8    # "N":I
    .end local v9    # "i":I
    .restart local v10    # "segment":Ljava/lang/String;
    :cond_3
    if-ge p2, v11, :cond_0

    #@44
    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    #@47
    move-result-object v10

    #@48
    .line 1404
    .local v10, "segment":Ljava/lang/String;
    const/4 v1, 0x0

    #@49
    move-object v0, p0

    #@4a
    move-object v2, p3

    #@4b
    move/from16 v3, p4

    #@4d
    move/from16 v4, p5

    #@4f
    move/from16 v5, p6

    #@51
    move-object/from16 v6, p7

    #@53
    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    #@56
    goto :goto_0

    #@57
    .line 1409
    .end local v10    # "segment":Ljava/lang/String;
    .restart local v0    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    .restart local v8    # "N":I
    .restart local v9    # "i":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@59
    goto :goto_1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 1221
    const/4 v4, 0x0

    #@1
    .line 1222
    .local v4, "innerName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_1

    #@9
    .line 1223
    const-string/jumbo v0, ""

    #@c
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1224
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@14
    .line 1228
    .local v4, "innerName":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    #@15
    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v0

    #@1b
    if-ge v8, v0, :cond_1

    #@1d
    .line 1229
    const/4 v0, 0x1

    #@1e
    aget v1, p6, v0

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    aput v1, p6, v0

    #@24
    .line 1230
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@2c
    move-object v1, p1

    #@2d
    move-object v2, p2

    #@2e
    move-object v3, p3

    #@2f
    move-object v5, p5

    #@30
    move-object/from16 v6, p7

    #@32
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    #@35
    .line 1228
    add-int/lit8 v8, v8, 0x1

    #@37
    goto :goto_1

    #@38
    .line 1226
    .end local v8    # "i":I
    .local v4, "innerName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const-string/jumbo v1, "/"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .local v4, "innerName":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 1234
    .end local v4    # "innerName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v0

    #@59
    if-lez v0, :cond_4

    #@5b
    .line 1235
    if-nez v4, :cond_2

    #@5d
    .line 1236
    const-string/jumbo v0, ""

    #@60
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_3

    #@66
    .line 1237
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@68
    .line 1242
    :cond_2
    :goto_2
    const/4 v8, 0x0

    #@69
    .restart local v8    # "i":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v0

    #@6f
    if-ge v8, v0, :cond_4

    #@71
    .line 1243
    const/4 v0, 0x0

    #@72
    aget v1, p6, v0

    #@74
    add-int/lit8 v1, v1, 0x1

    #@76
    aput v1, p6, v0

    #@78
    .line 1244
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode;

    #@80
    move-object v1, p1

    #@81
    move-object v2, p2

    #@82
    move-object v3, p3

    #@83
    move-object v5, p5

    #@84
    move-object v6, p6

    #@85
    move-object/from16 v7, p7

    #@87
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    #@8a
    .line 1242
    add-int/lit8 v8, v8, 0x1

    #@8c
    goto :goto_3

    #@8d
    .line 1239
    .end local v8    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    const-string/jumbo v1, "/"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    iget-object v1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    .restart local v4    # "innerName":Ljava/lang/String;
    goto :goto_2

    #@a8
    .line 1220
    .end local v4    # "innerName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 7
    .param p1, "observer"    # Landroid/database/IContentObserver;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1310
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    .line 1311
    .local v4, "size":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@a
    .line 1312
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode;

    #@12
    invoke-virtual {v5, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    #@15
    move-result v0

    #@16
    .line 1313
    .local v0, "empty":Z
    if-eqz v0, :cond_0

    #@18
    .line 1314
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1d
    .line 1315
    add-int/lit8 v2, v2, -0x1

    #@1f
    .line 1316
    add-int/lit8 v4, v4, -0x1

    #@21
    .line 1311
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1320
    .end local v0    # "empty":Z
    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@27
    move-result-object v3

    #@28
    .line 1321
    .local v3, "observerBinder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v4

    #@2e
    .line 1322
    const/4 v2, 0x0

    #@2f
    :goto_1
    if-ge v2, v4, :cond_2

    #@31
    .line 1323
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    #@39
    .line 1324
    .local v1, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    #@3b
    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    #@3e
    move-result-object v5

    #@3f
    if-ne v5, v3, :cond_3

    #@41
    .line 1325
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@46
    .line 1327
    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@49
    .line 1332
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_2
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v5

    #@4f
    if-nez v5, :cond_4

    #@51
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_4

    #@59
    .line 1333
    const/4 v5, 0x1

    #@5a
    return v5

    #@5b
    .line 1322
    .restart local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 1335
    .end local v1    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4
    return v6
.end method
