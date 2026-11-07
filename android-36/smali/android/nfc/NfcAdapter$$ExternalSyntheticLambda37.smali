.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda37;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda37;->f$0:I

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->lambda$getTagIntentAppPreferenceForUser$33(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
