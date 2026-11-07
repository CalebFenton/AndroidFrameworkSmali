.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioDataProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;IJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$2:I

    iput-wide p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$3:J

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$2:I

    iget-wide v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/RIL;->$r8$lambda$fxAPXytDu-JsL7L5BNTIjmmBs6Q(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;IJ)V

    return-void
.end method
