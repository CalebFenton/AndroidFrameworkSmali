.class public final Lcom/android/location/provider/ProviderRequestUnbundled;
.super Ljava/lang/Object;
.source "ProviderRequestUnbundled.java"


# instance fields
.field private final mRequest:Lcom/android/internal/location/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@5
    .line 36
    return-void
.end method


# virtual methods
.method public getInterval()J
    .locals 2

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@2
    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@4
    return-wide v0
.end method

.method public getLocationRequests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/location/provider/LocationRequestUnbundled;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    #@2
    .line 53
    iget-object v3, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@4
    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@6
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@9
    move-result v3

    #@a
    .line 52
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 54
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/location/provider/LocationRequestUnbundled;>;"
    iget-object v3, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@f
    iget-object v3, v3, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/location/LocationRequest;

    #@21
    .line 55
    .local v0, "r":Landroid/location/LocationRequest;
    new-instance v3, Lcom/android/location/provider/LocationRequestUnbundled;

    #@23
    invoke-direct {v3, v0}, Lcom/android/location/provider/LocationRequestUnbundled;-><init>(Landroid/location/LocationRequest;)V

    #@26
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 57
    .end local v0    # "r":Landroid/location/LocationRequest;
    :cond_0
    return-object v2
.end method

.method public getReportLocation()Z
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@2
    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/location/provider/ProviderRequestUnbundled;->mRequest:Lcom/android/internal/location/ProviderRequest;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
