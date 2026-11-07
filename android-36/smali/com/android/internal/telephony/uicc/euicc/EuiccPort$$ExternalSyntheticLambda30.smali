.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:[B

.field public final synthetic blacklist f$3:[B

.field public final synthetic blacklist f$4:[B

.field public final synthetic blacklist f$5:[B


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;[B[B[B[B)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$2:[B

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$3:[B

    iput-object p5, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$4:[B

    iput-object p6, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$5:[B

    return-void
.end method


# virtual methods
.method public final blacklist build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$0:Lcom/android/internal/telephony/uicc/euicc/EuiccPort;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$2:[B

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$3:[B

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$4:[B

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;->f$5:[B

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$LbmXvDgBmupXEH6V_fZy3d2TgMg(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method
