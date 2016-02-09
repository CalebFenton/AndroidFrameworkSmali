.class Landroid/widget/RemoteViews$TextViewSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewSizeAction"
.end annotation


# static fields
.field public static final TAG:I = 0xd


# instance fields
.field size:F

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field units:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIF)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "units"    # I
    .param p4, "size"    # F

    #@0
    .prologue
    .line 1536
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1537
    iput p2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    #@8
    .line 1538
    iput p3, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    #@a
    .line 1539
    iput p4, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    #@c
    .line 1536
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1542
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 1543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    #@c
    .line 1544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    #@12
    .line 1545
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    #@18
    .line 1542
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 1557
    iget v1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    #@2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/TextView;

    #@8
    .line 1558
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_0

    #@a
    return-void

    #@b
    .line 1559
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    #@d
    iget v2, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@12
    .line 1556
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1563
    const-string/jumbo v0, "TextViewSizeAction"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1549
    const/16 v0, 0xd

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1550
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1551
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->units:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1552
    iget v0, p0, Landroid/widget/RemoteViews$TextViewSizeAction;->size:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 1548
    return-void
.end method
