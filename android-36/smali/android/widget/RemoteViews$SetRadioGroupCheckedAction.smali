.class Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRadioGroupCheckedAction"
.end annotation


# instance fields
.field private final blacklist mCheckedId:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "checkedId"    # I

    .line 5614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5615
    iput p1, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    .line 5616
    iput p2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 5617
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    .line 5621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 5622
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

    .line 5693
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 5695
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b0000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5696
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_55

    .line 5697
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 5708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5709
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5708
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5703
    :pswitch_3e
    nop

    .line 5704
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 5703
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5706
    goto :goto_e

    .line 5699
    :pswitch_4c
    nop

    .line 5700
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 5699
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5701
    goto :goto_e

    .line 5712
    :cond_55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5714
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v5, v3, v4

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5717
    new-instance v3, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3e
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
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

    .line 5718
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 5721
    .local v0, "viewId":I
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_19

    .line 5723
    invoke-static {p2, p0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v1

    goto :goto_1a

    .line 5724
    :cond_19
    const/4 v1, -0x1

    :goto_1a
    nop

    .line 5725
    .local v1, "checkedId":I
    new-instance v2, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    return-object v2
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

    .line 5633
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5634
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 5636
    :cond_9
    instance-of v1, v0, Landroid/widget/RadioGroup;

    if-nez v1, :cond_2e

    .line 5637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it\'s not a RadioGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    return-void

    .line 5641
    :cond_2e
    move-object v1, v0

    check-cast v1, Landroid/widget/RadioGroup;

    .line 5644
    .local v1, "group":Landroid/widget/RadioGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    const v4, 0x10204ac

    if-ge v2, v3, :cond_57

    .line 5645
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5646
    .local v3, "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CompoundButton;

    if-nez v5, :cond_44

    goto :goto_54

    .line 5648
    :cond_44
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 5649
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v5, :cond_4d

    goto :goto_54

    .line 5652
    :cond_4d
    move-object v5, v3

    check-cast v5, Landroid/widget/CompoundButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5644
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 5655
    .end local v2    # "i":I
    :cond_57
    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 5658
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5d
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_81

    .line 5659
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5660
    .restart local v3    # "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/CompoundButton;

    if-nez v5, :cond_6c

    goto :goto_7e

    .line 5662
    :cond_6c
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 5663
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v6, :cond_75

    goto :goto_7e

    .line 5665
    :cond_75
    move-object v6, v3

    check-cast v6, Landroid/widget/CompoundButton;

    move-object v7, v5

    check-cast v7, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5658
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 5667
    .end local v2    # "i":I
    :cond_81
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5676
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 5671
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5626
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5627
    iget v0, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5628
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 5681
    const-wide v0, 0x10b0000000dL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5682
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mViewId:I

    .line 5683
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 5682
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5684
    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 5685
    iget v2, p0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->mCheckedId:I

    .line 5686
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 5685
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5688
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5689
    return-void
.end method
