.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final blacklist TRANSACTION_onActivityDismissingDockedTask:I = 0x6

.field static final greylist-max-o TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final greylist-max-o TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final blacklist TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final greylist-max-o TRANSACTION_onActivityPinned:I = 0x2

.field static final greylist-max-o TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final blacklist TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final blacklist TRANSACTION_onActivityRotation:I = 0x19

.field static final greylist-max-o TRANSACTION_onActivityUnpinned:I = 0x3

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x12

.field static final blacklist TRANSACTION_onLockTaskModeChanged:I = 0x1b

.field static final blacklist TRANSACTION_onRecentTaskListFrozenChanged:I = 0x15

.field static final blacklist TRANSACTION_onRecentTaskListUpdated:I = 0x14

.field static final blacklist TRANSACTION_onRecentTaskRemovedForAddTask:I = 0x16

.field static final greylist-max-o TRANSACTION_onTaskCreated:I = 0x9

.field static final greylist-max-o TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final blacklist TRANSACTION_onTaskDisplayChanged:I = 0x13

.field static final blacklist TRANSACTION_onTaskFocusChanged:I = 0x17

.field static final blacklist TRANSACTION_onTaskMovedToBack:I = 0x1a

.field static final greylist-max-o TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final greylist-max-o TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final greylist-max-o TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final greylist-max-o TRANSACTION_onTaskRemoved:I = 0xa

.field static final blacklist TRANSACTION_onTaskRequestedOrientationChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final blacklist TRANSACTION_onTaskSnapshotInvalidated:I = 0x11

