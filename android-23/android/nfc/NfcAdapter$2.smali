.class Landroid/nfc/NfcAdapter$2;
.super Landroid/nfc/INfcUnlockHandler$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$unlockHandler:Landroid/nfc/NfcAdapter$NfcUnlockHandler;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/NfcAdapter;
    .param p2, "val$unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    #@0
    .prologue
    .line 1533
    iput-object p1, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    #@2
    iput-object p2, p0, Landroid/nfc/NfcAdapter$2;->val$unlockHandler:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    #@4
    invoke-direct {p0}, Landroid/nfc/INfcUnlockHandler$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onUnlockAttempted(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1536
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$unlockHandler:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    #@2
    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$NfcUnlockHandler;->onUnlockAttempted(Landroid/nfc/Tag;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
