.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda3;->f$0:Z

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda3;->f$0:Z

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->lambda$setWlcEnabled$38(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
