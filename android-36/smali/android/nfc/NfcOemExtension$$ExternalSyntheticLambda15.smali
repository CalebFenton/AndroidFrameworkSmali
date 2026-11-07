.class public final synthetic Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda15;->f$0:Z

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda15;->f$0:Z

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->lambda$setAutoChangeEnabled$14(Z)V

    return-void
.end method
