.class Lcom/android/server/fingerprint/FingerprintService$5$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onError(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;

.field final synthetic val$deviceId:J

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;JI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$5;
    .param p2, "val$deviceId"    # J
    .param p4, "val$error"    # I

    #@0
    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    #@2
    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$deviceId:J

    #@4
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$error:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    #@2
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@4
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$deviceId:J

    #@6
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$4;->val$error:I

    #@8
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    #@b
    .line 644
    return-void
.end method
