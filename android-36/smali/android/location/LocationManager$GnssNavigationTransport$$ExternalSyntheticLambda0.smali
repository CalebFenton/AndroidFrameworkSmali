.class public final synthetic Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/location/GnssNavigationMessage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/GnssNavigationMessage;

    check-cast p1, Landroid/location/GnssNavigationMessage$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssNavigationTransport;->lambda$onGnssNavigationMessageReceived$0(Landroid/location/GnssNavigationMessage;Landroid/location/GnssNavigationMessage$Callback;)V

    return-void
.end method
