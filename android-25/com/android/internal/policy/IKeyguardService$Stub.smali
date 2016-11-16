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
    .line 203
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
    .line 51
    .local v7, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v11

    #@21
    if-eqz v11, :cond_1

    #@23
    const/4 v10, 0x1

    #@24
    .line 52
    .local v10, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    #@27
    .line 53
    const/4 v11, 0x1

    #@28
    return v11

    #@29
    .line 49
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :cond_0
    const/4 v7, 0x0

    #@2a
    .restart local v7    # "_arg0":Z
    goto :goto_0

    #@2b
    .line 51
    :cond_1
    const/4 v10, 0x0

    #@2c
    goto :goto_1

    #@2d
    .line 57
    .end local v7    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@30
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36
    move-result-object v11

    #@37
    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    #@3a
    move-result-object v6

    #@3b
    .line 60
    .local v6, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    #@3e
    .line 61
    const/4 v11, 0x1

    #@3f
    return v11

    #@40
    .line 65
    .end local v6    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_3
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@43
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@49
    move-result-object v11

    #@4a
    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    #@4d
    move-result-object v5

    #@4e
    .line 68
    .local v5, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    #@51
    .line 69
    const/4 v11, 0x1

    #@52
    return v11

    #@53
    .line 73
    .end local v5    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_4
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@56
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v11

    #@5d
    if-eqz v11, :cond_2

    #@5f
    const/4 v7, 0x1

    #@60
    .line 77
    .restart local v7    # "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v11

    #@64
    if-eqz v11, :cond_3

    #@66
    const/4 v10, 0x1

    #@67
    .line 78
    .restart local v10    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    #@6a
    .line 79
    const/4 v11, 0x1

    #@6b
    return v11

    #@6c
    .line 75
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :cond_2
    const/4 v7, 0x0

    #@6d
    .restart local v7    # "_arg0":Z
    goto :goto_2

    #@6e
    .line 77
    :cond_3
    const/4 v10, 0x0

    #@6f
    goto :goto_3

    #@70
    .line 83
    .end local v7    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@73
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v11

    #@7a
    if-eqz v11, :cond_4

    #@7c
    const/4 v7, 0x1

    #@7d
    .line 86
    .local v7, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Z)V

    #@80
    .line 87
    const/4 v11, 0x1

    #@81
    return v11

    #@82
    .line 85
    .end local v7    # "_arg0":Z
    :cond_4
    const/4 v7, 0x0

    #@83
    goto :goto_4

    #@84
    .line 91
    :sswitch_6
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@87
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    #@8d
    .line 93
    const/4 v11, 0x1

    #@8e
    return v11

    #@8f
    .line 97
    :sswitch_7
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@92
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95
    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    #@98
    .line 99
    const/4 v11, 0x1

    #@99
    return v11

    #@9a
    .line 103
    :sswitch_8
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@9d
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v0

    #@a4
    .line 106
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    #@a7
    .line 107
    const/4 v11, 0x1

    #@a8
    return v11

    #@a9
    .line 111
    .end local v0    # "_arg0":I
    :sswitch_9
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@ac
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b2
    move-result v0

    #@b3
    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v11

    #@b7
    if-eqz v11, :cond_5

    #@b9
    const/4 v10, 0x1

    #@ba
    .line 116
    .restart local v10    # "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    #@bd
    .line 117
    const/4 v11, 0x1

    #@be
    return v11

    #@bf
    .line 115
    .end local v10    # "_arg1":Z
    :cond_5
    const/4 v10, 0x0

    #@c0
    goto :goto_5

    #@c1
    .line 121
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@c4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 122
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    #@ca
    .line 123
    const/4 v11, 0x1

    #@cb
    return v11

    #@cc
    .line 127
    :sswitch_b
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@cf
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d5
    move-result-object v11

    #@d6
    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    #@d9
    move-result-object v4

    #@da
    .line 130
    .local v4, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    #@dd
    .line 131
    const/4 v11, 0x1

    #@de
    return v11

    #@df
    .line 135
    .end local v4    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :sswitch_c
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@e2
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    #@e8
    .line 137
    const/4 v11, 0x1

    #@e9
    return v11

    #@ea
    .line 141
    :sswitch_d
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@ed
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    #@f3
    .line 143
    const/4 v11, 0x1

    #@f4
    return v11

    #@f5
    .line 147
    :sswitch_e
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@f8
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v11

    #@ff
    if-eqz v11, :cond_6

    #@101
    const/4 v7, 0x1

    #@102
    .line 150
    .restart local v7    # "_arg0":Z
    :goto_6
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    #@105
    .line 151
    const/4 v11, 0x1

    #@106
    return v11

    #@107
    .line 149
    .end local v7    # "_arg0":Z
    :cond_6
    const/4 v7, 0x0

    #@108
    goto :goto_6

    #@109
    .line 155
    :sswitch_f
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@10c
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    #@112
    .line 157
    const/4 v11, 0x1

    #@113
    return v11

    #@114
    .line 161
    :sswitch_10
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@117
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v11

    #@11e
    if-eqz v11, :cond_7

    #@120
    .line 164
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@122
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@125
    move-result-object v1

    #@126
    check-cast v1, Landroid/os/Bundle;

    #@128
    .line 169
    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    #@12b
    .line 170
    const/4 v11, 0x1

    #@12c
    return v11

    #@12d
    .line 167
    :cond_7
    const/4 v1, 0x0

    #@12e
    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_7

    #@12f
    .line 174
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_11
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@132
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v0

    #@139
    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    #@13c
    .line 178
    const/4 v11, 0x1

    #@13d
    return v11

    #@13e
    .line 182
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@141
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@144
    .line 183
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    #@147
    .line 184
    const/4 v11, 0x1

    #@148
    return v11

    #@149
    .line 188
    :sswitch_13
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@14c
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f
    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@152
    move-result-wide v2

    #@153
    .line 192
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@156
    move-result-wide v8

    #@157
    .line 193
    .local v8, "_arg1":J
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    #@15a
    .line 194
    const/4 v11, 0x1

    #@15b
    return v11

    #@15c
    .line 198
    .end local v2    # "_arg0":J
    .end local v8    # "_arg1":J
    :sswitch_14
    const-string/jumbo v11, "com.android.internal.policy.IKeyguardService"

    #@15f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@162
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    #@165
    .line 200
    const/4 v11, 0x1

    #@166
    return v11

    #@167
    .line 38
    nop

    #@168
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
