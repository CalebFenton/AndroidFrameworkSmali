.class public Landroid/app/assist/AssistStructure;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistStructure$SendChannel;,
        Landroid/app/assist/AssistStructure$ViewStackEntry;,
        Landroid/app/assist/AssistStructure$ParcelTransferWriter;,
        Landroid/app/assist/AssistStructure$ParcelTransferReader;,
        Landroid/app/assist/AssistStructure$ViewNodeText;,
        Landroid/app/assist/AssistStructure$WindowNode;,
        Landroid/app/assist/AssistStructure$ViewNode;,
        Landroid/app/assist/AssistStructure$ViewNodeBuilder;,
        Landroid/app/assist/AssistStructure$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_PARCEL:Z = false

.field static final DEBUG_PARCEL_CHILDREN:Z = false

.field static final DEBUG_PARCEL_TREE:Z = false

.field static final DESCRIPTOR:Ljava/lang/String; = "android.app.AssistStructure"

.field static final TAG:Ljava/lang/String; = "AssistStructure"

.field static final TRANSACTION_XFER:I = 0x2

.field static final VALIDATE_VIEW_TOKEN:I = 0x22222222

.field static final VALIDATE_WINDOW_TOKEN:I = 0x11111111


# instance fields
.field mActivityComponent:Landroid/content/ComponentName;

.field mHaveData:Z

.field final mPendingAsyncChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/assist/AssistStructure$ViewNodeBuilder;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveChannel:Landroid/os/IBinder;

.field mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

.field mTmpRect:Landroid/graphics/Rect;

.field final mWindowNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/assist/AssistStructure$WindowNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1511
    new-instance v0, Landroid/app/assist/AssistStructure$1;

    #@2
    invoke-direct {v0}, Landroid/app/assist/AssistStructure$1;-><init>()V

    #@5
    .line 1510
    sput-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@a
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@11
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    #@18
    .line 1340
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    #@1b
    .line 1341
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    #@1e
    .line 1339
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v3, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@a
    .line 47
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@11
    .line 52
    new-instance v3, Landroid/graphics/Rect;

    #@13
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v3, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    #@18
    .line 1329
    const/4 v3, 0x1

    #@19
    iput-boolean v3, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    #@1b
    .line 1330
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    #@21
    .line 1331
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@24
    move-result-object v3

    #@25
    .line 1332
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@28
    move-result-object v4

    #@29
    .line 1331
    invoke-virtual {v3, v4}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    #@2c
    move-result-object v2

    #@2d
    .line 1333
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v0, 0x0

    #@2e
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v3

    #@32
    if-ge v0, v3, :cond_0

    #@34
    .line 1334
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroid/view/ViewRootImpl;

    #@3a
    .line 1335
    .local v1, "root":Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@3c
    new-instance v4, Landroid/app/assist/AssistStructure$WindowNode;

    #@3e
    invoke-direct {v4, p0, v1}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;)V

    #@41
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    .line 1333
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1328
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@a
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@11
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    #@18
    .line 1346
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    #@1e
    .line 1345
    return-void
.end method


# virtual methods
.method public clearSendChannel()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1487
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1488
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    #@7
    iput-object v1, v0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    #@9
    .line 1486
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1493
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump()V
    .locals 6

    #@0
    .prologue
    .line 1351
    const-string/jumbo v3, "AssistStructure"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "Activity: "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    iget-object v5, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    #@11
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1352
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    #@23
    move-result v0

    #@24
    .line 1353
    .local v0, "N":I
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@27
    .line 1354
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    #@2a
    move-result-object v2

    #@2b
    .line 1355
    .local v2, "node":Landroid/app/assist/AssistStructure$WindowNode;
    const-string/jumbo v3, "AssistStructure"

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Window #"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    const-string/jumbo v5, " ["

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getLeft()I

    #@48
    move-result v5

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    const-string/jumbo v5, ","

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getTop()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 1356
    const-string/jumbo v5, " "

    #@5f
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 1356
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getWidth()I

    #@66
    move-result v5

    #@67
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 1356
    const-string/jumbo v5, "x"

    #@6e
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 1356
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getHeight()I

    #@75
    move-result v5

    #@76
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    .line 1356
    const-string/jumbo v5, "]"

    #@7d
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    .line 1356
    const-string/jumbo v5, " "

    #@84
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 1356
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getTitle()Ljava/lang/CharSequence;

    #@8b
    move-result-object v5

    #@8c
    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 1357
    const-string/jumbo v3, "  "

    #@9a
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {p0, v3, v4}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)V

    #@a1
    .line 1353
    add-int/lit8 v1, v1, 0x1

    #@a3
    goto :goto_0

    #@a4
    .line 1350
    .end local v2    # "node":Landroid/app/assist/AssistStructure$WindowNode;
    :cond_0
    return-void
