.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    check-cast p1, Landroid/telephony/satellite/ISatelliteModemStateCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->$r8$lambda$txPc91CQN_C6IjHtdjmjMX02USQ(Lcom/android/internal/telephony/satellite/SatelliteSessionController;ZLjava/util/List;Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    return-void
.end method
