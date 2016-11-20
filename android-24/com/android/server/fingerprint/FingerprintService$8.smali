.class Lcom/android/server/fingerprint/FingerprintService$8;
.super Lcom/android/server/fingerprint/EnrollClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # J
    .param p5, "$anonymous2"    # Landroid/os/IBinder;
    .param p6, "$anonymous3"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "$anonymous4"    # I
    .param p8, "$anonymous5"    # I
    .param p9, "$anonymous6"    # [B
    .param p10, "$anonymous7"    # Z
    .param p11, "$anonymous8"    # Ljava/lang/String;

    #@0
    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$8;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-wide v2, p3

    #@5
    move-object/from16 v4, p5

    #@7
    move-object/from16 v5, p6

    #@9
    move/from16 v6, p7

    #@b
    move/from16 v7, p8

    #@d
    move-object/from16 v8, p9

    #@f
    move/from16 v9, p10

    #@11
    move-object/from16 v10, p11

    #@13
    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/EnrollClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V

    #@16
    .line 551
    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$8;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public notifyUserActivity()V
    .locals 1

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$8;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    #@2
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap10(Lcom/android/server/fingerprint/FingerprintService;)V

    #@5
    .line 559
    return-void
.end method
