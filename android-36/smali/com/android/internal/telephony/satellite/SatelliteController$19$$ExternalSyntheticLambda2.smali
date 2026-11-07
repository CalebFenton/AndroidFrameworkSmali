.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteController$19;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController$19;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController$19;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/satellite/SatelliteController$19;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController$19;->$r8$lambda$wLIdHEG-OteVQFjn8xLxcTyeKvo(Lcom/android/internal/telephony/satellite/SatelliteController$19;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
