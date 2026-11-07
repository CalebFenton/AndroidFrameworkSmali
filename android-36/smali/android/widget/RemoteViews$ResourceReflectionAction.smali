.class final Landroid/widget/RemoteViews$ResourceReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceReflectionAction"
.end annotation


# static fields
.field static final blacklist COLOR_RESOURCE:I = 0x2

.field static final blacklist DIMEN_RESOURCE:I = 0x1

.field static final blacklist STRING_RESOURCE:I = 0x3


# instance fields
.field private final blacklist mResId:I

.field private final blacklist mResourceType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;III)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterType"    # I
    .param p4, "resourceType"    # I
    .param p5, "resId"    # I

    .line 3264
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 3265
    iput p4, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 3266
    iput p5, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 3267
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3270
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 3271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 3272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 3273
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

    .line 3361
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3363
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 3364
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_87

    .line 3365
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_9a

    .line 3390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3391
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3390
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3385
    :pswitch_39
    nop

    .line 3386
    const-wide v3, 0x10500000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3385
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3388
    goto :goto_e

    .line 3381
    :pswitch_4b
    nop

    .line 3382
    const-wide v3, 0x10900000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3381
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3383
    goto :goto_e

    .line 3376
    :pswitch_59
    nop

    .line 3377
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3376
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3379
    goto :goto_e

    .line 3371
    :pswitch_6b
    nop

    .line 3372
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3371
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3374
    goto :goto_e

    .line 3367
    :pswitch_79
    nop

    .line 3368
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3367
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3369
    goto :goto_e

    .line 3394
    :cond_87
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3396
    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_a8

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3400
    new-instance v3, Landroid/widget/RemoteViews$ResourceReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$ResourceReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6b
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_a8
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000005L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 15
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

    .line 3401
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v3

    .line 3404
    .local v3, "viewId":I
    const-wide v0, 0x10900000004L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v2

    const/4 v4, 0x0

    if-ltz v2, :cond_1b

    .line 3405
    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    move v7, v0

    goto :goto_1c

    .line 3406
    :cond_1b
    move v7, v4

    :goto_1c
    nop

    .line 3407
    .local v7, "resId":I
    new-instance v2, Landroid/widget/RemoteViews$ResourceReflectionAction;

    .line 3408
    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3409
    const-wide v5, 0x10500000005L

    invoke-virtual {p0, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3411
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3410
    const-wide v8, 0x10500000003L

    invoke-virtual {p0, v8, v9, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    .line 3407
    return-object v2
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3341
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3336
    const/16 v0, 0x18

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

    .line 3285
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3287
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3289
    .local v1, "resources":Landroid/content/res/Resources;
    :try_start_c
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_100

    .line 3325
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_dc

    .line 3314
    :pswitch_16
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    packed-switch v2, :pswitch_data_10a

    .line 3320
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_38

    .line 3316
    :pswitch_1e
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_23

    :goto_22
    goto :goto_2a

    :cond_23
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_22

    :goto_2a
    return-object v0

    .line 3318
    :pswitch_2b
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_30

    :goto_2f
    goto :goto_37

    :cond_30
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :goto_37
    return-object v0

    .line 3320
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string resources must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 3302
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_52
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    sparse-switch v2, :sswitch_data_112

    .line 3309
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_80

    .line 3306
    :sswitch_5a
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v2, :cond_5f

    .line 3307
    :goto_5e
    goto :goto_6a

    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_5e

    .line 3306
    :goto_6a
    return-object v0

    .line 3304
    :sswitch_6b
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_70

    :goto_6f
    goto :goto_7b

    :cond_70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_6f

    :goto_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3309
    :goto_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color resources must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 3291
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_99
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    packed-switch v0, :pswitch_data_11c

    .line 3297
    :pswitch_9e
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    goto :goto_c3

    .line 3295
    :pswitch_a1
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_a7

    const/4 v0, 0x0

    goto :goto_ad

    :cond_a7
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_ad
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 3293
    :pswitch_b2
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_b7

    :goto_b6
    goto :goto_be

    :cond_b7
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_b6

    :goto_be
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3297
    :goto_c3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen resources must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0

    .line 3325
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v0
    :try_end_f6
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_c .. :try_end_f6} :catch_fd
    .catchall {:try_start_c .. :try_end_f6} :catchall_f6

    .line 3329
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ResourceReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_f6
    move-exception v0

    .line 3330
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3327
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_fd
    move-exception v0

    .line 3328
    .local v0, "ex":Landroid/widget/RemoteViews$ActionException;
    throw v0

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_99
        :pswitch_52
        :pswitch_16
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x9
        :pswitch_2b
        :pswitch_1e
    .end packed-switch

    :sswitch_data_112
    .sparse-switch
        0x4 -> :sswitch_6b
        0xf -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x4
        :pswitch_b2
        :pswitch_9e
        :pswitch_a1
    .end packed-switch
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3277
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3278
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3279
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3280
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 3346
    const-wide v0, 0x10b00000008L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3347
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mViewId:I

    .line 3348
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 3347
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3349
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3350
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3351
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3352
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-eqz v2, :cond_47

    .line 3353
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 3354
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 3353
    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3356
    :cond_47
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3357
    return-void
.end method
