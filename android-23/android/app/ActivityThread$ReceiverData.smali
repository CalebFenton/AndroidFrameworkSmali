.class final Landroid/app/ActivityThread$ReceiverData;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverData"
.end annotation


# instance fields
.field compatInfo:Landroid/content/res/CompatibilityInfo;

.field info:Landroid/content/pm/ActivityInfo;

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "sendingUser"    # I

    #@0
    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@3
    move-result v9

    #@4
    .line 377
    const/4 v4, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p2

    #@7
    move-object v2, p3

    #@8
    move-object v3, p4

    #@9
    move v5, p5

    #@a
    move/from16 v6, p6

    #@c
    move-object/from16 v7, p7

    #@e
    move/from16 v8, p8

    #@10
    invoke-direct/range {v0 .. v9}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    #@13
    .line 379
    iput-object p1, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@15
    .line 376
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ReceiverData{intent="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " packageName="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 387
    iget-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    #@1b
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 387
    const-string/jumbo v1, " resultCode="

    #@24
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 387
    invoke-virtual {p0}, Landroid/app/ActivityThread$ReceiverData;->getResultCode()I

    #@2b
    move-result v1

    #@2c
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 388
    const-string/jumbo v1, " resultData="

    #@33
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 388
    invoke-virtual {p0}, Landroid/app/ActivityThread$ReceiverData;->getResultData()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 388
    const-string/jumbo v1, " resultExtras="

    #@42
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 389
    const/4 v1, 0x0

    #@47
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread$ReceiverData;->getResultExtras(Z)Landroid/os/Bundle;

    #@4a
    move-result-object v1

    #@4b
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 389
    const-string/jumbo v1, "}"

    #@52
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    return-object v0
.end method
