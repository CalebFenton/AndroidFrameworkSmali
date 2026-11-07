.class public final Landroid/media/MediaRoute2ProviderInfo$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final blacklist mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    .line 144
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaRoute2ProviderInfo;)V
    .registers 4
    .param p1, "descriptor"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, "descriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v0, p1, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 206
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 211
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 212
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v2, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    iget-object v3, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 213
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 215
    :cond_2e
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_37
    return-object p0

    .line 209
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A route with the same id is already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addRoutes(Ljava/util/Collection;)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Landroid/media/MediaRoute2ProviderInfo$Builder;"
        }
    .end annotation

    .line 225
    .local p1, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    const-string v0, "routes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 228
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 229
    .local v1, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 230
    .end local v1    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_f

    .line 232
    :cond_1f
    return-object p0
.end method

.method public blacklist build()Landroid/media/MediaRoute2ProviderInfo;
    .registers 2

    .line 240
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2ProviderInfo;-><init>(Landroid/media/MediaRoute2ProviderInfo$Builder;)V

    return-object v0
.end method

.method public blacklist setSystemRouteProvider(Z)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .registers 7
    .param p1, "isSystem"    # Z

    .line 189
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2c

    .line 191
    iget-object v2, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 192
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v3

    if-eq v3, p1, :cond_29

    .line 193
    iget-object v3, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 194
    invoke-virtual {v4, p1}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    .line 193
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 198
    .end local v1    # "i":I
    :cond_2c
    return-object p0
.end method

.method public blacklist setUniqueId(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaRoute2ProviderInfo$Builder;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    return-object p0

    .line 167
    :cond_9
    iput-object p2, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 170
    .local v0, "newRoutes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 171
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    new-instance v3, Landroid/media/MediaRoute2Info$Builder;

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    invoke-direct {v3, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 173
    invoke-virtual {v3, p1}, Landroid/media/MediaRoute2Info$Builder;->setProviderPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    .line 174
    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v3

    .line 176
    .local v3, "routeWithProviderId":Landroid/media/MediaRoute2Info;
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    .end local v3    # "routeWithProviderId":Landroid/media/MediaRoute2Info;
    goto :goto_1a

    .line 179
    :cond_47
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 180
    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 181
    return-object p0
.end method
