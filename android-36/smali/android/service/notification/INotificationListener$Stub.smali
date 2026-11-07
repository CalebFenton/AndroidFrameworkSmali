.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final blacklist TRANSACTION_onActionClicked:I = 0x17

.field static final blacklist TRANSACTION_onAllowedAdjustmentsChanged:I = 0x19

.field static final greylist-max-o TRANSACTION_onInterruptionFilterChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onListenerConnected:I = 0x1

.field static final greylist-max-o TRANSACTION_onListenerHintsChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onNotificationChannelGroupModification:I = 0xb

.field static final greylist-max-o TRANSACTION_onNotificationChannelModification:I = 0xa

.field static final blacklist TRANSACTION_onNotificationClicked:I = 0x18

.field static final blacklist TRANSACTION_onNotificationDirectReply:I = 0x15

.field static final blacklist TRANSACTION_onNotificationEnqueuedWithChannel:I = 0xc

.field static final blacklist TRANSACTION_onNotificationEnqueuedWithChannelFull:I = 0xd

.field static final blacklist TRANSACTION_onNotificationExpansionChanged:I = 0x14

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationPosted:I = 0x2

.field static final blacklist TRANSACTION_onNotificationPostedFull:I = 0x3

.field static final greylist-max-o TRANSACTION_onNotificationRankingUpdate:I = 0x7

.field static final greylist-max-o TRANSACTION_onNotificationRemoved:I = 0x5

.field static final blacklist TRANSACTION_onNotificationRemovedFull:I = 0x6

.field static final greylist-max-o TRANSACTION_onNotificationSnoozedUntilContext:I = 0xe

.field static final blacklist TRANSACTION_onNotificationSnoozedUntilContextFull:I = 0xf

.field static final blacklist TRANSACTION_onNotificationVisibilityChanged:I = 0x13

.field static final blacklist TRANSACTION_onNotificationsSeen:I = 0x10

.field static final blacklist TRANSACTION_onPanelHidden:I = 0x12

.field static final blacklist TRANSACTION_onPanelRevealed:I = 0x11

.field static final blacklist TRANSACTION_onStatusBarIconsBehaviorChanged:I = 0x4

