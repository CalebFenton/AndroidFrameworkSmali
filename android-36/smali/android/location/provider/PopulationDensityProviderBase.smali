.class public abstract Landroid/location/provider/PopulationDensityProviderBase;
.super Ljava/lang/Object;
.source "PopulationDensityProviderBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/PopulationDensityProviderBase$Service;,
        Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2CellIdsCallback;,
        Landroid/location/provider/PopulationDensityProviderBase$SingleUseS2LevelCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_POPULATION_DENSITY_PROVIDER:Ljava/lang/String; = "com.android.location.service.PopulationDensityProvider"


# instance fields
.field final blacklist mAttributionTag:Ljava/lang/String;

.field final blacklist mBinder:Landroid/os/IBinder;

.field final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Landroid/location/provider/PopulationDensityProviderBase;->mTag:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase;->mAttributionTag:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/location/provider/PopulationDensityProviderBase$Service;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/provider/PopulationDensityProviderBase$Service;-><init>(Landroid/location/provider/PopulationDensityProviderBase;Landroid/location/provider/PopulationDensityProviderBase-IA;)V

    iput-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase;->mBinder:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/location/provider/PopulationDensityProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract whitelist onGetCoarsenedS2Cells(DDILandroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/os/OutcomeReceiver<",
            "[J",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetDefaultCoarseningLevel(Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
