.class Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SatelliteSubscriptionsChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1043
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 1

    .line 1051
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$SatelliteSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mhandleSubscriptionsChanged(Lcom/android/internal/telephony/satellite/SatelliteController;)V

    return-void
.end method
