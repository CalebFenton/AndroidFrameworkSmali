.class Landroid/location/LocationManager$LocationEnabledCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationEnabledCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mManager:Landroid/location/ILocationManager;


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "numEntries"    # I

    .line 3706
    invoke-static {}, Landroid/location/LocationManager;->-$$Nest$sfgetCACHE_KEY_LOCATION_ENABLED_PROPERTY()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    .line 3707
    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 3711
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 3713
    iget-object v0, p0, Landroid/location/LocationManager$LocationEnabledCache;->mManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_1b

    .line 3715
    :try_start_10
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$LocationEnabledCache;->mManager:Landroid/location/ILocationManager;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    .line 3718
    goto :goto_1b

    .line 3716
    :catch_17
    move-exception v0

    .line 3717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3722
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Landroid/location/LocationManager$LocationEnabledCache;->mManager:Landroid/location/ILocationManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isLocationEnabledForUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2a

    return-object v0

    .line 3723
    :catch_2a
    move-exception v0

    .line 3724
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3698
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$LocationEnabledCache;->recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
