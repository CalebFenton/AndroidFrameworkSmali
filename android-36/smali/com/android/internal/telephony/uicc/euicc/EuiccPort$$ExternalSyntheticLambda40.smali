.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist shouldContinue(Lcom/android/internal/telephony/uicc/IccIoResult;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$Wq1gvyXM7LhC7TZbCMXr_kujSzY(Lcom/android/internal/telephony/uicc/IccIoResult;)Z

    move-result p0

    return p0
.end method
