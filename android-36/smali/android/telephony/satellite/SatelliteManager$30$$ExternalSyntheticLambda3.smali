.class public final synthetic Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    iput-boolean p2, p0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteManager$30$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/satellite/SatelliteManager$30;->lambda$onAccessAllowedStateChanged$0(Landroid/telephony/satellite/SatelliteCommunicationAccessStateCallback;Z)V

    return-void
.end method
