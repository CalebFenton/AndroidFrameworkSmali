.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/TelephonyNetworkRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork;->$r8$lambda$f1cGYCkxPNBonOxt7kyVD4qHBoU(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method
