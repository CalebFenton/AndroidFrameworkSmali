.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    check-cast p1, Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$FCIQMqnYU4mkpz1hRCPzG_2Ksqc(Lcom/android/internal/telephony/satellite/SatelliteController;Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V

    return-void
.end method