.end method

.method dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)V
    .locals 23
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "node"    # Landroid/app/assist/AssistStructure$ViewNode;

    #@0
    .prologue
    .line 1362
    const-string/jumbo v20, "AssistStructure"

    #@3
    new-instance v21, Ljava/lang/StringBuilder;

    #@5
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    move-object/from16 v0, v21

    #@a
    move-object/from16 v1, p1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v21

    #@10
    const-string/jumbo v22, "View ["

    #@13
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v21

    #@17
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLeft()I

    #@1a
    move-result v22

    #@1b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v21

    #@1f
    const-string/jumbo v22, ","

    #@22
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v21

    #@26
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTop()I

    #@29
    move-result v22

    #@2a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v21

    #@2e
    .line 1363
    const-string/jumbo v22, " "

    #@31
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v21

    #@35
    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWidth()I

    #@38
    move-result v22

    #@39
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v21

    #@3d
    .line 1363
    const-string/jumbo v22, "x"

    #@40
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v21

    #@44
    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHeight()I

    #@47
    move-result v22

    #@48
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v21

    #@4c
    .line 1363
    const-string/jumbo v22, "]"

    #@4f
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v21

    #@53
    .line 1363
    const-string/jumbo v22, " "

    #@56
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v21

    #@5a
    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getClassName()Ljava/lang/String;

    #@5d
    move-result-object v22

    #@5e
    .line 1362
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v21

    #@62
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v21

    #@66
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getId()I

    #@6c
    move-result v12

    #@6d
    .line 1365
    .local v12, "id":I
    if-eqz v12, :cond_1

    #@6f
    .line 1366
    new-instance v15, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    .line 1367
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    const-string/jumbo v20, "  ID: #"

    #@7c
    move-object/from16 v0, v20

    #@7e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@84
    move-result-object v20

    #@85
    move-object/from16 v0, v20

    #@87
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    .line 1369
    .local v8, "entry":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@90
    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdType()Ljava/lang/String;

    #@93
    move-result-object v19

    #@94
    .line 1371
    .local v19, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdPackage()Ljava/lang/String;

    #@97
    move-result-object v14

    #@98
    .line 1372
    .local v14, "pkg":Ljava/lang/String;
    const-string/jumbo v20, " "

    #@9b
    move-object/from16 v0, v20

    #@9d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    const-string/jumbo v20, ":"

    #@a6
    move-object/from16 v0, v20

    #@a8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-object/from16 v0, v19

    #@ad
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    .line 1373
    const-string/jumbo v20, "/"

    #@b3
    move-object/from16 v0, v20

    #@b5
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    .line 1375
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v20, "AssistStructure"

    #@be
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v21

    #@c2
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 1377
    .end local v8    # "entry":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollX()I

    #@c8
    move-result v16

    #@c9
    .line 1378
    .local v16, "scrollX":I
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollY()I

    #@cc
    move-result v17

    #@cd
    .line 1379
    .local v17, "scrollY":I
    if-nez v16, :cond_2

    #@cf
    if-eqz v17, :cond_3

    #@d1
    .line 1380
    :cond_2
    const-string/jumbo v20, "AssistStructure"

    #@d4
    new-instance v21, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    move-object/from16 v0, v21

    #@db
    move-object/from16 v1, p1

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v21

    #@e1
    const-string/jumbo v22, "  Scroll: "

    #@e4
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v21

    #@e8
    move-object/from16 v0, v21

    #@ea
    move/from16 v1, v16

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v21

    #@f0
    const-string/jumbo v22, ","

    #@f3
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v21

    #@f7
    move-object/from16 v0, v21

    #@f9
    move/from16 v1, v17

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v21

    #@ff
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v21

    #@103
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 1382
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTransformation()Landroid/graphics/Matrix;

    #@109
    move-result-object v13

    #@10a
    .line 1383
    .local v13, "matrix":Landroid/graphics/Matrix;
    if-eqz v13, :cond_4

    #@10c
    .line 1384
    const-string/jumbo v20, "AssistStructure"

    #@10f
    new-instance v21, Ljava/lang/StringBuilder;

    #@111
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    move-object/from16 v0, v21

    #@116
    move-object/from16 v1, p1

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v21

    #@11c
    const-string/jumbo v22, "  Transformation: "

    #@11f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v21

    #@123
    move-object/from16 v0, v21

    #@125
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v21

    #@129
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v21

    #@12d
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@130
    .line 1386
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getElevation()F

    #@133
    move-result v7

    #@134
    .line 1387
    .local v7, "elevation":F
    const/16 v20, 0x0

    #@136
    cmpl-float v20, v7, v20

    #@138
    if-eqz v20, :cond_5

    #@13a
    .line 1388
    const-string/jumbo v20, "AssistStructure"

    #@13d
    new-instance v21, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    move-object/from16 v0, v21

    #@144
    move-object/from16 v1, p1

    #@146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v21

    #@14a
    const-string/jumbo v22, "  Elevation: "

    #@14d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v21

    #@151
    move-object/from16 v0, v21

    #@153
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@156
    move-result-object v21

    #@157
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v21

    #@15b
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15e
    .line 1390
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAlpha()F

    #@161
    move-result v3

    #@162
    .line 1391
    .local v3, "alpha":F
    const/16 v20, 0x0

    #@164
    cmpl-float v20, v3, v20

    #@166
    if-eqz v20, :cond_6

    #@168
    .line 1392
    const-string/jumbo v20, "AssistStructure"

    #@16b
    new-instance v21, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    move-object/from16 v0, v21

    #@172
    move-object/from16 v1, p1

    #@174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v21

    #@178
    const-string/jumbo v22, "  Alpha: "

    #@17b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v21

    #@17f
    move-object/from16 v0, v21

    #@181
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@184
    move-result-object v21

    #@185
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v21

    #@189
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18c
    .line 1394
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getContentDescription()Ljava/lang/CharSequence;

    #@18f
    move-result-object v5

    #@190
    .line 1395
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    if-eqz v5, :cond_7

    #@192
    .line 1396
    const-string/jumbo v20, "AssistStructure"

    #@195
    new-instance v21, Ljava/lang/StringBuilder;

    #@197
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    move-object/from16 v0, v21

    #@19c
    move-object/from16 v1, p1

    #@19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v21

    #@1a2
    const-string/jumbo v22, "  Content description: "

    #@1a5
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v21

    #@1a9
    move-object/from16 v0, v21

    #@1ab
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v21

    #@1af
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v21

    #@1b3
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b6
    .line 1398
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    #@1b9
    move-result-object v18

    #@1ba
    .line 1399
    .local v18, "text":Ljava/lang/CharSequence;
    if-eqz v18, :cond_8

    #@1bc
    .line 1400
    const-string/jumbo v20, "AssistStructure"

    #@1bf
    new-instance v21, Ljava/lang/StringBuilder;

    #@1c1
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1c4
    move-object/from16 v0, v21

    #@1c6
    move-object/from16 v1, p1

    #@1c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v21

    #@1cc
    const-string/jumbo v22, "  Text (sel "

    #@1cf
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v21

    #@1d3
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionStart()I

    #@1d6
    move-result v22

    #@1d7
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v21

    #@1db
    const-string/jumbo v22, "-"

    #@1de
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v21

    #@1e2
    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionEnd()I

    #@1e5
    move-result v22

    #@1e6
    .line 1400
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v21

    #@1ea
    .line 1401
    const-string/jumbo v22, "): "

    #@1ed
    .line 1400
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v21

    #@1f1
    move-object/from16 v0, v21

    #@1f3
    move-object/from16 v1, v18

    #@1f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v21

    #@1f9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v21

    #@1fd
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@200
    .line 1402
    const-string/jumbo v20, "AssistStructure"

    #@203
    new-instance v21, Ljava/lang/StringBuilder;

    #@205
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    move-object/from16 v0, v21

    #@20a
    move-object/from16 v1, p1

    #@20c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v21

    #@210
    const-string/jumbo v22, "  Text size: "

    #@213
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v21

    #@217
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSize()F

    #@21a
    move-result v22

    #@21b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v21

    #@21f
    const-string/jumbo v22, " , style: #"

    #@222
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v21

    #@226
    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextStyle()I

    #@229
    move-result v22

    #@22a
    .line 1402
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v21

    #@22e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@231
    move-result-object v21

    #@232
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@235
    .line 1404
    const-string/jumbo v20, "AssistStructure"

    #@238
    new-instance v21, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    move-object/from16 v0, v21

    #@23f
    move-object/from16 v1, p1

    #@241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v21

    #@245
    const-string/jumbo v22, "  Text color fg: #"

    #@248
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v21

    #@24c
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextColor()I

    #@24f
    move-result v22

    #@250
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@253
    move-result-object v22

    #@254
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v21

    #@258
    .line 1405
    const-string/jumbo v22, ", bg: #"

    #@25b
    .line 1404
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v21

    #@25f
    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextBackgroundColor()I

    #@262
    move-result v22

    #@263
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@266
    move-result-object v22

    #@267
    .line 1404
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v21

    #@26b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v21

    #@26f
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@272
    .line 1407
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHint()Ljava/lang/String;

    #@275
    move-result-object v10

    #@276
    .line 1408
    .local v10, "hint":Ljava/lang/String;
    if-eqz v10, :cond_9

    #@278
    .line 1409
    const-string/jumbo v20, "AssistStructure"

    #@27b
    new-instance v21, Ljava/lang/StringBuilder;

    #@27d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@280
    move-object/from16 v0, v21

    #@282
    move-object/from16 v1, p1

    #@284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v21

    #@288
    const-string/jumbo v22, "  Hint: "

    #@28b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v21

    #@28f
    move-object/from16 v0, v21

    #@291
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v21

    #@295
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v21

    #@299
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@29c
    .line 1411
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getExtras()Landroid/os/Bundle;

    #@29f
    move-result-object v9

    #@2a0
    .line 1412
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_a

    #@2a2
    .line 1413
    const-string/jumbo v20, "AssistStructure"

    #@2a5
    new-instance v21, Ljava/lang/StringBuilder;

    #@2a7
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@2aa
    move-object/from16 v0, v21

    #@2ac
    move-object/from16 v1, p1

    #@2ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v21

    #@2b2
    const-string/jumbo v22, "  Extras: "

    #@2b5
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v21

    #@2b9
    move-object/from16 v0, v21

    #@2bb
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v21

    #@2bf
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c2
    move-result-object v21

    #@2c3
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2c6
    .line 1415
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isAssistBlocked()Z

    #@2c9
    move-result v20

    #@2ca
    if-eqz v20, :cond_b

    #@2cc
    .line 1416
    const-string/jumbo v20, "AssistStructure"

    #@2cf
    new-instance v21, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    move-object/from16 v0, v21

    #@2d6
    move-object/from16 v1, p1

    #@2d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v21

    #@2dc
    const-string/jumbo v22, "  BLOCKED"

    #@2df
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v21

    #@2e3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v21

    #@2e7
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2ea
    .line 1418
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    #@2ed
    move-result v2

    #@2ee
    .line 1419
    .local v2, "NCHILDREN":I
    if-lez v2, :cond_c

    #@2f0
    .line 1420
    const-string/jumbo v20, "AssistStructure"

    #@2f3
    new-instance v21, Ljava/lang/StringBuilder;

    #@2f5
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@2f8
    move-object/from16 v0, v21

    #@2fa
    move-object/from16 v1, p1

    #@2fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v21

    #@300
    const-string/jumbo v22, "  Children:"

    #@303
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v21

    #@307
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30a
    move-result-object v21

    #@30b
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@30e
    .line 1421
    new-instance v20, Ljava/lang/StringBuilder;

    #@310
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@313
    move-object/from16 v0, v20

    #@315
    move-object/from16 v1, p1

    #@317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v20

    #@31b
    const-string/jumbo v21, "    "

    #@31e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v20

    #@322
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@325
    move-result-object v6

    #@326
    .line 1422
    .local v6, "cprefix":Ljava/lang/String;
    const/4 v11, 0x0

    #@327
    .local v11, "i":I
    :goto_0
    if-ge v11, v2, :cond_c

    #@329
    .line 1423
    move-object/from16 v0, p2

    #@32b
    invoke-virtual {v0, v11}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    #@32e
    move-result-object v4

    #@32f
    .line 1424
    .local v4, "cnode":Landroid/app/assist/AssistStructure$ViewNode;
    move-object/from16 v0, p0

    #@331
    invoke-virtual {v0, v6, v4}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)V

    #@334
    .line 1422
    add-int/lit8 v11, v11, 0x1

    #@336
    goto :goto_0

    #@337
    .line 1361
    .end local v4    # "cnode":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v6    # "cprefix":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_c
    return-void