.field static final greylist-max-o TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 240
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 241
    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 249
    if-nez p0, :cond_4

    .line 250
    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_4
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 253
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_14

    .line 254
    move-object v1, v0

    check-cast v1, Landroid/app/ITaskStackListener;

    return-object v1

    .line 256
    :cond_14
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 265
    packed-switch p0, :pswitch_data_72

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 373
    :pswitch_5
    const-string/jumbo v0, "onLockTaskModeChanged"

    return-object v0

    .line 369
    :pswitch_9
    const-string/jumbo v0, "onTaskMovedToBack"

    return-object v0

    .line 365
    :pswitch_d
    const-string/jumbo v0, "onActivityRotation"

    return-object v0

    .line 361
    :pswitch_11
    const-string/jumbo v0, "onTaskRequestedOrientationChanged"

    return-object v0

    .line 357
    :pswitch_15
    const-string/jumbo v0, "onTaskFocusChanged"

    return-object v0

    .line 353
    :pswitch_19
    const-string/jumbo v0, "onRecentTaskRemovedForAddTask"

    return-object v0

    .line 349
    :pswitch_1d
    const-string/jumbo v0, "onRecentTaskListFrozenChanged"

    return-object v0

    .line 345
    :pswitch_21
    const-string/jumbo v0, "onRecentTaskListUpdated"

    return-object v0

    .line 341
    :pswitch_25
    const-string/jumbo v0, "onTaskDisplayChanged"

    return-object v0

    .line 337
    :pswitch_29
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 333
    :pswitch_2d
    const-string/jumbo v0, "onTaskSnapshotInvalidated"

    return-object v0

    .line 329
    :pswitch_31
    const-string/jumbo v0, "onTaskSnapshotChanged"

    return-object v0

    .line 325
    :pswitch_35
    const-string/jumbo v0, "onTaskProfileLocked"

    return-object v0

    .line 321
    :pswitch_39
    const-string/jumbo v0, "onTaskRemovalStarted"

    return-object v0

    .line 317
    :pswitch_3d
    const-string/jumbo v0, "onActivityRequestedOrientationChanged"

    return-object v0

    .line 313
    :pswitch_41
    const-string/jumbo v0, "onTaskDescriptionChanged"

    return-object v0

    .line 309
    :pswitch_45
    const-string/jumbo v0, "onTaskMovedToFront"

    return-object v0

    .line 305
    :pswitch_49
    const-string/jumbo v0, "onTaskRemoved"

    return-object v0

    .line 301
    :pswitch_4d
    const-string/jumbo v0, "onTaskCreated"

    return-object v0

    .line 297
    :pswitch_51
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object v0

    .line 293
    :pswitch_55
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object v0

    .line 289
    :pswitch_59
    const-string/jumbo v0, "onActivityDismissingDockedTask"

    return-object v0

    .line 285
    :pswitch_5d
    const-string/jumbo v0, "onActivityForcedResizable"

    return-object v0

    .line 281
    :pswitch_61
    const-string/jumbo v0, "onActivityRestartAttempt"

    return-object v0

    .line 277
    :pswitch_65
    const-string/jumbo v0, "onActivityUnpinned"

    return-object v0

    .line 273
    :pswitch_69
    const-string/jumbo v0, "onActivityPinned"

    return-object v0

    .line 269
    :pswitch_6d
    const-string/jumbo v0, "onTaskStackChanged"

    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 260
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1160
    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 384
    invoke-static {p1}, Landroid/app/ITaskStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const-string v0, "android.app.ITaskStackListener"

    .line 389
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 390
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 393
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    return v1

    .line 396
    :cond_16
    packed-switch p1, :pswitch_data_1b0

    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 631
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onLockTaskModeChanged(I)V

    .line 634
    goto/16 :goto_1ae

    .line 623
    .end local v2    # "_arg0":I
    :pswitch_2a
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 624
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 626
    goto/16 :goto_1ae

    .line 615
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onActivityRotation(I)V

    .line 618
    goto/16 :goto_1ae

    .line 605
    .end local v2    # "_arg0":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 607
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 608
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskRequestedOrientationChanged(II)V

    .line 610
    goto/16 :goto_1ae

    .line 595
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 597
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 598
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskFocusChanged(IZ)V

    .line 600
    goto/16 :goto_1ae

    .line 587
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 588
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskRemovedForAddTask(I)V

    .line 590
    goto/16 :goto_1ae

    .line 579
    .end local v2    # "_arg0":I
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 580
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListFrozenChanged(Z)V

    .line 582
    goto/16 :goto_1ae

    .line 573
    .end local v2    # "_arg0":Z
    :pswitch_7e
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListUpdated()V

    .line 574
    goto/16 :goto_1ae

    .line 564
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskDisplayChanged(II)V

    .line 569
    goto/16 :goto_1ae

    .line 556
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_93
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 557
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 559
    goto/16 :goto_1ae

    .line 548
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 549
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotInvalidated(I)V

    .line 551
    goto/16 :goto_1ae

    .line 538
    .end local v2    # "_arg0":I
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskSnapshot;

    .line 541
    .local v3, "_arg1":Landroid/window/TaskSnapshot;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 543
    goto/16 :goto_1ae

    .line 528
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/TaskSnapshot;
    :pswitch_c3
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 530
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 533
    goto/16 :goto_1ae

    .line 520
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_d7
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 521
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 523
    goto/16 :goto_1ae

    .line 510
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 512
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 513
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    .line 515
    goto/16 :goto_1ae

    .line 502
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f7
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 503
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 505
    goto/16 :goto_1ae

    .line 494
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_107
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 495
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 497
    goto/16 :goto_1ae

    .line 486
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    .line 489
    goto/16 :goto_1ae

    .line 476
    .end local v2    # "_arg0":I
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 478
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 479
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 481
    goto/16 :goto_1ae

    .line 466
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_137
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 468
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 469
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 471
    goto :goto_1ae

    .line 456
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_14a
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 458
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 459
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 461
    goto :goto_1ae

    .line 450
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_15d
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedTask()V

    .line 451
    goto :goto_1ae

    .line 439
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 443
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 444
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 446
    goto :goto_1ae

    .line 425
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_174
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 427
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 429
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 431
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 432
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 434
    goto :goto_1ae

    .line 419
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    :pswitch_18f
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    .line 420
    goto :goto_1ae

    .line 406
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 412
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 413
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;III)V

    .line 415
    goto :goto_1ae

    .line 400
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_1aa
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    .line 401
    nop

    .line 641
    :goto_1ae
    return v1

    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_1aa
        :pswitch_193
        :pswitch_18f
        :pswitch_174
        :pswitch_161
        :pswitch_15d
        :pswitch_14a
        :pswitch_137
        :pswitch_123
        :pswitch_117
        :pswitch_107
        :pswitch_f7
        :pswitch_e7
        :pswitch_d7
        :pswitch_c3
        :pswitch_af
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_3a
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
