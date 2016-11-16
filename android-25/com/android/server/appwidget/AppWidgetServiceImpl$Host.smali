.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Host"
.end annotation


# instance fields
.field callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

.field lastWidgetUpdateTime:J

.field tag:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field zombie:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 3778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3780
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@a
    .line 3784
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@d
    .line 3778
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    #@3
    return-void
.end method

.method private hostsPackageForUser(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3796
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 3797
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 3798
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@11
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@13
    .line 3799
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_0

    #@15
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@18
    move-result v3

    #@19
    if-ne v3, p2, :cond_0

    #@1b
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 3800
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@21
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    .line 3799
    if-eqz v3, :cond_0

    #@2d
    .line 3801
    const/4 v3, 0x1

    #@2e
    return v3

    #@2f
    .line 3797
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 3804
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    const/4 v3, 0x0

    #@33
    return v3
.end method


# virtual methods
.method public getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z
    .locals 12
    .param p1, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "outUpdates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    const/4 v11, 0x0

    #@1
    .line 3812
    iget-wide v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateTime:J

    #@3
    .line 3813
    .local v8, "updateTime":J
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 3814
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@c
    .line 3815
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v7

    #@12
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@14
    .line 3816
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@16
    if-ne v10, p1, :cond_2

    #@18
    .line 3817
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->clear()V

    #@1b
    .line 3818
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@1d
    invoke-virtual {v10}, Landroid/util/SparseLongArray;->size()I

    #@20
    move-result v10

    #@21
    add-int/lit8 v3, v10, -0x1

    #@23
    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    #@25
    .line 3819
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@27
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@2a
    move-result-wide v4

    #@2b
    .line 3820
    .local v4, "time":J
    cmp-long v10, v4, v8

    #@2d
    if-gtz v10, :cond_0

    #@2f
    .line 3818
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@31
    goto :goto_1

    #@32
    .line 3823
    :cond_0
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateTimes:Landroid/util/SparseLongArray;

    #@34
    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@37
    move-result v2

    #@38
    .line 3825
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    #@3b
    .line 3835
    invoke-static {p1, v2}, Landroid/appwidget/PendingHostUpdate;->viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;

    #@3e
    move-result-object v6

    #@3f
    .line 3837
    .local v6, "update":Landroid/appwidget/PendingHostUpdate;
    :goto_3
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@42
    goto :goto_2

    #@43
    .line 3828
    .end local v6    # "update":Landroid/appwidget/PendingHostUpdate;
    :pswitch_0
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@45
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@47
    .line 3827
    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;

    #@4a
    move-result-object v6

    #@4b
    .restart local v6    # "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_3

    #@4c
    .line 3832
    .end local v6    # "update":Landroid/appwidget/PendingHostUpdate;
    :pswitch_1
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    #@4f
    move-result-object v10

    #@50
    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap0(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@53
    move-result-object v10

    #@54
    .line 3831
    invoke-static {p1, v10}, Landroid/appwidget/PendingHostUpdate;->updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;

    #@57
    move-result-object v6

    #@58
    .restart local v6    # "update":Landroid/appwidget/PendingHostUpdate;
    goto :goto_3

    #@59
    .line 3839
    .end local v2    # "id":I
    .end local v4    # "time":J
    .end local v6    # "update":Landroid/appwidget/PendingHostUpdate;
    :cond_1
    const/4 v10, 0x1

    #@5a
    return v10

    #@5b
    .line 3814
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 3842
    .end local v7    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3
    return v11

    #@5f
    .line 3825
    nop

    #@60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2
    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@3
    move-result v0

    #@4
    if-ne v0, p2, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@8
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3847
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Host{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    const-string/jumbo v0, " Z"

    #@19
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const/16 v1, 0x7d

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    :cond_0
    const-string/jumbo v0, ""

    #@2b
    goto :goto_0
.end method
