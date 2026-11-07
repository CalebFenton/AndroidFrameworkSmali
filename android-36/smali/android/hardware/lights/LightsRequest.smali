.class public final Landroid/hardware/lights/LightsRequest;
.super Ljava/lang/Object;
.source "LightsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/LightsRequest$Builder;
    }
.end annotation


# instance fields
.field final blacklist mLightIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLightStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/lights/Light;",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/lights/Light;",
            "Landroid/hardware/lights/LightState;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "requests":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightIds:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightStates:Ljava/util/List;

    .line 43
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v0, "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/lights/Light;

    .line 47
    .local v2, "light":Landroid/hardware/lights/Light;
    iget-object v3, p0, Landroid/hardware/lights/LightsRequest;->mLightIds:Ljava/util/List;

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    iget-object v3, p0, Landroid/hardware/lights/LightsRequest;->mLightStates:Ljava/util/List;

    iget-object v4, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/lights/LightState;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    .end local v2    # "light":Landroid/hardware/lights/Light;
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 50
    .end local v1    # "i":I
    :cond_52
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/hardware/lights/LightsRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/LightsRequest;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist getLightStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightStates:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLights()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mLightIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLightsAndStates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/lights/Light;",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest;->mRequests:Ljava/util/Map;

    return-object v0
.end method
