.class Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;
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
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap3(Landroid/hardware/fingerprint/FingerprintManager;)V

    #@5
    .line 183
    return-void
.end method
