.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/data/DataProfile;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;->f$0:Landroid/telephony/data/DataProfile;

    iput p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;->f$0:Landroid/telephony/data/DataProfile;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;->f$1:I

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$cSvEBxwQN_CNpUcZwAn5UkAVs2A(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p0

    return p0
.end method
