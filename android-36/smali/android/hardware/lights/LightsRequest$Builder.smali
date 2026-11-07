.class public final Landroid/hardware/lights/LightsRequest$Builder;
.super Ljava/lang/Object;
.source "LightsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/LightsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final blacklist mChanges:Ljava/util/Map;
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
.method public constructor whitelist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;
    .registers 4
    .param p1, "light"    # Landroid/hardware/lights/Light;
    .param p2, "state"    # Landroid/hardware/lights/LightState;

    .line 92
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object p0
.end method

.method public whitelist build()Landroid/hardware/lights/LightsRequest;
    .registers 4

    .line 130
    new-instance v0, Landroid/hardware/lights/LightsRequest;

    iget-object v1, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/lights/LightsRequest;-><init>(Ljava/util/Map;Landroid/hardware/lights/LightsRequest-IA;)V

    return-object v0
.end method

.method public whitelist clearLight(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightsRequest$Builder;
    .registers 4
    .param p1, "light"    # Landroid/hardware/lights/Light;

    .line 118
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Landroid/hardware/lights/LightsRequest$Builder;->mChanges:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object p0
.end method

.method public whitelist setLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;
    .registers 4
    .param p1, "light"    # Landroid/hardware/lights/Light;
    .param p2, "state"    # Landroid/hardware/lights/LightState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/hardware/lights/LightsRequest$Builder;->addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;

    move-result-object v0

    return-object v0
.end method
