.class public abstract Landroid/location/provider/GeocodeProviderBase;
.super Ljava/lang/Object;
.source "GeocodeProviderBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/GeocodeProviderBase$Service;,
        Landroid/location/provider/GeocodeProviderBase$SingleUseCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_GEOCODE_PROVIDER:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"


# instance fields
.field final blacklist mAttributionTag:Ljava/lang/String;

.field final blacklist mBinder:Landroid/os/IBinder;

.field final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Landroid/location/provider/GeocodeProviderBase;->mTag:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/provider/GeocodeProviderBase;->mAttributionTag:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/location/provider/GeocodeProviderBase$Service;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/provider/GeocodeProviderBase$Service;-><init>(Landroid/location/provider/GeocodeProviderBase;Landroid/location/provider/GeocodeProviderBase-IA;)V

    iput-object v0, p0, Landroid/location/provider/GeocodeProviderBase;->mBinder:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/location/provider/GeocodeProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract whitelist onForwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ForwardGeocodeRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onReverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/provider/ReverseGeocodeRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
