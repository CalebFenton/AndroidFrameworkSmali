.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$token"    # Landroid/os/IBinder;
    .param p3, "val$fingerId"    # I
    .param p4, "val$groupId"    # I
    .param p5, "val$userId"    # I
    .param p6, "val$receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "val$restricted"    # Z

    #@0
    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$token:Landroid/os/IBinder;

    #@4
    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$fingerId:I

    #@6
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$groupId:I

    #@8
    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$userId:I

    #@a
    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@c
    iput-boolean p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$restricted:Z

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
    .line 804
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$token:Landroid/os/IBinder;

    #@6
    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$fingerId:I

    #@8
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$groupId:I

    #@a
    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$userId:I

    #@c
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@e
    iget-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$restricted:Z

    #@10
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    #@13
    .line 803
    return-void
.end method
