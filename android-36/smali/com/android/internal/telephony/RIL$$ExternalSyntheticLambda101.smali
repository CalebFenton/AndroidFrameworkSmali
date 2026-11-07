.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioModemProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$0:Lcom/android/internal/telephony/RadioModemProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$2:I

    iput-boolean p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$3:Z

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$0:Lcom/android/internal/telephony/RadioModemProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$2:I

    iget-boolean p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$sfrG2X1BJa441j_qr1ekjyFDPNA(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;IZ)V

    return-void
.end method
