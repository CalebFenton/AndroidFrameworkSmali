.class Lcom/android/server/fingerprint/FingerprintService$5$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onRemoved(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$5;
    .param p2, "val$deviceId"    # J
    .param p4, "val$fingerId"    # I
    .param p5, "val$groupId"    # I

    #@0
    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    #@2
    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->val$deviceId:J

    #@4
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->val$fingerId:I

    #@6
    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->val$groupId:I

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
    .line 696
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->val$deviceId:J

    #@6
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->val$fingerId:I

    #@8
    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$5;->val$groupId:I

    #@a
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleRemoved(JII)V

    #@d
    .line 695
    return-void
.end method
