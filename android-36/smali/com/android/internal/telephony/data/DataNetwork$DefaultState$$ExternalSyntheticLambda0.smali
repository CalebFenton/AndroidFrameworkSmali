.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    return-void
.end method


# virtual methods
.method public final whitelist onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->$r8$lambda$VRDaNMdJoS7adXKIQGuVWyce4D0(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method
