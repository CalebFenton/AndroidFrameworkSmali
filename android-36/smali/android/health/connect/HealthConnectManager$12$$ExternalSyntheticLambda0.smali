.class public final synthetic Landroid/health/connect/HealthConnectManager$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/HealthConnectManager$12$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/health/connect/HealthConnectManager$12$$ExternalSyntheticLambda0;->f$1:Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/HealthConnectManager$12$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/health/connect/HealthConnectManager$12$$ExternalSyntheticLambda0;->f$1:Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;

    invoke-static {v0, v1}, Landroid/health/connect/HealthConnectManager$12;->lambda$onResult$0(Landroid/os/OutcomeReceiver;Landroid/health/connect/aidl/RecordTypeInfoResponseParcel;)V

    return-void
.end method
