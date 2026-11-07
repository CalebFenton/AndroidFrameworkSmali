.class public final Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;
.super Ljava/lang/Object;
.source "PakeClientKeyManagerParameters.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ssl/PakeClientKeyManagerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist clientId:[B

.field private blacklist options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ssl/PakeOption;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist serverId:[B


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addOption(Landroid/net/ssl/PakeOption;)Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;
    .registers 6
    .param p1, "option"    # Landroid/net/ssl/PakeOption;

    .line 149
    const-string v0, "Option cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ssl/PakeOption;

    .line 152
    .local v1, "existingOption":Landroid/net/ssl/PakeOption;
    invoke-virtual {v1}, Landroid/net/ssl/PakeOption;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/ssl/PakeOption;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 156
    .end local v1    # "existingOption":Landroid/net/ssl/PakeOption;
    goto :goto_b

    .line 153
    .restart local v1    # "existingOption":Landroid/net/ssl/PakeOption;
    :cond_26
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v2, "An option with the same algorithm already exists."

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    .end local v1    # "existingOption":Landroid/net/ssl/PakeOption;
    :cond_2e
    iget-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-object p0
.end method

.method public whitelist build()Landroid/net/ssl/PakeClientKeyManagerParameters;
    .registers 6

    .line 168
    iget-object v0, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 171
    new-instance v0, Landroid/net/ssl/PakeClientKeyManagerParameters;

    iget-object v1, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->clientId:[B

    iget-object v2, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->serverId:[B

    iget-object v3, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->options:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/ssl/PakeClientKeyManagerParameters;-><init>([B[BLjava/util/List;Landroid/net/ssl/PakeClientKeyManagerParameters-IA;)V

    return-object v0

    .line 169
    :cond_15
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "At least one PAKE option must be provided."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setClientId([B)Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;
    .registers 2
    .param p1, "clientId"    # [B

    .line 126
    iput-object p1, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->clientId:[B

    .line 127
    return-object p0
.end method

.method public whitelist setServerId([B)Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;
    .registers 2
    .param p1, "serverId"    # [B

    .line 137
    iput-object p1, p0, Landroid/net/ssl/PakeClientKeyManagerParameters$Builder;->serverId:[B

    .line 138
    return-object p0
.end method
