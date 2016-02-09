.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$opId:J

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$token"    # Landroid/os/IBinder;
    .param p3, "val$opId"    # J
    .param p5, "val$effectiveGroupId"    # I
    .param p6, "val$receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "val$flags"    # I
    .param p8, "val$restricted"    # Z

    #@0
    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    #@4
    iput-wide p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    #@6
    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$effectiveGroupId:I

    #@8
    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@a
    iput p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    #@c
    iput-boolean p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$token:Landroid/os/IBinder;

    #@6
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$opId:J

    #@8
    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$effectiveGroupId:I

    #@a
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c
    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$flags:I

    #@e
    iget-boolean v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->val$restricted:Z

    #@10
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@13
    .line 751
    return-void
.end method
