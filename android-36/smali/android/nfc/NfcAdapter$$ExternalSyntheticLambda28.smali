.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCallReturn;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist call()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Landroid/nfc/NfcAdapter;->lambda$isControllerAlwaysOnSupported$31()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
