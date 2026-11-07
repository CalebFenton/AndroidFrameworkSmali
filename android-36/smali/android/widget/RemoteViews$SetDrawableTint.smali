.class Landroid/widget/RemoteViews$SetDrawableTint;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetDrawableTint"
.end annotation


# instance fields
.field blacklist mColorFilter:I

.field blacklist mFilterMode:Landroid/graphics/PorterDuff$Mode;

.field blacklist mTargetBackground:Z


# direct methods
.method constructor blacklist <init>(IZILandroid/graphics/PorterDuff$Mode;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "colorFilter"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 2222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2223
    iput p1, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    .line 2224
    iput-boolean p2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    .line 2225
    iput p3, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    .line 2226
    iput-object p4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 2227
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    .line 2231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    .line 2232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    .line 2233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 2234
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

    .line 2286
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 2288
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b0000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2289
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_7d

    .line 2290
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    .line 2310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2311
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2310
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2305
    :pswitch_3e
    nop

    .line 2306
    const-wide v3, 0x10500000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    .line 2305
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2308
    goto :goto_e

    .line 2301
    :pswitch_50
    nop

    .line 2302
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2301
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2303
    goto :goto_e

    .line 2296
    :pswitch_62
    nop

    .line 2297
    const-wide v3, 0x10800000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2296
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2299
    goto :goto_e

    .line 2292
    :pswitch_74
    nop

    .line 2293
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 2292
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2294
    goto :goto_e

    .line 2314
    :cond_7d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2316
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v5, v3, v4

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 2318
    new-instance v3, Landroid/widget/RemoteViews$SetDrawableTint$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$SetDrawableTint$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

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

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 11
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

    .line 2319
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 2321
    .local v0, "viewId":I
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    .line 2322
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2321
    const-wide v4, 0x10800000002L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v4, v5, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2324
    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v3, v2, v4}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 2321
    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 2245
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2246
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 2249
    :cond_9
    const/4 v1, 0x0

    .line 2250
    .local v1, "targetDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    if-eqz v2, :cond_13

    .line 2251
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1e

    .line 2252
    :cond_13
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1e

    .line 2253
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    .line 2254
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2257
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_2b

    .line 2258
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    iget-object v4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2260
    :cond_2b
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 2269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2264
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2237
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2241
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 2274
    const-wide v0, 0x10b0000000aL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2275
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mViewId:I

    .line 2276
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2275
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2277
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mColorFilter:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2278
    iget-object v2, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 2279
    invoke-static {v2}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v2

    .line 2278
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2280
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/widget/RemoteViews$SetDrawableTint;->mTargetBackground:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2281
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2282
    return-void
.end method
