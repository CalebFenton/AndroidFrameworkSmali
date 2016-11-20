.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$cryptoToken:[B

.field final synthetic val$flags:I

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$token"    # Landroid/os/IBinder;
    .param p3, "val$cryptoToken"    # [B
    .param p4, "val$userId"    # I
    .param p5, "val$receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "val$flags"    # I
    .param p7, "val$restricted"    # Z
    .param p8, "val$opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$token:Landroid/os/IBinder;

    #@4
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$cryptoToken:[B

    #@6
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$userId:I

    #@8
    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@a
    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$flags:I

    #@c
    iput-boolean p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$restricted:Z

    #@e
    iput-object p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$opPackageName:Ljava/lang/String;

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$token:Landroid/os/IBinder;

    #@6
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$cryptoToken:[B

    #@8
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$userId:I

    #@a
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c
    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$flags:I

    #@e
    .line 709
    iget-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$restricted:Z

    #@10
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$opPackageName:Ljava/lang/String;

    #@12
    .line 708
    invoke-static/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->-wrap8(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    #@15
    .line 707
    return-void
.end method
