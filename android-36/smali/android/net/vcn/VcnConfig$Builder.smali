.class public final Landroid/net/vcn/VcnConfig$Builder;
.super Ljava/lang/Object;
.source "VcnConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mGatewayConnectionConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsTestModeProfile:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRestrictedTransports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    .line 282
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    .line 287
    const-string v0, "context was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mPackageName:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    invoke-static {}, Landroid/net/vcn/VcnConfig;->-$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    return-void
.end method

.method private blacklist validateRestrictedTransportsOrThrow(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p1, "restrictedTransports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "transports was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 325
    .local v1, "transport":I
    invoke-static {}, Landroid/net/vcn/VcnConfig;->-$$Nest$sfgetALLOWED_TRANSPORTS()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 328
    .end local v1    # "transport":I
    goto :goto_9

    .line 326
    .restart local v1    # "transport":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    .end local v1    # "transport":I
    :cond_41
    return-void
.end method


# virtual methods
.method public whitelist addGatewayConnectionConfig(Landroid/net/vcn/VcnGatewayConnectionConfig;)Landroid/net/vcn/VcnConfig$Builder;
    .registers 6
    .param p1, "gatewayConnectionConfig"    # Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 305
    const-string v0, "gatewayConnectionConfig was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 309
    .local v1, "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    nop

    .line 310
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 315
    .end local v1    # "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    goto :goto_b

    .line 312
    .restart local v1    # "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "GatewayConnection for specified name already exists"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    .end local v1    # "vcnGatewayConnectionConfig":Landroid/net/vcn/VcnGatewayConnectionConfig;
    :cond_2f
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    return-object p0
.end method

.method public whitelist build()Landroid/net/vcn/VcnConfig;
    .registers 7

    .line 378
    new-instance v0, Landroid/net/vcn/VcnConfig;

    iget-object v1, p0, Landroid/net/vcn/VcnConfig$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-object v3, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    iget-boolean v4, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/vcn/VcnConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ZLandroid/net/vcn/VcnConfig-IA;)V

    return-object v0
.end method

.method public blacklist setIsTestModeProfile()Landroid/net/vcn/VcnConfig$Builder;
    .registers 2

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    .line 368
    return-object p0
.end method

.method public whitelist setRestrictedUnderlyingNetworkTransports(Ljava/util/Set;)Landroid/net/vcn/VcnConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/vcn/VcnConfig$Builder;"
        }
    .end annotation

    .line 348
    .local p1, "transports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/net/vcn/VcnConfig$Builder;->validateRestrictedTransportsOrThrow(Ljava/util/Set;)V

    .line 350
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 351
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 352
    return-object p0
.end method
