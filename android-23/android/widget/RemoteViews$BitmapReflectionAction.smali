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


# static fields
.field public static final TAG:I = 0xc


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapId:I

.field methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1011
    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1012
    iput-object p4, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    #@8
    .line 1013
    iput p2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    #@a
    .line 1014
    iput-object p3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    #@c
    .line 1015
    invoke-static {p1}, Landroid/widget/RemoteViews;->-get0(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p4}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    #@16
    .line 1011
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1018
    iput-object p1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    #@c
    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    #@12
    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    #@18
    .line 1022
    invoke-static {p1}, Landroid/widget/RemoteViews;->-get0(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    #@1b
    move-result-object v0

    #@1c
    iget v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    #@24
    .line 1018
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    #@0
    .prologue
    .line 1036
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    #@2
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->this$0:Landroid/widget/RemoteViews;

    #@4
    iget v2, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    #@6
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    #@8
    .line 1037
    iget-object v5, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    #@a
    .line 1036
    const/16 v4, 0xc

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    #@f
    .line 1038
    .local v0, "ra":Landroid/widget/RemoteViews$ReflectionAction;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@12
    .line 1035
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1047
    const-string/jumbo v0, "BitmapReflectionAction"

    #@3
    return-object v0
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 1
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    #@0
    .prologue
    .line 1043
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    #@8
    .line 1042
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1027
    const/16 v0, 0xc

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1028
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1029
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->methodName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 1030
    iget v0, p0, Landroid/widget/RemoteViews$BitmapReflectionAction;->bitmapId:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1026
    return-void
.end method
