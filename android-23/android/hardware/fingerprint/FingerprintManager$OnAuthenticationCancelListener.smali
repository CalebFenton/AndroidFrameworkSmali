.class Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private mCrypto:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@0
    .prologue
    .line 189
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 190
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mCrypto:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@7
    .line 189
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;->mCrypto:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@4
    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap2(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    #@7
    .line 194
    return-void
.end method
