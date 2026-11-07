.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:[I

.field public final synthetic blacklist f$6:[I

.field public final synthetic blacklist f$7:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;III[I[II)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$2:I

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$3:I

    iput p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$4:I

    iput-object p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$5:[I

    iput-object p7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$6:[I

    iput p8, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$7:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$2:I

    iget v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$3:I

    iget v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$4:I

    iget-object v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$5:[I

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$6:[I

    iget v7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;->f$7:I

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/RIL;->$r8$lambda$xH5_x2jcdkDZ7CRoyCWD4Zkwnoo(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;III[I[II)V

    return-void
.end method
