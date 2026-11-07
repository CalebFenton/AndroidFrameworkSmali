.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:[I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;[II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$2:[I

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$2:[I

    iget p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$rA9oyKKZ_0q4O3EJ0FFhyZS-bew(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;[II)V

    return-void
.end method
