.class Lcom/android/server/fingerprint/FingerprintService$5;
.super Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    #@0
    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$5$2;

    #@8
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$5$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JI)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 662
    return-void
.end method

.method public onAuthenticated(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v6

    #@6
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$3;

    #@8
    move-object v1, p0

    #@9
    move-wide v2, p1

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V

    #@f
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 672
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v7

    #@6
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$1;

    #@8
    move-object v1, p0

    #@9
    move-wide v2, p1

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    move v6, p5

    #@d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$5$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JIII)V

    #@10
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@13
    .line 652
    return-void
.end method

.method public onEnumerate(J[I[I)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    #@0
    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v6

    #@6
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$6;

    #@8
    move-object v1, p0

    #@9
    move-wide v2, p1

    #@a
    move-object v4, p3

    #@b
    move-object v5, p4

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;J[I[I)V

    #@f
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 702
    return-void
.end method

.method public onError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$5$4;

    #@8
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$5$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JI)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 682
    return-void
.end method

.method public onRemoved(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    #@5
    move-result-object v6

    #@6
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$5;

    #@8
    move-object v1, p0

    #@9
    move-wide v2, p1

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V

    #@f
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 692
    return-void
.end method
