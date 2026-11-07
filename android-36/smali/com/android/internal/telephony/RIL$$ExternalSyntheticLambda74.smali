.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Ljava/lang/String;

.field public final synthetic blacklist f$6:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IIILjava/lang/String;I)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$2:I

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$3:I

    iput p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$4:I

    iput-object p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$6:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$2:I

    iget v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$3:I

    iget v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$4:I

    iget-object v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$5:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;->f$6:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->$r8$lambda$gh4_mb-bwd3xWxFI0HwukutIxFY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IIILjava/lang/String;I)V

    return-void
.end method
