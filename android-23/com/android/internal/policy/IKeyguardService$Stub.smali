.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_doKeyguardTimeout:I = 0x10

.field static final TRANSACTION_keyguardDone:I = 0x4

.field static final TRANSACTION_onActivityDrawn:I = 0x14

.field static final TRANSACTION_onBootCompleted:I = 0x12

.field static final TRANSACTION_onDreamingStarted:I = 0x6

.field static final TRANSACTION_onDreamingStopped:I = 0x7

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x9

.field static final TRANSACTION_onScreenTurnedOff:I = 0xd

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x8

.field static final TRANSACTION_onStartedWakingUp:I = 0xa

.field static final TRANSACTION_onSystemReady:I = 0xf

.field static final TRANSACTION_setCurrentUser:I = 0x11

.field static final TRANSACTION_setKeyguardEnabled:I = 0xe

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x13

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 197
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 43
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 47
    :sswitch_1
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v11

    #@1a
    if-eqz v11, :cond_0

    #@1c
    const/4 v7, 0x1

    #@1d
    .line 50
    .local v7, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(Z)V

    #@20
    .line 51
    const/4 v11, 0x1

    #@21
    return v11

    #@22
    .line 49
    .end local v7    # "_arg0":Z
    :cond_0
    const/4 v7, 0x0

    #@23
    .restart local v7    # "_arg0":Z
    goto :goto_0

    #@24
    .line 55
    .end local v7    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@27
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v11

    #@2e
    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    #@31
    move-result-object v6

    #@32
    .line 58
    .local v6, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    #@35
    .line 59
    const/4 v11, 0x1

    #@36
    return v11

    #@37
    .line 63
    .end local v6    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_3
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@3a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40
    move-result-object v11

    #@41
    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    #@44
    move-result-object v5

    #@45
    .line 66
    .local v5, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    #@48
    .line 67
    const/4 v11, 0x1

    #@49
    return v11

    #@4a
    .line 71
    .end local v5    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_4
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@4d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v11

    #@54
    if-eqz v11, :cond_1

    #@56
    const/4 v7, 0x1

    #@57
    .line 75
    .restart local v7    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v11

    #@5b
    if-eqz v11, :cond_2

    #@5d
    const/4 v10, 0x1

    #@5e
    .line 76
    .local v10, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    #@61
    .line 77
    const/4 v11, 0x1

    #@62
    return v11

    #@63
    .line 73
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :cond_1
    const/4 v7, 0x0

    #@64
    .restart local v7    # "_arg0":Z
    goto :goto_1

    #@65
    .line 75
    :cond_2
    const/4 v10, 0x0

    #@66
    .restart local v10    # "_arg1":Z
    goto :goto_2

    #@67
    .line 81
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :sswitch_5
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@6a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    #@70
    .line 83
    const/4 v11, 0x1

    #@71
    return v11

    #@72
    .line 87
    :sswitch_6
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@75
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    .line 88
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    #@7b
    .line 89
    const/4 v11, 0x1

    #@7c
    return v11

    #@7d
    .line 93
    :sswitch_7
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@80
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 94
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    #@86
    .line 95
    const/4 v11, 0x1

    #@87
    return v11

    #@88
    .line 99
    :sswitch_8
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@8b
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v0

    #@92
    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    #@95
    .line 103
    const/4 v11, 0x1

    #@96
    return v11

    #@97
    .line 107
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@9a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v0

    #@a1
    .line 110
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(I)V

    #@a4
    .line 111
    const/4 v11, 0x1

    #@a5
    return v11

    #@a6
    .line 115
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@a9
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac
    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    #@af
    .line 117
    const/4 v11, 0x1

    #@b0
    return v11

    #@b1
    .line 121
    :sswitch_b
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@b4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ba
    move-result-object v11

    #@bb
    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    #@be
    move-result-object v4

    #@bf
    .line 124
    .local v4, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    #@c2
    .line 125
    const/4 v11, 0x1

    #@c3
    return v11

    #@c4
    .line 129
    .end local v4    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :sswitch_c
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@c7
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 130
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    #@cd
    .line 131
    const/4 v11, 0x1

    #@ce
    return v11

    #@cf
    .line 135
    :sswitch_d
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@d2
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    #@d8
    .line 137
    const/4 v11, 0x1

    #@d9
    return v11

    #@da
    .line 141
    :sswitch_e
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@dd
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e3
    move-result v11

    #@e4
    if-eqz v11, :cond_3

    #@e6
    const/4 v7, 0x1

    #@e7
    .line 144
    .restart local v7    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    #@ea
    .line 145
    const/4 v11, 0x1

    #@eb
    return v11

    #@ec
    .line 143
    .end local v7    # "_arg0":Z
    :cond_3
    const/4 v7, 0x0

    #@ed
    .restart local v7    # "_arg0":Z
    goto :goto_3

    #@ee
    .line 149
    .end local v7    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@f1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    #@f7
    .line 151
    const/4 v11, 0x1

    #@f8
    return v11

    #@f9
    .line 155
    :sswitch_10
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@fc
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@102
    move-result v11

    #@103
    if-eqz v11, :cond_4

    #@105
    .line 158
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@107
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a
    move-result-object v1

    #@10b
    check-cast v1, Landroid/os/Bundle;

    #@10d
    .line 163
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    #@110
    .line 164
    const/4 v11, 0x1

    #@111
    return v11

    #@112
    .line 161
    :cond_4
    const/4 v1, 0x0

    #@113
    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    #@114
    .line 168
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_11
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@117
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v0

    #@11e
    .line 171
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    #@121
    .line 172
    const/4 v11, 0x1

    #@122
    return v11

    #@123
    .line 176
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@126
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@129
    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    #@12c
    .line 178
    const/4 v11, 0x1

    #@12d
    return v11

    #@12e
    .line 182
    :sswitch_13
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@131
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@137
    move-result-wide v2

    #@138
    .line 186
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@13b
    move-result-wide v8

    #@13c
    .line 187
    .local v8, "_arg1":J
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    #@13f
    .line 188
    const/4 v11, 0x1

    #@140
    return v11

    #@141
    .line 192
    .end local v2    # "_arg0":J
    .end local v8    # "_arg1":J
    :sswitch_14
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@144
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    #@14a
    .line 194
    const/4 v11, 0x1

    #@14b
    return v11

    #@14c
    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
