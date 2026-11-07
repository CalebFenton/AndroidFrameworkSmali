.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;->f$1:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$UwHzxSO00TZ4wbgZU7r72R8TAbE(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method
