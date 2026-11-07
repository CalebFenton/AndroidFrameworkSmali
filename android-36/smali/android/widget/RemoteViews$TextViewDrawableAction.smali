.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field blacklist mD1:I

.field blacklist mD2:I

.field blacklist mD3:I

.field blacklist mD4:I

.field blacklist mDrawablesLoaded:Z

.field blacklist mI1:Landroid/graphics/drawable/Icon;

.field blacklist mI2:Landroid/graphics/drawable/Icon;

.field blacklist mI3:Landroid/graphics/drawable/Icon;

.field blacklist mI4:Landroid/graphics/drawable/Icon;

.field blacklist mId1:Landroid/graphics/drawable/Drawable;

.field blacklist mId2:Landroid/graphics/drawable/Drawable;

.field blacklist mId3:Landroid/graphics/drawable/Drawable;

.field blacklist mId4:Landroid/graphics/drawable/Drawable;

.field blacklist mIsRelative:Z

.field blacklist mUseIcons:Z


# direct methods
.method public constructor blacklist <init>(IZIIII)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "isRelative"    # Z
    .param p3, "d1"    # I
    .param p4, "d2"    # I
    .param p5, "d3"    # I
    .param p6, "d4"    # I

    .line 4615
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4607
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4611
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4616
    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4617
    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4618
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4619
    iput p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4620
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4621
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4622
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4623
    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "isRelative"    # Z
    .param p3, "i1"    # Landroid/graphics/drawable/Icon;
    .param p4, "i2"    # Landroid/graphics/drawable/Icon;
    .param p5, "i3"    # Landroid/graphics/drawable/Icon;
    .param p6, "i4"    # Landroid/graphics/drawable/Icon;

    .line 4626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4607
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4611
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4627
    iput p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4628
    iput-boolean p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4629
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4630
    iput-object p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    .line 4631
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    .line 4632
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    .line 4633
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    .line 4634
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 4636
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4607
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4611
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    .line 4639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v0, v2

    :cond_24
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    .line 4640
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_53

    .line 4641
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    .line 4642
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    .line 4643
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    .line 4644
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    goto :goto_6b

    .line 4646
    :cond_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4651
    :goto_6b
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 19
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

    .line 4804
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 4806
    .local v1, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, 0x10b00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4808
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const-wide v5, 0x10b00000003L

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4810
    const-wide v7, 0x10b00000011L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 4811
    .local v7, "token":J
    :goto_2a
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eq v2, v10, :cond_1d5

    .line 4812
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v13, 0x4

    const-string v11, "Unhandled field while reading RemoteViews proto!\n"

    const-string v12, "RemoteViews"

    packed-switch v2, :pswitch_data_1ec

    .line 4907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4908
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4907
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto :goto_2a

    .line 4866
    :pswitch_61
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v14

    .line 4868
    .local v14, "iconsToken":J
    :goto_65
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    if-eq v2, v10, :cond_f2

    .line 4869
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_1f8

    .line 4899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4901
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4899
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_65

    .line 4892
    :pswitch_97
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 4894
    invoke-static {v0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v10

    .line 4893
    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4897
    const/4 v10, -0x1

    goto :goto_65

    .line 4885
    :pswitch_a6
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 4887
    invoke-static {v0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v10

    .line 4886
    const/4 v13, 0x3

    invoke-virtual {v2, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4890
    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_65

    .line 4878
    :pswitch_b7
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 4880
    const-wide v5, 0x10b00000002L

    invoke-static {v0, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v5

    .line 4879
    const/4 v6, 0x2

    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4883
    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto :goto_65

    .line 4871
    :pswitch_d2
    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4873
    const-wide v2, 0x10b00000001L

    invoke-static {v0, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v2

    .line 4872
    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4876
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    const/4 v10, -0x1

    const/4 v13, 0x4

    goto/16 :goto_65

    .line 4904
    :cond_f2
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4905
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4823
    .end local v14    # "iconsToken":J
    :pswitch_101
    const-wide v2, 0x10b00000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 4825
    .local v4, "resourcesToken":J
    :goto_10a
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_190

    .line 4826
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    packed-switch v6, :pswitch_data_204

    .line 4858
    const/4 v15, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4860
    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4858
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x10b00000003L

    goto :goto_10a

    .line 4850
    :pswitch_137
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4852
    const-wide v14, 0x10900000004L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4851
    const/4 v15, 0x4

    invoke-virtual {v6, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4856
    goto :goto_10a

    .line 4842
    :pswitch_14b
    const/4 v15, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4844
    const-wide v13, 0x10900000003L

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v13

    .line 4843
    const/4 v14, 0x3

    invoke-virtual {v6, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4848
    goto :goto_10a

    .line 4835
    :pswitch_160
    const/4 v14, 0x3

    const/4 v15, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4837
    const-wide v14, 0x10900000002L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4836
    const/4 v15, 0x2

    invoke-virtual {v6, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4840
    goto :goto_10a

    .line 4828
    :pswitch_176
    const/4 v15, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 4830
    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v14

    .line 4829
    invoke-virtual {v6, v9, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4833
    const-wide v2, 0x10b00000003L

    goto/16 :goto_10a

    .line 4863
    :cond_190
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4864
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4818
    .end local v4    # "resourcesToken":J
    :pswitch_19f
    nop

    .line 4819
    const-wide v2, 0x10800000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4818
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4821
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4814
    :pswitch_1bc
    nop

    .line 4815
    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v4

    .line 4814
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4816
    const-wide v3, 0x10b00000004L

    const-wide v5, 0x10b00000003L

    goto/16 :goto_2a

    .line 4911
    :cond_1d5
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4913
    new-array v2, v9, [J

    const/4 v3, 0x0

    const-wide v16, 0x10900000001L

    aput-wide v16, v2, v3

    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4915
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$TextViewDrawableAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v2

    nop

    :pswitch_data_1ec
    .packed-switch 0x1
        :pswitch_1bc
        :pswitch_19f
        :pswitch_101
        :pswitch_61
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_b7
        :pswitch_a6
        :pswitch_97
    .end packed-switch

    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_176
        :pswitch_160
        :pswitch_14b
        :pswitch_137
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
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

    .line 4916
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 4918
    .local v3, "viewId":I
    nop

    .line 4919
    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 4921
    .local v0, "icons":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RemoteViews$PendingResources<Landroid/graphics/drawable/Icon;>;>;"
    const-wide v1, 0x10b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4923
    .local v1, "resArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    nop

    .line 4924
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4923
    const-wide v5, 0x10800000002L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4925
    .local v4, "isRelative":Z
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lez v5, :cond_78

    .line 4926
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    .line 4927
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v5, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 4928
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v8, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Icon;

    .line 4929
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    .line 4930
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    move-object v10, v8

    move-object v8, v6

    move-object v6, v10

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    .line 4926
    return-object v2

    .line 4932
    :cond_78
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-static {p2, v1, v9}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v5

    goto :goto_84

    :cond_83
    move v5, v2

    .line 4933
    .local v5, "first":I
    :goto_84
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-static {p2, v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v8

    goto :goto_90

    :cond_8f
    move v8, v2

    .line 4934
    .local v8, "second":I
    :goto_90
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-static {p2, v1, v7}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v7

    goto :goto_9c

    :cond_9b
    move v7, v2

    .line 4935
    .local v7, "third":I
    :goto_9c
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_a6

    invoke-static {p2, v1, v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result v2

    .line 4936
    .local v2, "fourth":I
    :cond_a6
    move v6, v8

    move v8, v2

    .end local v2    # "fourth":I
    .local v6, "second":I
    .local v8, "fourth":I
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    return-object v2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4672
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4673
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    return-void

    .line 4674
    :cond_b
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    if-eqz v1, :cond_2c

    .line 4675
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v1, :cond_20

    .line 4676
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8b

    .line 4678
    :cond_20
    iget-object v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8b

    .line 4680
    :cond_2c
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v1, :cond_70

    .line 4681
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4682
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    if-nez v2, :cond_3b

    move-object v2, v3

    goto :goto_41

    :cond_3b
    iget-object v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4683
    .local v2, "id1":Landroid/graphics/drawable/Drawable;
    :goto_41
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v4, :cond_47

    move-object v4, v3

    goto :goto_4d

    :cond_47
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4684
    .local v4, "id2":Landroid/graphics/drawable/Drawable;
    :goto_4d
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_53

    move-object v5, v3

    goto :goto_59

    :cond_53
    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4685
    .local v5, "id3":Landroid/graphics/drawable/Drawable;
    :goto_59
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v6, :cond_5e

    goto :goto_64

    :cond_5e
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4686
    .local v3, "id4":Landroid/graphics/drawable/Drawable;
    :goto_64
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v6, :cond_6c

    .line 4687
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6f

    .line 4689
    :cond_6c
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4691
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id4":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v5    # "id3":Landroid/graphics/drawable/Drawable;
    :goto_6f
    goto :goto_8b

    .line 4692
    :cond_70
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    if-eqz v1, :cond_80

    .line 4693
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_8b

    .line 4695
    :cond_80
    iget v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4698
    :goto_8b
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 4750
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 4735
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 14
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 4703
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4704
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_f

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1

    .line 4706
    :cond_f
    iget-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v1, :cond_25

    .line 4707
    new-instance v2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget-object v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    iget-object v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-direct/range {v2 .. v8}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    goto :goto_37

    .line 4708
    :cond_25
    new-instance v3, Landroid/widget/RemoteViews$TextViewDrawableAction;

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    iget-boolean v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-direct/range {v3 .. v9}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    move-object v2, v3

    :goto_37
    nop

    .line 4711
    .local v2, "copy":Landroid/widget/RemoteViews$TextViewDrawableAction;
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mDrawablesLoaded:Z

    .line 4712
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4714
    .local v1, "ctx":Landroid/content/Context;
    iget-boolean v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7c

    .line 4715
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_4a

    move-object v3, v4

    goto :goto_50

    :cond_4a
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_50
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    .line 4716
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_58

    move-object v3, v4

    goto :goto_5e

    :cond_58
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_5e
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    .line 4717
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_66

    move-object v3, v4

    goto :goto_6c

    :cond_66
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_6c
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    .line 4718
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_73

    goto :goto_79

    :cond_73
    iget-object v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_79
    iput-object v4, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    goto :goto_b3

    .line 4720
    :cond_7c
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-nez v3, :cond_82

    move-object v3, v4

    goto :goto_88

    :cond_82
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_88
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId1:Landroid/graphics/drawable/Drawable;

    .line 4721
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-nez v3, :cond_90

    move-object v3, v4

    goto :goto_96

    :cond_90
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_96
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId2:Landroid/graphics/drawable/Drawable;

    .line 4722
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-nez v3, :cond_9e

    move-object v3, v4

    goto :goto_a4

    :cond_9e
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_a4
    iput-object v3, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId3:Landroid/graphics/drawable/Drawable;

    .line 4723
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-nez v3, :cond_ab

    goto :goto_b1

    :cond_ab
    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_b1
    iput-object v4, v2, Landroid/widget/RemoteViews$TextViewDrawableAction;->mId4:Landroid/graphics/drawable/Drawable;

    .line 4725
    :goto_b3
    return-object v2
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 2

    .line 4730
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    return v0
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 4740
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_18

    .line 4741
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4742
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4743
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4744
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    .line 4746
    :cond_18
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4654
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4655
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4656
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4657
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    if-eqz v0, :cond_29

    .line 4658
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4659
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4660
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4661
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3d

    .line 4663
    :cond_29
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4664
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4665
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4666
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4668
    :goto_3d
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 15
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 4756
    const-wide v0, 0x10b00000011L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4757
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mViewId:I

    .line 4758
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4757
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4759
    const-wide v5, 0x10800000002L

    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mIsRelative:Z

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4760
    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mUseIcons:Z

    const-wide v5, 0x10b00000003L

    if-eqz v2, :cond_65

    .line 4761
    const-wide v2, 0x10b00000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4762
    .local v7, "iconsToken":J
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_41

    .line 4763
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI1:Landroid/graphics/drawable/Icon;

    const-wide v9, 0x10b00000001L

    invoke-static {p1, p3, v4, v9, v10}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4766
    :cond_41
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_4f

    .line 4767
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI2:Landroid/graphics/drawable/Icon;

    const-wide v9, 0x10b00000002L

    invoke-static {p1, p3, v4, v9, v10}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4770
    :cond_4f
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_58

    .line 4771
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI3:Landroid/graphics/drawable/Icon;

    invoke-static {p1, p3, v4, v5, v6}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4774
    :cond_58
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_61

    .line 4775
    iget-object v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mI4:Landroid/graphics/drawable/Icon;

    invoke-static {p1, p3, v4, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    .line 4778
    :cond_61
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4779
    .end local v7    # "iconsToken":J
    goto :goto_af

    .line 4780
    :cond_65
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4781
    .local v5, "resourcesToken":J
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    if-eqz v2, :cond_76

    .line 4782
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD1:I

    .line 4783
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4782
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4785
    :cond_76
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    if-eqz v2, :cond_88

    .line 4786
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD2:I

    .line 4787
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4786
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4789
    :cond_88
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    if-eqz v2, :cond_9a

    .line 4790
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD3:I

    .line 4791
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4790
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4793
    :cond_9a
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    if-eqz v2, :cond_ac

    .line 4794
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->mD4:I

    .line 4795
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 4794
    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4797
    :cond_ac
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4799
    .end local v5    # "resourcesToken":J
    :goto_af
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4800
    return-void
.end method
