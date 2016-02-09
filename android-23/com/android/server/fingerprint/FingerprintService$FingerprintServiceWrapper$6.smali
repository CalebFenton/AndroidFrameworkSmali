.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->rename(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$fingerId:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$fingerId"    # I
    .param p3, "val$effectiveGroupId"    # I
    .param p4, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$fingerId:I

    #@4
    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$effectiveGroupId:I

    #@6
    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$name:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@a
    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@c
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$fingerId:I

    #@12
    .line 807
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$effectiveGroupId:I

    #@14
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;->val$name:Ljava/lang/String;

    #@16
    .line 806
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintUtils;->renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    #@19
    .line 805
    return-void
.end method
