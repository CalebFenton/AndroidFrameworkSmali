.class public final synthetic Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/LocationManager$GnssNmeaTransport$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Landroid/location/OnNmeaMessageListener;

    invoke-static {v0, v1, v2, p1}, Landroid/location/LocationManager$GnssNmeaTransport;->lambda$onNmeaReceived$0(Ljava/lang/String;JLandroid/location/OnNmeaMessageListener;)V

    return-void
.end method
