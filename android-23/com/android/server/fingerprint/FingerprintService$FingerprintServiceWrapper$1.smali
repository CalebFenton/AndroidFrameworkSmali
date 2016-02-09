.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$cryptoClone:[B

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$token"    # Landroid/os/IBinder;
    .param p3, "val$cryptoClone"    # [B
    .param p4, "val$effectiveGroupId"    # I
    .param p5, "val$receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "val$flags"    # I
    .param p7, "val$restricted"    # Z

    #@0
    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$token:Landroid/os/IBinder;

    #@4
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$cryptoClone:[B

    #@6
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$effectiveGroupId:I

    #@8
    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@a
    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$flags:I

    #@c
    iput-boolean p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$restricted:Z

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$token:Landroid/os/IBinder;

    #@6
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$cryptoClone:[B

    #@8
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$effectiveGroupId:I

    #@a
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c
    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$flags:I

    #@e
    iget-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$restricted:Z

    #@10
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@13
    .line 708
    return-void
.end method
