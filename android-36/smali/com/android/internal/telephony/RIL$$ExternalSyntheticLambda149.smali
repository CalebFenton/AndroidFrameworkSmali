.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioMessagingProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;->f$0:Lcom/android/internal/telephony/RadioMessagingProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;->f$0:Lcom/android/internal/telephony/RadioMessagingProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$hbGdV0RZR2ifGxdq0_GQbdXek-8(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void
.end method
