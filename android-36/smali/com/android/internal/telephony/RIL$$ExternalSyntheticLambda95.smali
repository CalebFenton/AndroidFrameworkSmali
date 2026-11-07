.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RIL;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RadioMessagingProxy;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$0:Lcom/android/internal/telephony/RIL;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$1:Lcom/android/internal/telephony/RadioMessagingProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$2:Lcom/android/internal/telephony/RILRequest;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$5:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$1:Lcom/android/internal/telephony/RadioMessagingProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$2:Lcom/android/internal/telephony/RILRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;->f$5:Landroid/os/Message;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->$r8$lambda$ZrZuMsHX05le24Iv9vpcbU4kYdQ(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
