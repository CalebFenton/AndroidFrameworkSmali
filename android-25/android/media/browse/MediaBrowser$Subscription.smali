.class Landroid/media/browse/MediaBrowser$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    #@a
    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@11
    .line 1095
    return-void
.end method


# virtual methods
.method public getCallback(Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1113
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 1114
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/os/Bundle;

    #@11
    invoke-static {v1, p1}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1115
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    #@19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    #@1f
    return-object v1

    #@20
    .line 1113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1118
    :cond_1
    const/4 v1, 0x0

    #@24
    return-object v1
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1109
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1101
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public putCallback(Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    #@0
    .prologue
    .line 1122
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 1123
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/os/Bundle;

    #@11
    invoke-static {v1, p1}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1124
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    #@19
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 1125
    return-void

    #@1d
    .line 1122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1128
    :cond_1
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    #@22
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 1129
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    #@27
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1121
    return-void
.end method
