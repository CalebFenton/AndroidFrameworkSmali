.class public final synthetic Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Set;

.field public final synthetic blacklist f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final blacklist operate(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    invoke-static {v0, v1, p1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->lambda$onCarrierPrivilegesChanged$0(Ljava/util/Set;Ljava/util/Set;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    return-void
.end method
