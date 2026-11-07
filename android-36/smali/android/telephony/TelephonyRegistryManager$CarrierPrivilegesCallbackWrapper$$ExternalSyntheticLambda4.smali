.class public final synthetic Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

.field public final synthetic blacklist f$1:Ljava/util/Set;

.field public final synthetic blacklist f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iput-object p3, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->$r8$lambda$lEgcXNbXdvgEjTZJgudwLqN4fsU(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method
