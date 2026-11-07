.class public final synthetic Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/HealthConnectManager$1;

.field public final synthetic blacklist f$1:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$2:Ljava/util/List;

.field public final synthetic blacklist f$3:Landroid/health/connect/aidl/InsertRecordsResponseParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/HealthConnectManager$1;Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/HealthConnectManager$1;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iput-object p3, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$3:Landroid/health/connect/aidl/InsertRecordsResponseParcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/HealthConnectManager$1;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/OutcomeReceiver;

    iget-object v2, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Landroid/health/connect/HealthConnectManager$1$$ExternalSyntheticLambda0;->f$3:Landroid/health/connect/aidl/InsertRecordsResponseParcel;

    invoke-static {v0, v1, v2, v3}, Landroid/health/connect/HealthConnectManager$1;->$r8$lambda$8L3UEOQowjFiFp2gV1otqNZN1nI(Landroid/health/connect/HealthConnectManager$1;Landroid/os/OutcomeReceiver;Ljava/util/List;Landroid/health/connect/aidl/InsertRecordsResponseParcel;)V

    return-void
.end method
