.class Lcom/android/server/fingerprint/FingerprintService$5$6;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onEnumerate(J[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerIds:[I

.field final synthetic val$groupIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;J[I[I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$5;
    .param p2, "val$deviceId"    # J
    .param p4, "val$fingerIds"    # [I
    .param p5, "val$groupIds"    # [I

    #@0
    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    #@2
    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->val$deviceId:J

    #@4
    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->val$fingerIds:[I

    #@6
    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->val$groupIds:[I

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
    .line 665
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->val$deviceId:J

    #@6
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->val$fingerIds:[I

    #@8
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$6;->val$groupIds:[I

    #@a
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleEnumerate(J[I[I)V

    #@d
    .line 664
    return-void
.end method
