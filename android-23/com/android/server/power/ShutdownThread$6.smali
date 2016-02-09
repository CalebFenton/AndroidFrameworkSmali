.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$endTime"    # J
    .param p4, "val$timeout"    # I
    .param p5, "val$done"    # [Z

    #@0
    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    #@4
    iput p4, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    #@6
    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    #@8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    .line 505
    const-string/jumbo v10, "nfc"

    #@3
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v10

    #@7
    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    #@a
    move-result-object v5

    #@b
    .line 507
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v10, "phone"

    #@e
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11
    move-result-object v10

    #@12
    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@15
    move-result-object v7

    #@16
    .line 510
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v10, "bluetooth_manager"

    #@19
    .line 509
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1c
    move-result-object v10

    #@1d
    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v0

    #@21
    .line 513
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_8

    #@23
    .line 514
    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    #@26
    move-result v10

    #@27
    const/4 v11, 0x1

    #@28
    if-ne v10, v11, :cond_9

    #@2a
    const/4 v6, 0x1

    #@2b
    .line 515
    .local v6, "nfcOff":Z
    :goto_0
    if-nez v6, :cond_0

    #@2d
    .line 516
    const-string/jumbo v10, "ShutdownThread"

    #@30
    const-string/jumbo v11, "Turning off NFC..."

    #@33
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 517
    const/4 v10, 0x0

    #@37
    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 525
    :cond_0
    :goto_1
    if-eqz v0, :cond_a

    #@3c
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    #@3f
    move-result v10

    #@40
    if-eqz v10, :cond_a

    #@42
    const/4 v1, 0x0

    #@43
    .line 526
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_1

    #@45
    .line 527
    const-string/jumbo v10, "ShutdownThread"

    #@48
    const-string/jumbo v11, "Disabling Bluetooth..."

    #@4b
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 528
    const/4 v10, 0x0

    #@4f
    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@52
    .line 536
    :cond_1
    :goto_3
    if-eqz v7, :cond_b

    #@54
    :try_start_2
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_b

    #@5a
    const/4 v8, 0x0

    #@5b
    .line 537
    .local v8, "radioOff":Z
    :goto_4
    if-nez v8, :cond_2

    #@5d
    .line 538
    const-string/jumbo v10, "ShutdownThread"

    #@60
    const-string/jumbo v11, "Turning off cellular radios..."

    #@63
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 539
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@69
    .line 546
    :cond_2
    :goto_5
    const-string/jumbo v10, "ShutdownThread"

    #@6c
    const-string/jumbo v11, "Waiting for NFC, Bluetooth and Radio..."

    #@6f
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 548
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    #@74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@77
    move-result-wide v12

    #@78
    sub-long v2, v10, v12

    #@7a
    .line 549
    .local v2, "delay":J
    :goto_6
    const-wide/16 v10, 0x0

    #@7c
    cmp-long v10, v2, v10

    #@7e
    if-lez v10, :cond_7

    #@80
    .line 550
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Z

    #@83
    move-result v10

    #@84
    if-eqz v10, :cond_3

    #@86
    .line 551
    iget v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    #@88
    int-to-long v10, v10

    #@89
    sub-long/2addr v10, v2

    #@8a
    long-to-double v10, v10

    #@8b
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@8d
    mul-double/2addr v10, v12

    #@8e
    .line 552
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    #@90
    .line 551
    mul-double/2addr v10, v12

    #@91
    .line 552
    iget v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    #@93
    int-to-double v12, v12

    #@94
    .line 551
    div-double/2addr v10, v12

    #@95
    double-to-int v9, v10

    #@96
    .line 553
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    #@98
    .line 554
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    #@9b
    move-result-object v10

    #@9c
    const/4 v11, 0x0

    #@9d
    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    #@a0
    .line 557
    .end local v9    # "status":I
    :cond_3
    if-nez v1, :cond_4

    #@a2
    .line 559
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@a5
    move-result v10

    #@a6
    if-eqz v10, :cond_c

    #@a8
    const/4 v1, 0x0

    #@a9
    .line 564
    :goto_7
    if-eqz v1, :cond_4

    #@ab
    .line 565
    const-string/jumbo v10, "ShutdownThread"

    #@ae
    const-string/jumbo v11, "Bluetooth turned off."

    #@b1
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    .line 568
    :cond_4
    if-nez v8, :cond_5

    #@b6
    .line 570
    :try_start_4
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@b9
    move-result v10

    #@ba
    if-eqz v10, :cond_d

    #@bc
    const/4 v8, 0x0

    #@bd
    .line 575
    :goto_8
    if-eqz v8, :cond_5

    #@bf
    .line 576
    const-string/jumbo v10, "ShutdownThread"

    #@c2
    const-string/jumbo v11, "Radio turned off."

    #@c5
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 579
    :cond_5
    if-nez v6, :cond_6

    #@ca
    .line 581
    :try_start_5
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@cd
    move-result v10

    #@ce
    const/4 v11, 0x1

    #@cf
    if-ne v10, v11, :cond_e

    #@d1
    const/4 v6, 0x1

    #@d2
    .line 586
    :goto_9
    if-eqz v6, :cond_6

    #@d4
    .line 587
    const-string/jumbo v10, "ShutdownThread"

    #@d7
    const-string/jumbo v11, "NFC turned off."

    #@da
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    .line 591
    :cond_6
    if-eqz v8, :cond_f

    #@df
    if-eqz v1, :cond_f

    #@e1
    if-eqz v6, :cond_f

    #@e3
    .line 592
    const-string/jumbo v10, "ShutdownThread"

    #@e6
    const-string/jumbo v11, "NFC, Radio and Bluetooth shutdown complete."

    #@e9
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 593
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    #@ee
    const/4 v11, 0x1

    #@ef
    const/4 v12, 0x0

    #@f0
    aput-boolean v11, v10, v12

    #@f2
    .line 499
    :cond_7
    return-void

    #@f3
    .line 513
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_8
    const/4 v6, 0x1

    #@f4
    .restart local v6    # "nfcOff":Z
    goto/16 :goto_0

    #@f6
    .line 514
    .end local v6    # "nfcOff":Z
    :cond_9
    const/4 v6, 0x0

    #@f7
    .restart local v6    # "nfcOff":Z
    goto/16 :goto_0

    #@f9
    .line 519
    .end local v6    # "nfcOff":Z
    :catch_0
    move-exception v4

    #@fa
    .line 520
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@fd
    const-string/jumbo v11, "RemoteException during NFC shutdown"

    #@100
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@103
    .line 521
    const/4 v6, 0x1

    #@104
    .restart local v6    # "nfcOff":Z
    goto/16 :goto_1

    #@106
    .line 525
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_a
    const/4 v1, 0x1

    #@107
    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_2

    #@109
    .line 530
    .end local v1    # "bluetoothOff":Z
    :catch_1
    move-exception v4

    #@10a
    .line 531
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@10d
    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    #@110
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@113
    .line 532
    const/4 v1, 0x1

    #@114
    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_3

    #@116
    .line 536
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_b
    const/4 v8, 0x1

    #@117
    .restart local v8    # "radioOff":Z
    goto/16 :goto_4

    #@119
    .line 541
    .end local v8    # "radioOff":Z
    :catch_2
    move-exception v4

    #@11a
    .line 542
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@11d
    const-string/jumbo v11, "RemoteException during radio shutdown"

    #@120
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@123
    .line 543
    const/4 v8, 0x1

    #@124
    .restart local v8    # "radioOff":Z
    goto/16 :goto_5

    #@126
    .line 559
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_c
    const/4 v1, 0x1

    #@127
    goto :goto_7

    #@128
    .line 560
    :catch_3
    move-exception v4

    #@129
    .line 561
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@12c
    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    #@12f
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@132
    .line 562
    const/4 v1, 0x1

    #@133
    goto/16 :goto_7

    #@135
    .line 570
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_d
    const/4 v8, 0x1

    #@136
    goto :goto_8

    #@137
    .line 571
    :catch_4
    move-exception v4

    #@138
    .line 572
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@13b
    const-string/jumbo v11, "RemoteException during radio shutdown"

    #@13e
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@141
    .line 573
    const/4 v8, 0x1

    #@142
    goto/16 :goto_8

    #@144
    .line 581
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_e
    const/4 v6, 0x0

    #@145
    goto :goto_9

    #@146
    .line 582
    :catch_5
    move-exception v4

    #@147
    .line 583
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@14a
    const-string/jumbo v11, "RemoteException during NFC shutdown"

    #@14d
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@150
    .line 584
    const/4 v6, 0x1

    #@151
    goto :goto_9

    #@152
    .line 596
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    const-wide/16 v10, 0x1f4

    #@154
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    #@157
    .line 598
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    #@159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15c
    move-result-wide v12

    #@15d
    sub-long v2, v10, v12

    #@15f
    goto/16 :goto_6
.end method
