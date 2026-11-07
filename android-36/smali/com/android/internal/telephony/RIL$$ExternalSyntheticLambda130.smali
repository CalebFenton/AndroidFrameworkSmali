.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RIL;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RadioNetworkProxy;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/RILRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;->f$0:Lcom/android/internal/telephony/RIL;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;->f$1:Lcom/android/internal/telephony/RadioNetworkProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;->f$2:Lcom/android/internal/telephony/RILRequest;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;->f$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;->f$1:Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;->f$2:Lcom/android/internal/telephony/RILRequest;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$8a5R0b5ALIXeEWRY4vjOEiL7Qq8(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method
