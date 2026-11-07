.class public final synthetic Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 2

    .line 0
    iget v0, p0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda4;->f$0:I

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->lambda$setControllerAlwaysOnMode$7(I)V

    return-void
.end method
