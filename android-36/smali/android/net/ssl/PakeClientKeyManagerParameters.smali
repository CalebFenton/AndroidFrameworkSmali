.class public final Landroid/net/ssl/PakeClientKeyManagerParameters;
.super Ljava/lang/Object;
.source "PakeClientKeyManagerParameters.java"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;
    }
.end annotation


# instance fields
.field private final blacklist clientId:[B

.field private final blacklist options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist serverId:[B


# direct methods
.method private constructor blacklist <init>([B[BLjava/util/List;)V
    .registers 5
    .param p1, "clientId"    # [B
    .param p2, "serverId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p3, "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/net/ssl/PakeClientKeyManagerParameters;->clientId:[B

    .line 76
    iput-object p2, p0, Landroid/net/ssl/PakeClientKeyManagerParameters;->serverId:[B

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters;->options:Ljava/util/List;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>([B[BLjava/util/List;Landroid/net/ssl/PakeClientKeyManagerParameters-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/ssl/PakeClientKeyManagerParameters;-><init>([B[BLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getClientId()[B
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters;->clientId:[B

    return-object v0
.end method

.method public whitelist getOptions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/ssl/PakeClientKeyManagerParameters;->options:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getServerId()[B
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters;->serverId:[B

    return-object v0
.end method
