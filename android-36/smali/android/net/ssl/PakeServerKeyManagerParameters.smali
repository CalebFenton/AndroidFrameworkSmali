.class public final Landroid/net/ssl/PakeServerKeyManagerParameters;
.super Ljava/lang/Object;
.source "PakeServerKeyManagerParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ssl/PakeServerKeyManagerParameters$Link;,
        Landroid/net/ssl/PakeServerKeyManagerParameters$Builder;
    }
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
.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/ssl/PakeServerKeyManagerParameters$Link;",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    .local p1, "links":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/ssl/PakeServerKeyManagerParameters$Link;Ljava/util/List<Landroid/net/ssl/PakeOption;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters;->links:Ljava/util/Map;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/net/ssl/PakeServerKeyManagerParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ssl/PakeServerKeyManagerParameters;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist getLinks()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/ssl/PakeServerKeyManagerParameters$Link;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters;->links:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOptions(Landroid/net/ssl/PakeServerKeyManagerParameters$Link;)Ljava/util/List;
    .registers 5
    .param p1, "link"    # Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ssl/PakeServerKeyManagerParameters$Link;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;"
        }
    .end annotation

    .line 84
    const-string v0, "Link cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroid/net/ssl/PakeServerKeyManagerParameters;->links:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    if-eqz v0, :cond_14

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 87
    :cond_14
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Link not found."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getOptions([B[B)Ljava/util/List;
    .registers 5
    .param p1, "clientId"    # [B
    .param p2, "serverId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;-><init>([B[BLandroid/net/ssl/PakeServerKeyManagerParameters-IA;)V

    invoke-virtual {p0, v0}, Landroid/net/ssl/PakeServerKeyManagerParameters;->getOptions(Landroid/net/ssl/PakeServerKeyManagerParameters$Link;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
