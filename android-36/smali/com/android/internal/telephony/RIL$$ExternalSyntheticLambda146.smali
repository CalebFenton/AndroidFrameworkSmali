.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioDataProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Landroid/telephony/data/DataProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/data/DataProfile;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;->f$2:Landroid/telephony/data/DataProfile;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;->f$2:Landroid/telephony/data/DataProfile;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$xA8dMP5xOhcAX3-sEQ_uZ8huXoU(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/data/DataProfile;)V

    return-void
.end method
