.class Landroid/nfc/NfcAdapter$1;
.super Landroid/nfc/ITagRemovedCallback$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/nfc/NfcAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2204
    iput-object p2, p0, Landroid/nfc/NfcAdapter$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/nfc/NfcAdapter$1;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-direct {p0}, Landroid/nfc/ITagRemovedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTagRemoved()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    iget-object v0, p0, Landroid/nfc/NfcAdapter$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 2208
    iget-object v0, p0, Landroid/nfc/NfcAdapter$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/nfc/NfcAdapter$1$1;

    invoke-direct {v1, p0}, Landroid/nfc/NfcAdapter$1$1;-><init>(Landroid/nfc/NfcAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 2215
    :cond_f
    iget-object v0, p0, Landroid/nfc/NfcAdapter$1;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$OnTagRemovedListener;->onTagRemoved()V

    .line 2217
    :goto_14
    return-void
.end method
