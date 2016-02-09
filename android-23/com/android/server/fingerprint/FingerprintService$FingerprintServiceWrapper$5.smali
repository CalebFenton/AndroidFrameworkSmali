.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$fingerId:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$token"    # Landroid/os/IBinder;
    .param p3, "val$fingerId"    # I
    .param p4, "val$effectiveGroupId"    # I
    .param p5, "val$receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "val$restricted"    # Z

    #@0
    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$token:Landroid/os/IBinder;

    #@4
    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$fingerId:I

    #@6
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$effectiveGroupId:I

    #@8
    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@a
    iput-boolean p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$restricted:Z

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$token:Landroid/os/IBinder;

    #@6
    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$fingerId:I

    #@8
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$effectiveGroupId:I

    #@a
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c
    iget-boolean v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$restricted:Z

    #@e
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    #@11
    .line 781
    return-void
.end method
