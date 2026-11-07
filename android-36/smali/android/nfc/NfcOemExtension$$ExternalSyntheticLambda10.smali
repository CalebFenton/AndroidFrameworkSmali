.class public final synthetic Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:J


# direct methods
.method public synthetic constructor blacklist <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda10;->f$0:J

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-wide v0, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda10;->f$0:J

    invoke-static {v0, v1}, Landroid/nfc/NfcOemExtension;->lambda$pausePolling$11(J)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
