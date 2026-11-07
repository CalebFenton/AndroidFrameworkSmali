.class Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetViewOutlinePreferredRadiusAction"
.end annotation


# instance fields
.field private final blacklist mValue:I

.field private final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IFI)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "radius"    # F
    .param p3, "units"    # I

    .line 5743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5744
    iput p1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mViewId:I

    .line 5745
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 5746
    invoke-static {p2, p3}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 5748
    return-void
.end method

.method constructor blacklist <init>(III)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "value"    # I
    .param p3, "valueType"    # I

    .line 5736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5737
    iput p1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mViewId:I

    .line 5738
    iput p3, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 5739
    iput p2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 5740
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mViewId:I

    .line 5752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 5753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 5754
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 7
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

    .line 5820
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 5822
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000010L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5824
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6b

    .line 5825
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_7e

    .line 5845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5846
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5845
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5839
    :pswitch_39
    nop

    .line 5840
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5839
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5843
    goto :goto_e

    .line 5833
    :pswitch_4b
    nop

    .line 5834
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5833
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5837
    goto :goto_e

    .line 5827
    :pswitch_5d
    nop

    .line 5828
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 5827
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5831
    goto :goto_e

    .line 5849
    :cond_6b
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5851
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_88

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5855
    new-instance v3, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_88
    .array-data 8
        0x10900000001L
        0x10500000002L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 10
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

    .line 5856
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 5858
    .local v0, "viewId":I
    new-instance v1, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    .line 5860
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5859
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5860
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    .line 5858
    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 5766
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5767
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 5771
    :cond_9
    :try_start_9
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_64

    .line 5789
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    goto :goto_51

    .line 5773
    :pswitch_12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_5d

    .line 5776
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_21
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2a

    .line 5778
    .local v2, "radius":F
    :try_start_25
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5779
    nop

    .line 5780
    goto :goto_53

    .line 5778
    .end local v2    # "radius":F
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5779
    nop

    .end local v0    # "target":Landroid/view/View;
    .end local p0    # "this":Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "rootParent":Landroid/view/ViewGroup;
    .end local p3    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    throw v2

    .line 5782
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    .restart local v0    # "target":Landroid/view/View;
    .restart local p0    # "this":Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
    .restart local p1    # "root":Landroid/view/View;
    .restart local p2    # "rootParent":Landroid/view/ViewGroup;
    .restart local p3    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    :pswitch_30
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    if-nez v1, :cond_35

    :goto_34
    goto :goto_40

    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_34

    .line 5783
    .restart local v2    # "radius":F
    :goto_40
    goto :goto_53

    .line 5785
    .end local v2    # "radius":F
    :pswitch_41
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 5786
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 5785
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    move v2, v1

    .line 5787
    .restart local v2    # "radius":F
    goto :goto_53

    .line 5789
    .end local v2    # "radius":F
    :goto_51
    int-to-float v1, v1

    move v2, v1

    .line 5791
    .restart local v2    # "radius":F
    :goto_53
    new-instance v1, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_5d

    .line 5794
    .end local v2    # "radius":F
    nop

    .line 5795
    return-void

    .line 5792
    :catchall_5d
    move-exception v1

    .line 5793
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_41
        :pswitch_30
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5804
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 5799
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5758
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5759
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5760
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5761
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 5809
    const-wide v0, 0x10b00000010L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5811
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mViewId:I

    .line 5812
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 5811
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5813
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5814
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5815
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5816
    return-void
.end method
