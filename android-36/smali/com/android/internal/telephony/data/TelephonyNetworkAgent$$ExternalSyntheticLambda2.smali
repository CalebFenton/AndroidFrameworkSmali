.class public final synthetic Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->$r8$lambda$P35YRszlncMOvDrDHjqMI5BUgzU(ILcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-void
.end method