.end method

.method public ensureData()V
    .locals 2

    #@0
    .prologue
    .line 1456
    iget-boolean v1, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1457
    return-void

    #@5
    .line 1459
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    #@8
    .line 1460
    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    #@a
    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    #@c
    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    #@f
    .line 1461
    .local v0, "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V

    #@12
    .line 1455
    return-void
.end method

.method public getActivityComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 1433
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    #@3
    .line 1434
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    #@5
    return-object v0
.end method

.method public getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1450
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    #@3
    .line 1451
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/assist/AssistStructure$WindowNode;

    #@b
    return-object v0
.end method

.method public getWindowNodeCount()I
    .locals 1

    #@0
    .prologue
    .line 1441
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    #@3
    .line 1442
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method waitForReady()Z
    .locals 12

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1465
    const/4 v1, 0x0

    #@2
    .line 1466
    .local v1, "skipStructure":Z
    monitor-enter p0

    #@3
    .line 1467
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v8

    #@7
    const-wide/16 v10, 0x1388

    #@9
    add-long v2, v8, v10

    #@b
    .line 1469
    .local v2, "endTime":J
    :goto_0
    iget-object v7, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v7

    #@11
    if-lez v7, :cond_0

    #@13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-wide v4

    #@17
    .local v4, "now":J
    cmp-long v7, v4, v2

    #@19
    if-gez v7, :cond_0

    #@1b
    .line 1471
    sub-long v8, v2, v4

    #@1d
    :try_start_1
    invoke-virtual {p0, v8, v9}, Landroid/app/assist/AssistStructure;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 1472
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@23
    .line 1475
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "now":J
    :cond_0
    :try_start_2
    iget-object v7, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v7

    #@29
    if-lez v7, :cond_1

    #@2b
    .line 1477
    const-string/jumbo v7, "AssistStructure"

    #@2e
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v9, "Skipping assist structure, waiting too long for async children (have "

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    .line 1478
    iget-object v9, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v9

    #@40
    .line 1477
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    .line 1478
    const-string/jumbo v9, " remaining"

    #@47
    .line 1477
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    .line 1479
    const/4 v1, 0x1

    #@53
    :cond_1
    monitor-exit p0

    #@54
    .line 1482
    if-eqz v1, :cond_2

    #@56
    :goto_1
    return v6

    #@57
    .line 1466
    .end local v2    # "endTime":J
    :catchall_0
    move-exception v6

    #@58
    monitor-exit p0

    #@59
    throw v6

    #@5a
    .line 1482
    .restart local v2    # "endTime":J
    :cond_2
    const/4 v6, 0x1

    #@5b
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1497
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1500
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1501
    new-instance v0, Landroid/app/assist/AssistStructure$SendChannel;

    #@a
    invoke-direct {v0, p0}, Landroid/app/assist/AssistStructure$SendChannel;-><init>(Landroid/app/assist/AssistStructure;)V

    #@d
    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    #@f
    .line 1503
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 1496
    :goto_0
    return-void

    #@15
    .line 1506
    :cond_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    goto :goto_0
.end method
