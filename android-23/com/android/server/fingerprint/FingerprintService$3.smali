.class Lcom/android/server/fingerprint/FingerprintService$3;
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
    .line 637
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->dispatchAcquired(JI)V

    #@5
    .line 645
    return-void
.end method

.method public onAuthenticated(JII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchAuthenticated(JII)V

    #@5
    .line 650
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    #@0
    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    move-wide v2, p1

    #@3
    move v4, p3

    #@4
    move v5, p4

    #@5
    move v6, p5

    #@6
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->dispatchEnrollResult(JIII)V

    #@9
    .line 640
    return-void
.end method

.method public onEnumerate(J[I[I)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchEnumerate(J[I[I)V

    #@5
    .line 665
    return-void
.end method

.method public onError(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->dispatchError(JI)V

    #@5
    .line 655
    return-void
.end method

.method public onRemoved(JII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->dispatchRemoved(JII)V

    #@5
    .line 660
    return-void
.end method
