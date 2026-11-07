.class public final synthetic Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(IZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;->f$0:I

    iput-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;->f$1:Z

    iput p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;->f$0:I

    iget-boolean v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;->f$1:Z

    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->$r8$lambda$OCX8naQrMDGWkMET-bVcRig-zrc(IZILandroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
