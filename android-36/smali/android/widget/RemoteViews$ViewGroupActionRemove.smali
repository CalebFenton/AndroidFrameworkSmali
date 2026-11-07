.class Landroid/widget/RemoteViews$ViewGroupActionRemove;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewGroupActionRemove"
.end annotation


# static fields
.field private static final greylist-max-o REMOVE_ALL_VIEWS_ID:I = -0x2


# instance fields
.field private greylist-max-o mViewIdToKeep:I


# direct methods
.method public static synthetic blacklist $r8$lambda$cc_LX3AdgbzafvWsmL8UJSCI-bI(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/widget/RemoteViews$ViewTree;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->lambda$initActionAsync$1(Landroid/widget/RemoteViews$ViewTree;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I
    .registers 1

    iget p0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveAllViewsExceptIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "viewId"    # I

    .line 4331
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(II)V

    .line 4332
    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "viewIdToKeep"    # I

    .line 4334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4335
    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewId:I

    .line 4336
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 4337
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 4339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewId:I

    .line 4341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 4342
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 8
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4457
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 4459
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000014L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 4460
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_55

    .line 4461
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 4472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4473
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4472
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4467
    :pswitch_3e
    nop

    .line 4468
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 4467
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4470
    goto :goto_e

    .line 4463
    :pswitch_4c
    nop

    .line 4464
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 4463
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4465
    goto :goto_e

    .line 4476
    :cond_55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4478
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v5, v3, v4

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4480
    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3e
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$2(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 9
    .param p0, "values"    # Landroid/util/LongSparseArray;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4481
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 4483
    .local v0, "viewId":I
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_19

    .line 4485
    invoke-static {p2, p0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v1

    goto :goto_1a

    .line 4487
    :cond_19
    const/4 v1, -0x2

    :goto_1a
    nop

    .line 4488
    .local v1, "viewIdToKeep":I
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(II)V

    return-object v2
.end method

.method static synthetic blacklist lambda$initActionAsync$0(Landroid/widget/RemoteViews$ViewTree;)Z
    .registers 2
    .param p0, "childTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 4387
    invoke-static {p0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$initActionAsync$1(Landroid/widget/RemoteViews$ViewTree;)Z
    .registers 4
    .param p1, "childTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 4391
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 4419
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4420
    .local v0, "index":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 4421
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v1, v2, :cond_17

    .line 4422
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 4424
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4426
    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4351
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4353
    .local v0, "target":Landroid/view/ViewGroup;
    if-nez v0, :cond_b

    .line 4354
    return-void

    .line 4357
    :cond_b
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_31

    .line 4359
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_28

    .line 4360
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 4361
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 4359
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 4365
    .end local v1    # "i":I
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4366
    return-void

    .line 4369
    :cond_31
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    .line 4370
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 4440
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 4430
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 8
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4377
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 4378
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 4380
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_58

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_14

    goto :goto_58

    .line 4384
    :cond_14
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4386
    .local v1, "targetVg":Landroid/view/ViewGroup;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_38

    .line 4387
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4388
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    goto :goto_52

    .line 4391
    :cond_38
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4392
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4393
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fputmChildren(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)V

    .line 4396
    :cond_52
    :goto_52
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    return-object v2

    .line 4381
    .end local v1    # "targetVg":Landroid/view/ViewGroup;
    :cond_58
    :goto_58
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 4435
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4345
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4346
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4347
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 4445
    const-wide v0, 0x10b00000014L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4446
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewId:I

    .line 4447
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4446
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4448
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2a

    .line 4449
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 4450
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4449
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4452
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4453
    return-void
.end method
