.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/telephony/emergency/EmergencyNumber;

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$3:Landroid/telephony/emergency/EmergencyNumber;

    iput-boolean p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$4:Z

    iput p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$5:I

    iput-object p7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$6:Lcom/android/internal/telephony/UUSInfo;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$0:Lcom/android/internal/telephony/RadioVoiceProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$3:Landroid/telephony/emergency/EmergencyNumber;

    iget-boolean v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$4:Z

    iget v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$5:I

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;->f$6:Lcom/android/internal/telephony/UUSInfo;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->$r8$lambda$ZyfSf1zYKRxRR379D0GGAwd3kPA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    return-void
.end method
