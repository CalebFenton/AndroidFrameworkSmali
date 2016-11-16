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
    .line 519
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
    .line 526
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
    .line 528
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
    .line 531
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v10, "bluetooth_manager"

    #@19
    .line 530
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1c
    move-result-object v10

    #@1d
    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    #@20
    move-result-object v0

    #@21
    .line 534
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_8

    #@23
    .line 535
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
    .line 536
    .local v6, "nfcOff":Z
    :goto_0
    if-nez v6, :cond_0

    #@2d
    .line 537
    const-string/jumbo v10, "ShutdownThread"

    #@30
    const-string/jumbo v11, "Turning off NFC..."

    #@33
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 538
    const/4 v10, 0x0

    #@37
    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 546
    :cond_0
    :goto_1
    if-eqz v0, :cond_a

    #@3c
    .line 547
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I

    #@3f
    move-result v10

    #@40
    const/16 v11, 0xa

    #@42
    if-ne v10, v11, :cond_b

    #@44
    const/4 v1, 0x1

    #@45
    .line 548
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_1

    #@47
    .line 549
    const-string/jumbo v10, "ShutdownThread"

    #@4a
    const-string/jumbo v11, "Disabling Bluetooth..."

    #@4d
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 550
    const/4 v10, 0x0

    #@51
    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@54
    .line 558
    :cond_1
    :goto_3
    if-eqz v7, :cond_c

    #@56
    :try_start_2
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_c

    #@5c
    const/4 v8, 0x0

    #@5d
    .line 559
    .local v8, "radioOff":Z
    :goto_4
    if-nez v8, :cond_2

    #@5f
    .line 560
    const-string/jumbo v10, "ShutdownThread"

    #@62
    const-string/jumbo v11, "Turning off cellular radios..."

    #@65
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 561
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@6b
    .line 568
    :cond_2
    :goto_5
    const-string/jumbo v10, "ShutdownThread"

    #@6e
    const-string/jumbo v11, "Waiting for NFC, Bluetooth and Radio..."

    #@71
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 570
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    #@76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@79
    move-result-wide v12

    #@7a
    sub-long v2, v10, v12

    #@7c
    .line 571
    .local v2, "delay":J
    :goto_6
    const-wide/16 v10, 0x0

    #@7e
    cmp-long v10, v2, v10

    #@80
    if-lez v10, :cond_7

    #@82
    .line 572
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Z

    #@85
    move-result v10

    #@86
    if-eqz v10, :cond_3

    #@88
    .line 573
    iget v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    #@8a
    int-to-long v10, v10

    #@8b
    sub-long/2addr v10, v2

    #@8c
    long-to-double v10, v10

    #@8d
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@8f
    mul-double/2addr v10, v12

    #@90
    .line 574
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    #@92
    .line 573
    mul-double/2addr v10, v12

    #@93
    .line 574
    iget v12, p0, Lcom/android/server/power/ShutdownThread$6;->val$timeout:I

    #@95
    int-to-double v12, v12

    #@96
    .line 573
    div-double/2addr v10, v12

    #@97
    double-to-int v9, v10

    #@98
    .line 575
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    #@9a
    .line 576
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    #@9d
    move-result-object v10

    #@9e
    const/4 v11, 0x0

    #@9f
    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    #@a2
    .line 579
    .end local v9    # "status":I
    :cond_3
    if-nez v1, :cond_4

    #@a4
    .line 581
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@a7
    move-result v10

    #@a8
    const/16 v11, 0xa

    #@aa
    if-ne v10, v11, :cond_d

    #@ac
    const/4 v1, 0x1

    #@ad
    .line 586
    :goto_7
    if-eqz v1, :cond_4

    #@af
    .line 587
    const-string/jumbo v10, "ShutdownThread"

    #@b2
    const-string/jumbo v11, "Bluetooth turned off."

    #@b5
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 590
    :cond_4
    if-nez v8, :cond_5

    #@ba
    .line 592
    :try_start_4
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@bd
    move-result v10

    #@be
    if-eqz v10, :cond_e

    #@c0
    const/4 v8, 0x0

    #@c1
    .line 597
    :goto_8
    if-eqz v8, :cond_5

    #@c3
    .line 598
    const-string/jumbo v10, "ShutdownThread"

    #@c6
    const-string/jumbo v11, "Radio turned off."

    #@c9
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 601
    :cond_5
    if-nez v6, :cond_6

    #@ce
    .line 603
    :try_start_5
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@d1
    move-result v10

    #@d2
    const/4 v11, 0x1

    #@d3
    if-ne v10, v11, :cond_f

    #@d5
    const/4 v6, 0x1

    #@d6
    .line 608
    :goto_9
    if-eqz v6, :cond_6

    #@d8
    .line 609
    const-string/jumbo v10, "ShutdownThread"

    #@db
    const-string/jumbo v11, "NFC turned off."

    #@de
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 613
    :cond_6
    if-eqz v8, :cond_10

    #@e3
    if-eqz v1, :cond_10

    #@e5
    if-eqz v6, :cond_10

    #@e7
    .line 614
    const-string/jumbo v10, "ShutdownThread"

    #@ea
    const-string/jumbo v11, "NFC, Radio and Bluetooth shutdown complete."

    #@ed
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 615
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$done:[Z

    #@f2
    const/4 v11, 0x1

    #@f3
    const/4 v12, 0x0

    #@f4
    aput-boolean v11, v10, v12

    #@f6
    .line 520
    :cond_7
    return-void

    #@f7
    .line 534
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_8
    const/4 v6, 0x1

    #@f8
    .restart local v6    # "nfcOff":Z
    goto/16 :goto_0

    #@fa
    .line 535
    .end local v6    # "nfcOff":Z
    :cond_9
    const/4 v6, 0x0

    #@fb
    .restart local v6    # "nfcOff":Z
    goto/16 :goto_0

    #@fd
    .line 540
    .end local v6    # "nfcOff":Z
    :catch_0
    move-exception v4

    #@fe
    .line 541
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@101
    const-string/jumbo v11, "RemoteException during NFC shutdown"

    #@104
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@107
    .line 542
    const/4 v6, 0x1

    #@108
    .restart local v6    # "nfcOff":Z
    goto/16 :goto_1

    #@10a
    .line 546
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_a
    const/4 v1, 0x1

    #@10b
    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_2

    #@10d
    .line 547
    .end local v1    # "bluetoothOff":Z
    :cond_b
    const/4 v1, 0x0

    #@10e
    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_2

    #@110
    .line 552
    .end local v1    # "bluetoothOff":Z
    :catch_1
    move-exception v4

    #@111
    .line 553
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@114
    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    #@117
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11a
    .line 554
    const/4 v1, 0x1

    #@11b
    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_3

    #@11d
    .line 558
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_c
    const/4 v8, 0x1

    #@11e
    .restart local v8    # "radioOff":Z
    goto/16 :goto_4

    #@120
    .line 563
    .end local v8    # "radioOff":Z
    :catch_2
    move-exception v4

    #@121
    .line 564
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@124
    const-string/jumbo v11, "RemoteException during radio shutdown"

    #@127
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12a
    .line 565
    const/4 v8, 0x1

    #@12b
    .restart local v8    # "radioOff":Z
    goto/16 :goto_5

    #@12d
    .line 581
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_d
    const/4 v1, 0x0

    #@12e
    goto/16 :goto_7

    #@130
    .line 582
    :catch_3
    move-exception v4

    #@131
    .line 583
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@134
    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    #@137
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13a
    .line 584
    const/4 v1, 0x1

    #@13b
    goto/16 :goto_7

    #@13d
    .line 592
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_e
    const/4 v8, 0x1

    #@13e
    goto :goto_8

    #@13f
    .line 593
    :catch_4
    move-exception v4

    #@140
    .line 594
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@143
    const-string/jumbo v11, "RemoteException during radio shutdown"

    #@146
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@149
    .line 595
    const/4 v8, 0x1

    #@14a
    goto/16 :goto_8

    #@14c
    .line 603
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    const/4 v6, 0x0

    #@14d
    goto :goto_9

    #@14e
    .line 604
    :catch_5
    move-exception v4

    #@14f
    .line 605
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    #@152
    const-string/jumbo v11, "RemoteException during NFC shutdown"

    #@155
    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@158
    .line 606
    const/4 v6, 0x1

    #@159
    goto/16 :goto_9

    #@15b
    .line 618
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_10
    const-wide/16 v10, 0x1f4

    #@15d
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    #@160
    .line 620
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$6;->val$endTime:J

    #@162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@165
    move-result-wide v12

    #@166
    sub-long v2, v10, v12

    #@168
    goto/16 :goto_6
.end method
