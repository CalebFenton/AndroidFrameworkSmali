.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-boolean p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;->f$2:Z

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-boolean p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$bL2LsLHMpSYT9WOYHuE6LKquUSs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    return-void
.end method
