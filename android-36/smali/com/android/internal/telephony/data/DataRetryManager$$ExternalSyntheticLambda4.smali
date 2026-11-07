.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$UUIvSgaAON5yBXmuT5FhIDkhT9c(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method
