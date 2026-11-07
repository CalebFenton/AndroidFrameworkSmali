.class public final Landroid/widget/RemoteViews$RemoteCollectionItems;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteCollectionItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHasStableIds:Z

.field private blacklist mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

.field private final blacklist mIds:[J

.field private final blacklist mViewTypeCount:I

.field private final blacklist mViews:[Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViews(Landroid/widget/RemoteViews$RemoteCollectionItems;)[Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvisitIcons(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->visitIcons(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToParcel(Landroid/os/Parcel;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToProto(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9822
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews$RemoteCollectionItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "hierarchyRootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 9566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9567
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    .line 9568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    .line 9569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9570
    .local v0, "length":I
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    .line 9571
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 9573
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 9574
    .local v1, "attached":Z
    new-array v2, v0, [Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    .line 9576
    if-eqz v1, :cond_34

    .line 9577
    if-eqz p2, :cond_2c

    .line 9582
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    .line 9583
    const/4 v2, 0x0

    .local v2, "firstChildIndex":I
    goto :goto_49

    .line 9578
    .end local v2    # "firstChildIndex":I
    :cond_2c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot unparcel a RemoteCollectionItems that was parceled as attached without providing data for a root RemoteViews"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9585
    :cond_34
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 9586
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    .line 9587
    const/4 v2, 0x1

    .line 9590
    .restart local v2    # "firstChildIndex":I
    :goto_49
    move v3, v2

    .local v3, "i":I
    :goto_4a
    if-ge v3, v0, :cond_5e

    .line 9591
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    .end local p1    # "in":Landroid/os/Parcel;
    .local v6, "in":Landroid/os/Parcel;
    invoke-direct/range {v5 .. v10}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    aput-object v5, v4, v3

    .line 9590
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 9597
    .end local v3    # "i":I
    .end local v6    # "in":Landroid/os/Parcel;
    .restart local p1    # "in":Landroid/os/Parcel;
    :cond_5e
    return-void
.end method

.method constructor blacklist <init>([J[Landroid/widget/RemoteViews;ZI)V
    .registers 9
    .param p1, "ids"    # [J
    .param p2, "views"    # [Landroid/widget/RemoteViews;
    .param p3, "hasStableIds"    # Z
    .param p4, "viewTypeCount"    # I

    .line 9536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9537
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    .line 9538
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    .line 9539
    iput-boolean p3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    .line 9540
    iput p4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    .line 9541
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_6e

    .line 9545
    const/4 v0, 0x1

    if-lt p4, v0, :cond_66

    .line 9548
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda1;-><init>()V

    .line 9549
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 9550
    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    .line 9551
    invoke-interface {v1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    .line 9552
    .local v1, "layoutIdCount":I
    if-gt v1, p4, :cond_3d

    .line 9560
    array-length v2, p2

    if-lez v2, :cond_3c

    .line 9561
    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 9562
    aget-object v2, p2, v2

    invoke-static {v2, v0}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 9564
    :cond_3c
    return-void

    .line 9553
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View type count is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but the collection contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " different layout ids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9546
    .end local v1    # "layoutIdCount":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View type count must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9542
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteCollectionItems has different number of ids and views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 10
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9688
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 9690
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide v2, 0x50300000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9694
    :goto_1f
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v6, -0x1

    const-wide v7, 0x10500000004L

    if-eq v1, v6, :cond_a8

    .line 9695
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_b8

    .line 9723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9724
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9723
    const-string v6, "RemoteViews"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 9719
    :pswitch_4f
    nop

    .line 9720
    const-wide v6, 0x10800000005L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 9719
    invoke-virtual {v0, v6, v7, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9721
    goto :goto_1f

    .line 9715
    :pswitch_61
    nop

    .line 9716
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9715
    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9717
    goto :goto_1f

    .line 9710
    :pswitch_6e
    nop

    .line 9711
    const-wide v6, 0x10800000003L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 9710
    invoke-virtual {v0, v6, v7, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9713
    goto :goto_1f

    .line 9702
    :pswitch_80
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 9704
    .local v6, "viewsToken":J
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 9706
    invoke-static {p0}, Landroid/widget/RemoteViews;->-$$Nest$smcreateFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v8

    .line 9705
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9707
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 9708
    goto :goto_1f

    .line 9697
    .end local v6    # "viewsToken":J
    :pswitch_95
    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 9699
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 9698
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9700
    goto/16 :goto_1f

    .line 9728
    :cond_a8
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide v7, v1, v2

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 9731
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v1

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_95
        :pswitch_80
        :pswitch_6e
        :pswitch_61
        :pswitch_4f
    .end packed-switch
.end method

.method public static blacklist createFromProto(Landroid/content/Context;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9681
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object v0
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .registers 16
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

    .line 9732
    const-wide v0, 0x50300000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 9734
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 9735
    .local v1, "ids":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 9736
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 9735
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 9738
    .end local v2    # "i":I
    :cond_27
    nop

    .line 9739
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 9738
    const-wide v4, 0x10800000005L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 9740
    .local v3, "attached":Z
    nop

    .line 9741
    const-wide v4, 0x20b00000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 9743
    .local v4, "pendingViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews$PendingResources<Landroid/widget/RemoteViews;>;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/widget/RemoteViews;

    .line 9745
    .local v5, "views":[Landroid/widget/RemoteViews;
    if-eqz v3, :cond_5b

    if-eqz p3, :cond_53

    goto :goto_5b

    .line 9746
    :cond_53
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot create a RemoteCollectionItems from proto that was attached without providing HierarchyRootData"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9750
    :cond_5b
    :goto_5b
    const/4 v6, 0x0

    .line 9751
    .local v6, "firstChildIndex":I
    if-nez v3, :cond_7a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7a

    .line 9753
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$PendingResources;

    const/4 v8, 0x0

    invoke-interface {v7, p1, p2, v8, v2}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews;

    aput-object v7, v5, v2

    .line 9755
    aget-object v7, v5, v2

    invoke-static {v7}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p3

    .line 9756
    const/4 v6, 0x1

    .line 9758
    :cond_7a
    move v7, v6

    .local v7, "i":I
    :goto_7b
    array-length v8, v5

    if-ge v7, v8, :cond_8f

    .line 9761
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v8, p1, p2, p3, v2}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews;

    aput-object v8, v5, v7

    .line 9758
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 9764
    .end local v7    # "i":I
    :cond_8f
    new-instance v7, Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 9766
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 9765
    const-wide v9, 0x10800000003L

    invoke-virtual {p0, v9, v10, v8}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 9768
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9767
    const-wide v9, 0x10500000004L

    invoke-virtual {p0, v9, v10, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v7, v1, v5, v8, v2}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    .line 9764
    return-object v7
.end method

.method private blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 9926
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/drawable/Icon;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 9927
    .local v3, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 9926
    .end local v3    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 9929
    :cond_e
    return-void
.end method

.method private blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 9917
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 9918
    .local v3, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 9917
    .end local v3    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 9920
    :cond_e
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;IZ)V
    .registers 11
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "attached"    # Z

    .line 9617
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 9619
    .local v0, "prevAllowSquashing":Z
    iget-boolean v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9620
    iget v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9621
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9622
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 9624
    if-eqz p3, :cond_28

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    if-eqz v1, :cond_20

    goto :goto_28

    .line 9625
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call writeToParcelAttached for a RemoteCollectionItems without first calling setHierarchyRootData()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9631
    :cond_28
    :goto_28
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9632
    const/4 v1, 0x0

    .line 9633
    .local v1, "restoreRoot":Z
    const/4 v2, 0x0

    if-nez p3, :cond_47

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v3, v3

    if-lez v3, :cond_47

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 9636
    const/4 v1, 0x1

    .line 9637
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 9640
    :cond_47
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v4, v3

    move v5, v2

    :goto_4b
    if-ge v5, v4, :cond_55

    aget-object v6, v3, v5

    .line 9641
    .local v6, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9640
    .end local v6    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 9644
    :cond_55
    if-eqz v1, :cond_5e

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    invoke-static {v3, v2}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 9645
    :cond_5e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 9646
    return-void
.end method

.method private blacklist writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "attached"    # Z

    .line 9654
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-wide v4, v0, v3

    .line 9655
    .local v4, "id":J
    const-wide v6, 0x50300000001L

    invoke-virtual {p2, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 9654
    .end local v4    # "id":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 9658
    :cond_14
    const/4 v0, 0x0

    .line 9659
    .local v0, "restoreRoot":Z
    const-wide v3, 0x10800000005L

    invoke-virtual {p2, v3, v4, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9660
    if-nez p3, :cond_37

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v1

    if-lez v1, :cond_37

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 9661
    const/4 v0, 0x1

    .line 9662
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v1, v1, v2

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 9664
    :cond_37
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v3, v1

    move v4, v2

    :goto_3b
    if-ge v4, v3, :cond_51

    aget-object v5, v1, v4

    .line 9665
    .local v5, "view":Landroid/widget/RemoteViews;
    const-wide v6, 0x20b00000002L

    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 9666
    .local v6, "viewsToken":J
    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 9667
    invoke-virtual {p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9664
    .end local v5    # "view":Landroid/widget/RemoteViews;
    .end local v6    # "viewsToken":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 9669
    :cond_51
    if-eqz v0, :cond_5a

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v1, v1, v2

    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 9670
    :cond_5a
    const-wide v1, 0x10800000003L

    iget-boolean v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9671
    const-wide v1, 0x10500000004L

    iget v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9672
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 9608
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getItemCount()I
    .registers 2

    .line 9798
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v0, v0

    return v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 9779
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getItemView(I)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "position"    # I

    .line 9789
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 9808
    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 9818
    iget-boolean v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    return v0
.end method

.method blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 6
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 9600
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    .line 9601
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 9602
    .local v3, "view":Landroid/widget/RemoteViews;
    invoke-static {v3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 9601
    .end local v3    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 9604
    :cond_10
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 9613
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToParcel(Landroid/os/Parcel;IZ)V

    .line 9614
    return-void
.end method

.method public blacklist writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "out"    # Landroid/util/proto/ProtoOutputStream;

    .line 9650
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 9651
    return-void
.end method
