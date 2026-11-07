.class public final synthetic Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist handleResult([B)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->$r8$lambda$1ATmEr4p4fYk69DuGgUniIUrPfE(Ljava/lang/String;[B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
