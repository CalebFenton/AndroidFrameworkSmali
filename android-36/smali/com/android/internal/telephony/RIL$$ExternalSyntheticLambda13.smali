.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;ZI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-boolean p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$2:Z

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$2:Z

    iget p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$_E0ueja0SYQnOPL-6XKpRB2abCE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;ZI)V

    return-void
.end method