.field static final blacklist TRANSACTION_onSuggestedReplySent:I = 0x16


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 110
    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    const-string v0, "android.service.notification.INotificationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_14

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/service/notification/INotificationListener;

    return-object v1

    .line 125
    :cond_14
    new-instance v1, Landroid/service/notification/INotificationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 134
    packed-switch p0, :pswitch_data_6e

    .line 242
    const/4 v0, 0x0

    return-object v0

    .line 238
    :pswitch_5
    const-string/jumbo v0, "onNotificationFeedbackReceived"

    return-object v0

    .line 234
    :pswitch_9
    const-string/jumbo v0, "onAllowedAdjustmentsChanged"

    return-object v0

    .line 230
    :pswitch_d
    const-string/jumbo v0, "onNotificationClicked"

    return-object v0

    .line 226
    :pswitch_11
    const-string/jumbo v0, "onActionClicked"

    return-object v0

    .line 222
    :pswitch_15
    const-string/jumbo v0, "onSuggestedReplySent"

    return-object v0

    .line 218
    :pswitch_19
    const-string/jumbo v0, "onNotificationDirectReply"

    return-object v0

    .line 214
    :pswitch_1d
    const-string/jumbo v0, "onNotificationExpansionChanged"

    return-object v0

    .line 210
    :pswitch_21
    const-string/jumbo v0, "onNotificationVisibilityChanged"

    return-object v0

    .line 206
    :pswitch_25
    const-string/jumbo v0, "onPanelHidden"

    return-object v0

    .line 202
    :pswitch_29
    const-string/jumbo v0, "onPanelRevealed"

    return-object v0

    .line 198
    :pswitch_2d
    const-string/jumbo v0, "onNotificationsSeen"

    return-object v0

    .line 194
    :pswitch_31
    const-string/jumbo v0, "onNotificationSnoozedUntilContextFull"

    return-object v0

    .line 190
    :pswitch_35
    const-string/jumbo v0, "onNotificationSnoozedUntilContext"

    return-object v0

    .line 186
    :pswitch_39
    const-string/jumbo v0, "onNotificationEnqueuedWithChannelFull"

    return-object v0

    .line 182
    :pswitch_3d
    const-string/jumbo v0, "onNotificationEnqueuedWithChannel"

    return-object v0

    .line 178
    :pswitch_41
    const-string/jumbo v0, "onNotificationChannelGroupModification"

    return-object v0

    .line 174
    :pswitch_45
    const-string/jumbo v0, "onNotificationChannelModification"

    return-object v0

    .line 170
    :pswitch_49
    const-string/jumbo v0, "onInterruptionFilterChanged"

    return-object v0

    .line 166
    :pswitch_4d
    const-string/jumbo v0, "onListenerHintsChanged"

    return-object v0

    .line 162
    :pswitch_51
    const-string/jumbo v0, "onNotificationRankingUpdate"

    return-object v0

    .line 158
    :pswitch_55
    const-string/jumbo v0, "onNotificationRemovedFull"

    return-object v0

    .line 154
    :pswitch_59
    const-string/jumbo v0, "onNotificationRemoved"

    return-object v0

    .line 150
    :pswitch_5d
    const-string/jumbo v0, "onStatusBarIconsBehaviorChanged"

    return-object v0

    .line 146
    :pswitch_61
    const-string/jumbo v0, "onNotificationPostedFull"

    return-object v0

    .line 142
    :pswitch_65
    const-string/jumbo v0, "onNotificationPosted"

    return-object v0

    .line 138
    :pswitch_69
    const-string/jumbo v0, "onListenerConnected"

    return-object v0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
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

    .line 129
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 926
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 249
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 253
    const-string v0, "android.service.notification.INotificationListener"

    .line 254
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 255
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 258
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return v1

    .line 261
    :cond_16
    packed-switch p1, :pswitch_data_228

    .line 525
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 514
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 518
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 519
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V

    .line 521
    goto/16 :goto_226

    .line 508
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_3a
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onAllowedAdjustmentsChanged()V

    .line 509
    goto/16 :goto_226

    .line 501
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 502
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationClicked(Ljava/lang/String;)V

    .line 504
    goto/16 :goto_226

    .line 489
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 493
    .local v3, "_arg1":Landroid/app/Notification$Action;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 494
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 496
    goto/16 :goto_226

    .line 477
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/Notification$Action;
    .end local v4    # "_arg2":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 481
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 482
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 484
    goto/16 :goto_226

    .line 469
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    .end local v4    # "_arg2":I
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 470
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationDirectReply(Ljava/lang/String;)V

    .line 472
    goto/16 :goto_226

    .line 457
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 461
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 462
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 464
    goto/16 :goto_226

    .line 447
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 450
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 452
    goto/16 :goto_226

    .line 441
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_ab
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onPanelHidden()V

    .line 442
    goto/16 :goto_226

    .line 434
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 435
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onPanelRevealed(I)V

    .line 437
    goto/16 :goto_226

    .line 426
    .end local v2    # "_arg0":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 427
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationsSeen(Ljava/util/List;)V

    .line 429
    goto/16 :goto_226

    .line 416
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c8
    sget-object v2, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 418
    .local v2, "_arg0":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 421
    goto/16 :goto_226

    .line 406
    .end local v2    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 408
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V

    .line 411
    goto/16 :goto_226

    .line 394
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_f0
    sget-object v2, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 396
    .local v2, "_arg0":Landroid/service/notification/StatusBarNotification;
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 398
    .local v3, "_arg1":Landroid/app/NotificationChannel;
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 399
    .local v4, "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 401
    goto/16 :goto_226

    .line 382
    .end local v2    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "_arg1":Landroid/app/NotificationChannel;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 384
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 386
    .restart local v3    # "_arg1":Landroid/app/NotificationChannel;
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 387
    .restart local v4    # "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 389
    goto/16 :goto_226

    .line 368
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/app/NotificationChannel;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 372
    .local v3, "_arg1":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 374
    .local v4, "_arg2":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 375
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 377
    goto/16 :goto_226

    .line 354
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/app/NotificationChannelGroup;
    .end local v5    # "_arg3":I
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 358
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 360
    .local v4, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 361
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 363
    goto/16 :goto_226

    .line 346
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/app/NotificationChannel;
    .end local v5    # "_arg3":I
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    .line 349
    goto/16 :goto_226

    .line 338
    .end local v2    # "_arg0":I
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    .line 341
    goto/16 :goto_226

    .line 330
    .end local v2    # "_arg0":I
    :pswitch_188
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 331
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 333
    goto/16 :goto_226

    .line 316
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_198
    sget-object v2, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 318
    .local v2, "_arg0":Landroid/service/notification/StatusBarNotification;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 320
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationStats;

    .line 322
    .local v4, "_arg2":Landroid/service/notification/NotificationStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 323
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemovedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 325
    goto :goto_226

    .line 302
    .end local v2    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationStats;
    .end local v5    # "_arg3":I
    :pswitch_1bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 304
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 306
    .restart local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    sget-object v4, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationStats;

    .line 308
    .restart local v4    # "_arg2":Landroid/service/notification/NotificationStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 309
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 311
    goto :goto_226

    .line 294
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    .end local v4    # "_arg2":Landroid/service/notification/NotificationStats;
    .end local v5    # "_arg3":I
    :pswitch_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 295
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onStatusBarIconsBehaviorChanged(Z)V

    .line 297
    goto :goto_226

    .line 284
    .end local v2    # "_arg0":Z
    :pswitch_1e9
    sget-object v2, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 286
    .local v2, "_arg0":Landroid/service/notification/StatusBarNotification;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 287
    .restart local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPostedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 289
    goto :goto_226

    .line 274
    .end local v2    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v2

    .line 276
    .local v2, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 277
    .restart local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 279
    goto :goto_226

    .line 266
    .end local v2    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :pswitch_217
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 267
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 269
    nop

    .line 528
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :goto_226
    return v1

    nop

    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_217
        :pswitch_200
        :pswitch_1e9
        :pswitch_1de
        :pswitch_1bb
        :pswitch_198
        :pswitch_188
        :pswitch_17c
        :pswitch_170
        :pswitch_150
        :pswitch_130
        :pswitch_110
        :pswitch_f0
        :pswitch_dc
        :pswitch_c8
        :pswitch_bc
        :pswitch_b0
        :pswitch_ab
        :pswitch_9b
        :pswitch_87
        :pswitch_7b
        :pswitch_63
        :pswitch_4b
        :pswitch_3f
        :pswitch_3a
        :pswitch_1e
    .end packed-switch
.end method
