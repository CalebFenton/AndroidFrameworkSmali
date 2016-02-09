.class Landroid/widget/RemoteViews$SetPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPendingIntentTemplate"
.end annotation


# static fields
.field public static final TAG:I = 0x8


# instance fields
.field pendingIntentTemplate:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 441
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 442
    iput p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    #@8
    .line 443
    iput-object p3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    #@a
    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 446
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    #@c
    .line 448
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    #@12
    .line 446
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 459
    iget v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    #@2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v2

    #@6
    .line 460
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_0

    #@8
    return-void

    #@9
    .line 463
    :cond_0
    instance-of v3, v2, Landroid/widget/AdapterView;

    #@b
    if-eqz v3, :cond_1

    #@d
    move-object v0, v2

    #@e
    .line 464
    check-cast v0, Landroid/widget/AdapterView;

    #@10
    .line 466
    .local v0, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;

    #@12
    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;-><init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@15
    .line 499
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@18
    .line 500
    iget-object v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    #@1a
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    #@1d
    .line 458
    return-void

    #@1e
    .line 502
    .end local v0    # "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v1    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_1
    const-string/jumbo v3, "RemoteViews"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 503
    iget v5, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    #@2f
    .line 502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 503
    const-string/jumbo v5, ")"

    #@36
    .line 502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 504
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 509
    const-string/jumbo v0, "SetPendingIntentTemplate"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 452
    const/16 v0, 0x8

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 453
    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 454
    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@10
    .line 451
    return-void
.end method
