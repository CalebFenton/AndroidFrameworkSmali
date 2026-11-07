.class Landroid/widget/RemoteViews$LayoutParamAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParamAction"
.end annotation


# static fields
.field static final blacklist LAYOUT_HEIGHT:I = 0x9

.field static final blacklist LAYOUT_MARGIN_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_MARGIN_END:I = 0x5

.field static final blacklist LAYOUT_MARGIN_LEFT:I = 0x0

.field static final blacklist LAYOUT_MARGIN_RIGHT:I = 0x2

.field static final blacklist LAYOUT_MARGIN_START:I = 0x4

.field static final blacklist LAYOUT_MARGIN_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_WIDTH:I = 0x8


# instance fields
.field final greylist-max-o mProperty:I

.field final greylist-max-o mValue:I

.field final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IIFI)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F
    .param p4, "units"    # I

    .line 5165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5166
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5167
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 5168
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 5169
    invoke-static {p3, p4}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5170
    return-void
.end method

.method constructor blacklist <init>(IIII)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I
    .param p4, "valueType"    # I

    .line 5180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5181
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5182
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 5183
    iput p4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 5184
    iput p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5185
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 5190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 5191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5192
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

    .line 5343
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 5345
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b00000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5346
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_7d

    .line 5347
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    .line 5365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5366
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5365
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5361
    :pswitch_3e
    nop

    .line 5362
    const-wide v3, 0x10500000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5361
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5363
    goto :goto_e

    .line 5357
    :pswitch_50
    nop

    .line 5358
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5357
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5359
    goto :goto_e

    .line 5353
    :pswitch_62
    nop

    .line 5354
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5353
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5355
    goto :goto_e

    .line 5349
    :pswitch_74
    nop

    .line 5350
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 5349
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5351
    goto :goto_e

    .line 5369
    :cond_7d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5371
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v5, v3, v4

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5373
    new-instance v3, Landroid/widget/RemoteViews$LayoutParamAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$LayoutParamAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_74
        :pswitch_62
        :pswitch_50
        :pswitch_3e
    .end packed-switch
.end method

.method private blacklist getPixelOffset(Landroid/view/View;)I
    .registers 5
    .param p1, "target"    # Landroid/view/View;

    .line 5263
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    .line 5281
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_44

    .line 5265
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_45

    .line 5268
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_17
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 5270
    :try_start_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5268
    return v1

    .line 5270
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5271
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .end local p1    # "target":Landroid/view/View;
    throw v1

    .line 5273
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .restart local p1    # "target":Landroid/view/View;
    :pswitch_25
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_2a

    .line 5274
    return v1

    .line 5276
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    .line 5278
    :pswitch_35
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5279
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5278
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v0
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_45

    return v0

    .line 5281
    :goto_44
    return v0

    .line 5283
    :catchall_45
    move-exception v0

    .line 5284
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_35
        :pswitch_25
        :pswitch_9
    .end packed-switch
.end method

.method private blacklist getPixelSize(Landroid/view/View;)I
    .registers 5
    .param p1, "target"    # Landroid/view/View;

    .line 5290
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    .line 5308
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_44

    .line 5292
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_45

    .line 5295
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_17
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 5297
    :try_start_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5295
    return v1

    .line 5297
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5298
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .end local p1    # "target":Landroid/view/View;
    throw v1

    .line 5300
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .restart local p1    # "target":Landroid/view/View;
    :pswitch_25
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_2a

    .line 5301
    return v1

    .line 5303
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 5305
    :pswitch_35
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5306
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5305
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0
    :try_end_43
    .catchall {:try_start_1b .. :try_end_43} :catchall_45

    return v0

    .line 5308
    :goto_44
    return v0

    .line 5310
    :catchall_45
    move-exception v0

    .line 5311
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_35
        :pswitch_25
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 12
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

    .line 5374
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 5376
    .local v0, "viewId":I
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    .line 5377
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5378
    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v4, v5, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5379
    const-wide v5, 0x10500000004L

    invoke-virtual {p0, v5, v6, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    .line 5376
    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 5203
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5204
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    .line 5205
    return-void

    .line 5207
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5208
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_10

    .line 5209
    return-void

    .line 5211
    :cond_10
    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    packed-switch v2, :pswitch_data_ae

    .line 5257
    :pswitch_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5253
    :pswitch_30
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5254
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5255
    goto/16 :goto_ac

    .line 5249
    :pswitch_3b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5250
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5251
    goto :goto_ac

    .line 5243
    :pswitch_45
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 5244
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5245
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5237
    :pswitch_57
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 5238
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5239
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5231
    :pswitch_69
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 5232
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5233
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5225
    :pswitch_7a
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 5226
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5227
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5219
    :pswitch_8b
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 5220
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5221
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5213
    :pswitch_9c
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 5214
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5215
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5259
    :cond_ac
    :goto_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_8b
        :pswitch_7a
        :pswitch_69
        :pswitch_57
        :pswitch_45
        :pswitch_15
        :pswitch_15
        :pswitch_3b
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5327
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 5317
    const/16 v0, 0x13

    return v0
.end method

.method public greylist-max-o getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 5322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5195
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5196
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5197
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5198
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5199
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 5332
    const-wide v0, 0x10b00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5333
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5334
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 5333
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5335
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5336
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5337
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5338
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5339
    return-void
.end method
