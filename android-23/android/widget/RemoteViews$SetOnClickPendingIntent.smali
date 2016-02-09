.class Landroid/widget/RemoteViews$SetOnClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x1


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 664
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 665
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    #@8
    .line 666
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@a
    .line 664
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 669
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    #@6
    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    #@c
    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 674
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@18
    .line 669
    :cond_0
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
    .line 691
    iget v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    #@2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v2

    #@6
    .line 692
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_0

    #@8
    return-void

    #@9
    .line 696
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    #@b
    invoke-static {v3}, Landroid/widget/RemoteViews;->-get1(Landroid/widget/RemoteViews;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 697
    const-string/jumbo v3, "RemoteViews"

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Cannot setOnClickPendingIntent for collection item (id: "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 698
    iget v5, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    #@22
    .line 697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 698
    const-string/jumbo v5, ")"

    #@29
    .line 697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3b
    move-result-object v0

    #@3c
    .line 703
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    #@3e
    .line 704
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@40
    const/16 v4, 0x10

    #@42
    if-lt v3, v4, :cond_1

    #@44
    .line 705
    return-void

    #@45
    .line 710
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    #@46
    .line 711
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@48
    if-eqz v3, :cond_2

    #@4a
    .line 712
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;

    #@4c
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnClickPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@4f
    .line 724
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@52
    .line 690
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 728
    const-string/jumbo v0, "SetOnClickPendingIntent"

    #@3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 679
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 680
    iget v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 683
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@c
    if-eqz v2, :cond_1

    #@e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 684
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 685
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    #@17
    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 678
    :cond_0
    return-void

    #@1b
    :cond_1
    move v0, v1

    #@1c
    .line 683
    goto :goto_0
.end method
