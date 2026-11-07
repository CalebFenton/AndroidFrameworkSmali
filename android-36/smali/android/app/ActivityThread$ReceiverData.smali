.class public final Landroid/app/ActivityThread$ReceiverData;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiverData"
.end annotation


# instance fields
.field greylist compatInfo:Landroid/content/res/CompatibilityInfo;

.field greylist info:Landroid/content/pm/ActivityInfo;

.field final greylist intent:Landroid/content/Intent;

.field final blacklist mOptions:Landroid/app/ActivityOptions;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZLandroid/os/IBinder;IILjava/lang/String;)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "assumeDelivered"    # Z
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "sendingUser"    # I
    .param p10, "sendingUid"    # I
    .param p11, "sendingPackage"    # Ljava/lang/String;

    .line 873
    nop

    .line 874
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 873
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZZLandroid/os/IBinder;IIILjava/lang/String;)V

    .line 876
    iput-object p1, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 877
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->supportWidgetIntentsOnConnectedDisplay()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 878
    invoke-static/range {p4 .. p4}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_2f

    .line 880
    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->mOptions:Landroid/app/ActivityOptions;

    .line 882
    :goto_2f
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverData{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Landroid/app/ActivityThread$ReceiverData;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 896
    invoke-virtual {p0}, Landroid/app/ActivityThread$ReceiverData;->getResultData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 897
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread$ReceiverData;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sentFromUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 898
    invoke-virtual {p0}, Landroid/app/ActivityThread$ReceiverData;->getSentFromUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sentFromPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread$ReceiverData;->getSentFromPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ReceiverData;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    return-object v0
.end method
