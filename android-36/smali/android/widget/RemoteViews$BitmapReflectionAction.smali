.class Landroid/widget/RemoteViews$BitmapReflectionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field greylist mBitmap:Landroid/graphics/Bitmap;

.field blacklist mBitmapId:I

.field greylist mMethodName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2576
    iput-object p4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    .line 2577
    iput p2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    .line 2578
    iput-object p3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    .line 2579
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    .line 2580
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2582
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    .line 2584
    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    .line 2585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    .line 2586
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    .line 2587
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2599
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    iget v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    const/16 v3, 0xc

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    .line 2602
    .local v0, "ra":Landroid/widget/RemoteViews$ReflectionAction;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 2603
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 2617
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2612
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 4
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 2607
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    .line 2608
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2591
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2593
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2594
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 9
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 2622
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2623
    .local v0, "token":J
    iget v2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mViewId:I

    .line 2624
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 2623
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2625
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2626
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2627
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2628
    return-void
.end method
