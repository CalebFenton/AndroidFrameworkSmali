.class Landroid/widget/RemoteViews$SetOnClickFillInIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickFillInIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x9


# instance fields
.field fillInIntent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 366
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 367
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    #@8
    .line 368
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@a
    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 371
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    #@c
    .line 373
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/content/Intent;

    #@14
    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@16
    .line 371
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 384
    iget v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    #@2
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    .line 385
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 387
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    #@b
    invoke-static {v2}, Landroid/widget/RemoteViews;->-get1(Landroid/widget/RemoteViews;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 388
    const-string/jumbo v2, "RemoteViews"

    #@14
    const-string/jumbo v3, "The method setOnClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 390
    return-void

    #@1b
    .line 392
    :cond_1
    if-ne v1, p1, :cond_3

    #@1d
    .line 393
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@1f
    const v3, 0x1020045

    #@22
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@25
    .line 383
    :cond_2
    :goto_0
    return-void

    #@26
    .line 394
    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 395
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;

    #@2c
    invoke-direct {v0, p0, p3}, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@2f
    .line 427
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@32
    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 432
    const-string/jumbo v0, "SetOnClickFillInIntent"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 377
    const/16 v0, 0x9

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 378
    iget v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 379
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@10
    .line 376
    return-void
.end method
