.class final Landroid/widget/RemoteViews$AttributeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeReflectionAction"
.end annotation


# static fields
.field static final blacklist COLOR_RESOURCE:I = 0x2

.field static final blacklist DIMEN_RESOURCE:I = 0x1

.field static final blacklist STRING_RESOURCE:I = 0x3


# instance fields
.field private final blacklist mAttrId:I

.field private final blacklist mResourceType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;III)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterType"    # I
    .param p4, "resourceType"    # I
    .param p5, "attrId"    # I

    .line 3426
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 3427
    iput p4, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 3428
    iput p5, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 3429
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3432
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 3433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 3434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 3435
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

    .line 3531
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3533
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 3534
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_87

    .line 3535
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_9a

    .line 3562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3563
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3562
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3547
    :pswitch_39
    nop

    .line 3548
    const-wide v3, 0x10900000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3547
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3550
    goto :goto_e

    .line 3557
    :pswitch_47
    nop

    .line 3558
    const-wide v3, 0x10500000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3557
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3560
    goto :goto_e

    .line 3552
    :pswitch_59
    nop

    .line 3553
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3552
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3555
    goto :goto_e

    .line 3542
    :pswitch_6b
    nop

    .line 3543
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3542
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3545
    goto :goto_e

    .line 3537
    :pswitch_79
    nop

    .line 3538
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3537
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3539
    goto :goto_e

    .line 3566
    :cond_87
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3568
    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_a8

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3573
    new-instance v3, Landroid/widget/RemoteViews$AttributeReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$AttributeReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6b
        :pswitch_59
        :pswitch_47
        :pswitch_39
    .end packed-switch

    :array_a8
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000003L
        0x10500000004L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 13
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

    .line 3574
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 3576
    .local v3, "viewId":I
    const-wide v0, 0x10900000005L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_1a

    .line 3578
    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    move v7, v0

    goto :goto_1c

    .line 3579
    :cond_1a
    const/4 v0, 0x0

    move v7, v0

    :goto_1c
    nop

    .line 3580
    .local v7, "attributeId":I
    new-instance v2, Landroid/widget/RemoteViews$AttributeReflectionAction;

    .line 3581
    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 3582
    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3583
    const-wide v0, 0x10500000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    .line 3580
    return-object v2
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3511
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3506
    const/16 v0, 0x20

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3446
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3449
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_e
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_3f

    .line 3450
    :cond_1a
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 3453
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3f
    :goto_3f
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    packed-switch v1, :pswitch_data_142

    .line 3492
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_119

    .line 3479
    :pswitch_48
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    packed-switch v1, :pswitch_data_14c

    .line 3485
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_60

    .line 3481
    :pswitch_50
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_54
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_e .. :try_end_54} :catch_139
    .catchall {:try_start_e .. :try_end_54} :catchall_132

    .line 3500
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3481
    return-object v1

    .line 3483
    :pswitch_58
    :try_start_58
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5c
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_58 .. :try_end_5c} :catch_139
    .catchall {:try_start_58 .. :try_end_5c} :catchall_132

    .line 3500
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3483
    return-object v1

    .line 3485
    :goto_60
    :try_start_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 3486
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 3467
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_8a
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    sparse-switch v1, :sswitch_data_154

    .line 3473
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_a6

    .line 3471
    :sswitch_92
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_96
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_60 .. :try_end_96} :catch_139
    .catchall {:try_start_60 .. :try_end_96} :catchall_132

    .line 3500
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3471
    return-object v1

    .line 3469
    :sswitch_9a
    :try_start_9a
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_a2
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_9a .. :try_end_a2} :catch_139
    .catchall {:try_start_9a .. :try_end_a2} :catchall_132

    .line 3500
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3469
    return-object v1

    .line 3473
    :goto_a6
    :try_start_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 3474
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 3455
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_cf
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    packed-switch v1, :pswitch_data_15e

    .line 3461
    :pswitch_d4
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_f0

    .line 3459
    :pswitch_d7
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_e0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_a6 .. :try_end_e0} :catch_139
    .catchall {:try_start_a6 .. :try_end_e0} :catchall_132

    .line 3500
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3459
    return-object v1

    .line 3457
    :pswitch_e4
    :try_start_e4
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_ec
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_e4 .. :try_end_ec} :catch_139
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_132

    .line 3500
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3457
    return-object v1

    .line 3461
    :goto_f0
    :try_start_f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 3462
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 3492
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_132
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_f0 .. :try_end_132} :catch_139
    .catchall {:try_start_f0 .. :try_end_132} :catchall_132

    .line 3497
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_132
    move-exception v1

    .line 3498
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_133
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2

    .line 3495
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catch_139
    move-exception v1

    .line 3496
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    nop

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_13c

    .line 3500
    .end local v1    # "ex":Landroid/widget/RemoteViews$ActionException;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_13c
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3501
    throw v1

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_8a
        :pswitch_48
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x9
        :pswitch_58
        :pswitch_50
    .end packed-switch

    :sswitch_data_154
    .sparse-switch
        0x4 -> :sswitch_9a
        0xf -> :sswitch_92
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x4
        :pswitch_e4
        :pswitch_d4
        :pswitch_d7
    .end packed-switch
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3439
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3440
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3442
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 3516
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3517
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mViewId:I

    .line 3518
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 3517
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3519
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3520
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3521
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3522
    iget v2, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    if-eqz v2, :cond_47

    .line 3523
    iget v2, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 3524
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 3523
    const-wide v3, 0x10900000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3526
    :cond_47
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3527
    return-void
.end method
