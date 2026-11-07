.class public final synthetic Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;


# direct methods
.method public synthetic constructor blacklist <init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;->f$0:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;->f$0:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->$r8$lambda$jIVIyR5_QDCyu1vz6MGFBTezZuU([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)Z

    move-result p0

    return p0
.end method
