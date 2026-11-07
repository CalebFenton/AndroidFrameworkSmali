.class final Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComplexUnitDimensionReflectionAction"
.end annotation


# instance fields
.field private final blacklist mUnit:I

.field private final blacklist mValue:F


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;IFI)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterType"    # I
    .param p4, "value"    # F
    .param p5, "unit"    # I

    .line 3596
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 3597
    iput p4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    .line 3598
    iput p5, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    .line 3599
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3602
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 3603
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    .line 3604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    .line 3605
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

    .line 3665
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3667
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 3669
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8b

    .line 3670
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_9e

    .line 3710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3711
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3710
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3704
    :pswitch_39
    nop

    .line 3705
    const-wide v3, 0x10500000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3704
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3708
    goto :goto_e

    .line 3695
    :pswitch_4b
    nop

    .line 3698
    const-wide v3, 0x10200000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3695
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3702
    goto :goto_e

    .line 3685
    :pswitch_5d
    nop

    .line 3688
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3685
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3692
    goto :goto_e

    .line 3678
    :pswitch_6f
    nop

    .line 3680
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3678
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3683
    goto :goto_e

    .line 3672
    :pswitch_7d
    nop

    .line 3673
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3672
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3676
    goto :goto_e

    .line 3714
    :cond_8b
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3716
    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_ac

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3721
    new-instance v3, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_ac
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000003L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 14
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

    .line 3722
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 3724
    .local v3, "viewId":I
    new-instance v2, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 3726
    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3732
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3729
    const-wide v6, 0x10200000004L

    invoke-virtual {p0, v6, v7, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 3734
    nop

    .line 3733
    const-wide v7, 0x10500000005L

    invoke-virtual {p0, v7, v8, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    .line 3724
    return-object v2
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3645
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3640
    const/16 v0, 0x19

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3617
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 3619
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3621
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_10
    iget v1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    .line 3622
    .local v1, "data":I
    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mType:I

    packed-switch v2, :pswitch_data_54

    .line 3628
    :pswitch_1d
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    goto :goto_32

    .line 3626
    :pswitch_20
    invoke-static {v1, v0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 3624
    :pswitch_29
    invoke-static {v1, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3628
    :goto_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameter type must be INT or FLOAT, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local p0    # "this":Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2
    :try_end_4b
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_10 .. :try_end_4b} :catch_52
    .catchall {:try_start_10 .. :try_end_4b} :catchall_4b

    .line 3633
    .end local v1    # "data":I
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_4b
    move-exception v1

    .line 3634
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3631
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_52
    move-exception v1

    .line 3632
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    throw v1

    :pswitch_data_54
    .packed-switch 0x4
        :pswitch_29
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3609
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3610
    iget v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3611
    iget v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 3650
    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3652
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mViewId:I

    .line 3653
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 3652
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3654
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3656
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3657
    const-wide v2, 0x10200000004L

    iget v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 3659
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3660
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3661
    return-void
.end method
