.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$2:Z

    return-void
.end method


# virtual methods
.method public final blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;->f$2:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$YZwVIw_bDHF3Dhd-wpXUmMJ57JA(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
