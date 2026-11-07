.class public final synthetic Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/android/net/QosCallbackConnection;

.field public final synthetic blacklist f$1:Landroid/net/QosSession;

.field public final synthetic blacklist f$2:Landroid/telephony/data/NrQosSessionAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;->f$0:Landroid/net/connectivity/android/net/QosCallbackConnection;

    iput-object p2, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;->f$1:Landroid/net/QosSession;

    iput-object p3, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;->f$2:Landroid/telephony/data/NrQosSessionAttributes;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;->f$0:Landroid/net/connectivity/android/net/QosCallbackConnection;

    iget-object v1, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;->f$1:Landroid/net/QosSession;

    iget-object v2, p0, Landroid/net/connectivity/android/net/QosCallbackConnection$$ExternalSyntheticLambda3;->f$2:Landroid/telephony/data/NrQosSessionAttributes;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/android/net/QosCallbackConnection;->$r8$lambda$_2fMoWJ5uD2K6CKHslpc4akt5YA(Landroid/net/connectivity/android/net/QosCallbackConnection;Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V

    return-void
.end method
