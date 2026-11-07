.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Landroid/telephony/NetworkScanRequest;

.field public final synthetic blacklist f$3:Lcom/android/internal/telephony/HalVersion;

.field public final synthetic blacklist f$4:Landroid/os/Message;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$2:Landroid/telephony/NetworkScanRequest;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$3:Lcom/android/internal/telephony/HalVersion;

    iput-object p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$4:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$0:Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$2:Landroid/telephony/NetworkScanRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$3:Lcom/android/internal/telephony/HalVersion;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;->f$4:Landroid/os/Message;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$qaUkNQjw-_GRqycoI2N_umxA8kU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V

    return-void
.end method
