.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;->f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;->f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$RCiDpDPuCMwZfE5txSNSnzuoLbs(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method
