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
.field private final greylist-max-o mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    .line 1157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    .line 1158
    return-void
.end method


# virtual methods
.method public greylist-max-o getCallback(Landroid/content/Context;Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1173
    if-eqz p2, :cond_9

    .line 1174
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1176
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 1177
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1178
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    return-object v1

    .line 1176
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1181
    .end local v0    # "i":I
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 2

    .line 1161
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o putCallback(Landroid/content/Context;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 1185
    if-eqz p2, :cond_9

    .line 1186
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1188
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1189
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1190
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1191
    return-void

    .line 1188
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1194
    .end local v0    # "i":I
    :cond_29
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    return-void
.end method
