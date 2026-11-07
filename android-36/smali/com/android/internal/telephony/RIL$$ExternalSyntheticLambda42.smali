.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;II)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$3:I

    iput p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$4:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$3:I

    iget p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$oeDXIqcmCu6WJ-p4CKXqMuRZvrI(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;II)V

    return-void
.end method
