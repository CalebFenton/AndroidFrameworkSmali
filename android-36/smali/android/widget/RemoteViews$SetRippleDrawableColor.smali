.class Landroid/widget/RemoteViews$SetRippleDrawableColor;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRippleDrawableColor"
.end annotation


# instance fields
.field blacklist mColorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method constructor blacklist <init>(ILandroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 2342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2343
    iput p1, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mViewId:I

    .line 2344
    iput-object p2, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2345
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mViewId:I

    .line 2349
    const-class v1, Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2350
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

    .line 2392
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 2394
    .local v0, "values":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const-wide v1, 0x10b0000000fL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2395
    .local v1, "token":J
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_55

    .line 2396
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 2409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2410
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2409
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2403
    :pswitch_39
    nop

    .line 2404
    const-wide v3, 0x10b00000002L

    invoke-static {p0, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 2403
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2407
    goto :goto_e

    .line 2398
    :pswitch_47
    nop

    .line 2399
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 2398
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2401
    goto :goto_e

    .line 2413
    :cond_55
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2415
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_70

    invoke-static {v0, v3}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 2419
    new-instance v3, Landroid/widget/RemoteViews$SetRippleDrawableColor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViews$SetRippleDrawableColor$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object v3

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_47
        :pswitch_39
    .end packed-switch

    :array_70
    .array-data 8
        0x10900000001L
        0x10b00000002L
    .end array-data
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

    .line 2420
    const-wide v0, 0x10900000001L

    invoke-static {p2, p0, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 2422
    .local v0, "viewId":I
    new-instance v1, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(ILandroid/content/res/ColorStateList;)V

    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 2359
    iget v0, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2360
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 2363
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2365
    .local v1, "targetDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1c

    .line 2366
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 2368
    :cond_1c
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 2377
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 2372
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2353
    iget v0, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2354
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mColorStateList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2355
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 2382
    const-wide v0, 0x10b0000000fL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2383
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mViewId:I

    .line 2384
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2383
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2385
    iget-object v2, p0, Landroid/widget/RemoteViews$SetRippleDrawableColor;->mColorStateList:Landroid/content/res/ColorStateList;

    const-wide v3, 0x10b00000002L

    invoke-static {p1, v2, v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    .line 2387
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2388
    return-void
.end method
