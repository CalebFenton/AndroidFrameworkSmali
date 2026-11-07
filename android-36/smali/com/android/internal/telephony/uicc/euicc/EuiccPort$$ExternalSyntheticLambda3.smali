.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist handleResult([B)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$afNLL9rQqoO4vmChvNCa9p114-w([B)[Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0
.end method
