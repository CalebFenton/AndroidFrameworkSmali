.class public final synthetic Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist operate(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Landroid/location/LocationListener;

    invoke-static {v0, p1}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onFlushComplete$2(ILandroid/location/LocationListener;)V

    return-void
.end method
