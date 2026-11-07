.class public final synthetic Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->$r8$lambda$eP1_3Gpuq9JtXhixMlcGuZpCuEc(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;)V

    return-void
.end method
