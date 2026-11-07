.class public abstract Landroid/location/provider/GnssAssistanceProviderBase;
.super Ljava/lang/Object;
.source "GnssAssistanceProviderBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/GnssAssistanceProviderBase$Service;,
        Landroid/location/provider/GnssAssistanceProviderBase$SingleUseCallback;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GNSS_ASSISTANCE_PROVIDER:Ljava/lang/String; = "android.location.provider.action.GNSS_ASSISTANCE_PROVIDER"


# instance fields
.field final blacklist mAttributionTag:Ljava/lang/String;

.field final blacklist mBinder:Landroid/os/IBinder;

.field final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Landroid/location/provider/GnssAssistanceProviderBase;->mTag:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase;->mAttributionTag:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/location/provider/GnssAssistanceProviderBase$Service;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/provider/GnssAssistanceProviderBase$Service;-><init>(Landroid/location/provider/GnssAssistanceProviderBase;Landroid/location/provider/GnssAssistanceProviderBase-IA;)V

    iput-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase;->mBinder:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public final blacklist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/location/provider/GnssAssistanceProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract blacklist onRequest(Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/GnssAssistance;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
