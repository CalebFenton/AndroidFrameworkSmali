.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;->f$1:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;

    return-void
.end method


# virtual methods
.method public final blacklist buildRequest([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;->f$1:Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$35G6DxPAOLGe7drowgjl2vdkz2o(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
