.class public final Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;
.super Ljava/lang/Object;
.source "PakeServerKeyManagerParameters.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ssl/PakeServerKeyManagerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/ssl/PakeServerKeyManagerParameters$Link;",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;->links:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/ssl/PakeServerKeyManagerParameters;
    .registers 4

    .line 215
    iget-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;->links:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 218
    new-instance v0, Landroid/net/ssl/PakeServerKeyManagerParameters;

    iget-object v1, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;->links:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/ssl/PakeServerKeyManagerParameters;-><init>(Ljava/util/Map;Landroid/net/ssl/PakeServerKeyManagerParameters-IA;)V

    return-object v0

    .line 216
    :cond_11
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "At least one link must be provided."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOptions([B[BLjava/util/List;)Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;
    .registers 12
    .param p1, "clientId"    # [B
    .param p2, "serverId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;)",
            "Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;"
        }
    .end annotation

    .line 185
    .local p3, "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    const-string v0, "options cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 190
    new-instance v0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;-><init>([B[BLandroid/net/ssl/PakeServerKeyManagerParameters-IA;)V

    .line 191
    .local v0, "link":Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v1, "storedOptions":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ssl/PakeOption;

    .line 195
    .local v3, "option":Landroid/net/ssl/PakeOption;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ssl/PakeOption;

    .line 196
    .local v5, "previousOption":Landroid/net/ssl/PakeOption;
    invoke-virtual {v5}, Landroid/net/ssl/PakeOption;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/ssl/PakeOption;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 200
    .end local v5    # "previousOption":Landroid/net/ssl/PakeOption;
    goto :goto_2e

    .line 197
    .restart local v5    # "previousOption":Landroid/net/ssl/PakeOption;
    :cond_49
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v4, "There are multiple options with the same algorithm."

    invoke-direct {v2, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v5    # "previousOption":Landroid/net/ssl/PakeOption;
    :cond_51
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v3    # "option":Landroid/net/ssl/PakeOption;
    goto :goto_1e

    .line 204
    :cond_55
    iget-object v2, p0, Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;->links:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object p0

    .line 187
    .end local v0    # "link":Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    .end local v1    # "storedOptions":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    :cond_5b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "options cannot be empty."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
