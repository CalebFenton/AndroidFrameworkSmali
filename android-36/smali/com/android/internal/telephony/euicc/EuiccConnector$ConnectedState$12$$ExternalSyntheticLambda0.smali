.class public final synthetic Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;->$r8$lambda$5OnGTWvk7YFNjgouVN062-spyfk(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    return-void
.end method
