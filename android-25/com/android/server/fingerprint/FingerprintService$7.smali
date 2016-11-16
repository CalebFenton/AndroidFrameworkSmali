.class Lcom/android/server/fingerprint/FingerprintService$7;
.super Lcom/android/server/fingerprint/AuthenticationClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # J
    .param p5, "$anonymous2"    # Landroid/os/IBinder;
    .param p6, "$anonymous3"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "$anonymous4"    # I
    .param p8, "$anonymous5"    # I
    .param p9, "$anonymous6"    # J
    .param p11, "$anonymous7"    # Z
    .param p12, "$anonymous8"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-wide/from16 v2, p3

    #@6
    move-object/from16 v4, p5

    #@8
    move-object/from16 v5, p6

    #@a
    move/from16 v6, p7

    #@c
    move/from16 v7, p8

    #@e
    move-wide/from16 v8, p9

    #@10
    move/from16 v10, p11

    #@12
    move-object/from16 v11, p12

    #@14
    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/AuthenticationClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V

    #@17
    .line 542
    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public handleFailedAttempt()Z
    .locals 2

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->-set1(Lcom/android/server/fingerprint/FingerprintService;I)I

    #@b
    .line 546
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@d
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x5

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 547
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@16
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get10(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    #@19
    move-result-object v0

    #@1a
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    iput v1, v0, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    #@20
    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@22
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap1(Lcom/android/server/fingerprint/FingerprintService;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 551
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2a
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap5(Lcom/android/server/fingerprint/FingerprintService;)V

    #@2d
    .line 552
    const/4 v0, 0x1

    #@2e
    return v0

    #@2f
    .line 554
    :cond_1
    const/4 v0, 0x0

    #@30
    return v0
.end method

.method public notifyUserActivity()V
    .locals 1

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap10(Lcom/android/server/fingerprint/FingerprintService;)V

    #@5
    .line 563
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 1

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    #@5
    .line 558
    return-void
.end method
