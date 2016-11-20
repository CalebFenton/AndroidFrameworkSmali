.class public Landroid/app/Notification$DecoratedMediaCustomViewStyle;
.super Landroid/app/Notification$MediaStyle;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5624
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;-><init>()V

    #@3
    return-void
.end method

.method private buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "customContent"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 5682
    if-eqz p3, :cond_0

    #@2
    .line 5685
    invoke-virtual {p3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@5
    move-result-object p3

    #@6
    .line 5686
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@9
    .line 5687
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@c
    .line 5689
    :cond_0
    return-object p1
.end method

.method private makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "customRemoteView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5656
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    #@4
    move-result-object v0

    #@5
    .line 5657
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    #@7
    .line 5658
    const v1, 0x10203b8

    #@a
    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 5660
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@11
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@14
    move-result-object v1

    #@15
    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@17
    if-eq p1, v1, :cond_1

    #@19
    .line 5661
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeContentView()Landroid/widget/RemoteViews;

    #@1c
    move-result-object v0

    #@1d
    .line 5662
    const v1, 0x10203c4

    #@20
    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 5665
    :cond_1
    return-object v2
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .locals 1

    #@0
    .prologue
    .line 5631
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    #@0
    .prologue
    .line 5649
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@5
    move-result-object v1

    #@6
    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5650
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@f
    move-result-object v1

    #@10
    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@12
    .line 5652
    .local v0, "customRemoteView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 5651
    .end local v0    # "customRemoteView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@19
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@1c
    move-result-object v1

    #@1d
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1f
    goto :goto_0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 3

    #@0
    .prologue
    .line 5639
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeContentView()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    .line 5641
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@9
    move-result-object v1

    #@a
    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@c
    .line 5640
    const v2, 0x10203c4

    #@f
    invoke-direct {p0, v0, v2, v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 2

    #@0
    .prologue
    .line 5674
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@5
    move-result-object v1

    #@6
    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 5675
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@f
    move-result-object v1

    #@10
    iget-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@12
    .line 5677
    .local v0, "customRemoteView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 5676
    .end local v0    # "customRemoteView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@19
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@1c
    move-result-object v1

    #@1d
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1f
    goto :goto_0
.end method
