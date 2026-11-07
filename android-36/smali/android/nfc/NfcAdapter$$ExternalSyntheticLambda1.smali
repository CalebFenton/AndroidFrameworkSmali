.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:Landroid/nfc/Tag;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/nfc/ITagRemovedCallback$Stub;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/nfc/Tag;ILandroid/nfc/ITagRemovedCallback$Stub;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/nfc/Tag;

    iput p2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/nfc/ITagRemovedCallback$Stub;

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/nfc/Tag;

    iget v1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/nfc/ITagRemovedCallback$Stub;

    invoke-static {v0, v1, v2}, Landroid/nfc/NfcAdapter;->lambda$ignore$23(Landroid/nfc/Tag;ILandroid/nfc/ITagRemovedCallback$Stub;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
