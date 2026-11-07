.class public final synthetic Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iput-wide p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    iget-wide v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;->$r8$lambda$S18AcTbDUKR2XNB4WnztI8lSOiE(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;J)V

    return-void
.end method
