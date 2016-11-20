.class public abstract Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionManagerService"

.field static final TRANSACTION_activeServiceSupportsAssist:I = 0x18

.field static final TRANSACTION_activeServiceSupportsLaunchFromKeyguard:I = 0x19

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_deleteKeyphraseSoundModel:I = 0xe

.field static final TRANSACTION_deliverNewSession:I = 0x2

.field static final TRANSACTION_finish:I = 0x8

.field static final TRANSACTION_getActiveServiceComponentName:I = 0x13

.field static final TRANSACTION_getDisabledShowContext:I = 0xa

.field static final TRANSACTION_getDspModuleProperties:I = 0xf

.field static final TRANSACTION_getKeyphraseSoundModel:I = 0xc

.field static final TRANSACTION_getUserDisabledShowContext:I = 0xb

.field static final TRANSACTION_hideCurrentSession:I = 0x15

.field static final TRANSACTION_hideSessionFromSession:I = 0x4

.field static final TRANSACTION_isEnrolledForKeyphrase:I = 0x10

.field static final TRANSACTION_isSessionRunning:I = 0x17

.field static final TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x16

.field static final TRANSACTION_onLockscreenShown:I = 0x1a

.field static final TRANSACTION_registerVoiceInteractionSessionListener:I = 0x1b

.field static final TRANSACTION_setDisabledShowContext:I = 0x9

.field static final TRANSACTION_setKeepAwake:I = 0x6

.field static final TRANSACTION_showSession:I = 0x1

.field static final TRANSACTION_showSessionForActiveService:I = 0x14

.field static final TRANSACTION_showSessionFromSession:I = 0x3

.field static final TRANSACTION_startRecognition:I = 0x11

.field static final TRANSACTION_startVoiceActivity:I = 0x5

.field static final TRANSACTION_stopRecognition:I = 0x12

.field static final TRANSACTION_updateKeyphraseSoundModel:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractionManagerService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;
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
    const-string/jumbo v1, "com.android.internal.app.IVoiceInteractionManagerService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 29
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
    .line 381
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@21
    move-result-object v4

    #@22
    .line 51
    .local v4, "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 52
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v15

    #@30
    check-cast v15, Landroid/os/Bundle;

    #@32
    .line 58
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v19

    #@36
    .line 59
    .local v19, "_arg2":I
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v19

    #@3a
    invoke-virtual {v0, v4, v15, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V

    #@3d
    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 61
    const/4 v3, 0x1

    #@41
    return v3

    #@42
    .line 55
    .end local v19    # "_arg2":I
    :cond_0
    const/4 v15, 0x0

    #@43
    .local v15, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@44
    .line 65
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v15    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f
    move-result-object v12

    #@50
    .line 69
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@53
    move-result-object v3

    #@54
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    #@57
    move-result-object v16

    #@58
    .line 71
    .local v16, "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@5f
    move-result-object v22

    #@60
    .line 72
    .local v22, "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v16

    #@64
    move-object/from16 v2, v22

    #@66
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    #@69
    move-result v28

    #@6a
    .line 73
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d
    .line 74
    if-eqz v28, :cond_1

    #@6f
    const/4 v3, 0x1

    #@70
    :goto_1
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@75
    .line 75
    const/4 v3, 0x1

    #@76
    return v3

    #@77
    .line 74
    :cond_1
    const/4 v3, 0x0

    #@78
    goto :goto_1

    #@79
    .line 79
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    .end local v22    # "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    .end local v28    # "_result":Z
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@7c
    move-object/from16 v0, p2

    #@7e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84
    move-result-object v12

    #@85
    .line 83
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_2

    #@8b
    .line 84
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@92
    move-result-object v15

    #@93
    check-cast v15, Landroid/os/Bundle;

    #@95
    .line 90
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v19

    #@99
    .line 91
    .restart local v19    # "_arg2":I
    move-object/from16 v0, p0

    #@9b
    move/from16 v1, v19

    #@9d
    invoke-virtual {v0, v12, v15, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    #@a0
    move-result v28

    #@a1
    .line 92
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 93
    if-eqz v28, :cond_3

    #@a6
    const/4 v3, 0x1

    #@a7
    :goto_3
    move-object/from16 v0, p3

    #@a9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 94
    const/4 v3, 0x1

    #@ad
    return v3

    #@ae
    .line 87
    .end local v19    # "_arg2":I
    .end local v28    # "_result":Z
    :cond_2
    const/4 v15, 0x0

    #@af
    .restart local v15    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    #@b0
    .line 93
    .end local v15    # "_arg1":Landroid/os/Bundle;
    .restart local v19    # "_arg2":I
    .restart local v28    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    #@b1
    goto :goto_3

    #@b2
    .line 98
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg2":I
    .end local v28    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b5
    move-object/from16 v0, p2

    #@b7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bd
    move-result-object v12

    #@be
    .line 101
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c0
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideSessionFromSession(Landroid/os/IBinder;)Z

    #@c3
    move-result v28

    #@c4
    .line 102
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7
    .line 103
    if-eqz v28, :cond_4

    #@c9
    const/4 v3, 0x1

    #@ca
    :goto_4
    move-object/from16 v0, p3

    #@cc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@cf
    .line 104
    const/4 v3, 0x1

    #@d0
    return v3

    #@d1
    .line 103
    :cond_4
    const/4 v3, 0x0

    #@d2
    goto :goto_4

    #@d3
    .line 108
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "_result":Z
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@d6
    move-object/from16 v0, p2

    #@d8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@de
    move-result-object v12

    #@df
    .line 112
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v3

    #@e3
    if-eqz v3, :cond_5

    #@e5
    .line 113
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ec
    move-result-object v14

    #@ed
    check-cast v14, Landroid/content/Intent;

    #@ef
    .line 119
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f2
    move-result-object v6

    #@f3
    .line 120
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f5
    invoke-virtual {v0, v12, v14, v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    #@f8
    move-result v24

    #@f9
    .line 121
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc
    .line 122
    move-object/from16 v0, p3

    #@fe
    move/from16 v1, v24

    #@100
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    .line 123
    const/4 v3, 0x1

    #@104
    return v3

    #@105
    .line 116
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v24    # "_result":I
    :cond_5
    const/4 v14, 0x0

    #@106
    .local v14, "_arg1":Landroid/content/Intent;
    goto :goto_5

    #@107
    .line 127
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/content/Intent;
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@10a
    move-object/from16 v0, p2

    #@10c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@112
    move-result-object v12

    #@113
    .line 131
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v3

    #@117
    if-eqz v3, :cond_6

    #@119
    const/16 v18, 0x1

    #@11b
    .line 132
    .local v18, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    #@11d
    move/from16 v1, v18

    #@11f
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setKeepAwake(Landroid/os/IBinder;Z)V

    #@122
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@125
    .line 134
    const/4 v3, 0x1

    #@126
    return v3

    #@127
    .line 131
    .end local v18    # "_arg1":Z
    :cond_6
    const/16 v18, 0x0

    #@129
    goto :goto_6

    #@12a
    .line 138
    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@12d
    move-object/from16 v0, p2

    #@12f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@132
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@135
    move-result-object v12

    #@136
    .line 141
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@138
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->closeSystemDialogs(Landroid/os/IBinder;)V

    #@13b
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13e
    .line 143
    const/4 v3, 0x1

    #@13f
    return v3

    #@140
    .line 147
    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@143
    move-object/from16 v0, p2

    #@145
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@14b
    move-result-object v12

    #@14c
    .line 150
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@14e
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->finish(Landroid/os/IBinder;)V

    #@151
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@154
    .line 152
    const/4 v3, 0x1

    #@155
    return v3

    #@156
    .line 156
    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@159
    move-object/from16 v0, p2

    #@15b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@161
    move-result v9

    #@162
    .line 159
    .local v9, "_arg0":I
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v0, v9}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabledShowContext(I)V

    #@167
    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a
    .line 161
    const/4 v3, 0x1

    #@16b
    return v3

    #@16c
    .line 165
    .end local v9    # "_arg0":I
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDisabledShowContext()I

    #@177
    move-result v24

    #@178
    .line 167
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17b
    .line 168
    move-object/from16 v0, p3

    #@17d
    move/from16 v1, v24

    #@17f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@182
    .line 169
    const/4 v3, 0x1

    #@183
    return v3

    #@184
    .line 173
    .end local v24    # "_result":I
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@187
    move-object/from16 v0, p2

    #@189
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getUserDisabledShowContext()I

    #@18f
    move-result v24

    #@190
    .line 175
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193
    .line 176
    move-object/from16 v0, p3

    #@195
    move/from16 v1, v24

    #@197
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19a
    .line 177
    const/4 v3, 0x1

    #@19b
    return v3

    #@19c
    .line 181
    .end local v24    # "_result":I
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@19f
    move-object/from16 v0, p2

    #@1a1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a4
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v9

    #@1a8
    .line 185
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ab
    move-result-object v17

    #@1ac
    .line 186
    .local v17, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ae
    move-object/from16 v1, v17

    #@1b0
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@1b3
    move-result-object v26

    #@1b4
    .line 187
    .local v26, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b7
    .line 188
    if-eqz v26, :cond_7

    #@1b9
    .line 189
    const/4 v3, 0x1

    #@1ba
    move-object/from16 v0, p3

    #@1bc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1bf
    .line 190
    const/4 v3, 0x1

    #@1c0
    move-object/from16 v0, v26

    #@1c2
    move-object/from16 v1, p3

    #@1c4
    invoke-virtual {v0, v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c7
    .line 195
    :goto_7
    const/4 v3, 0x1

    #@1c8
    return v3

    #@1c9
    .line 193
    :cond_7
    const/4 v3, 0x0

    #@1ca
    move-object/from16 v0, p3

    #@1cc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1cf
    goto :goto_7

    #@1d0
    .line 199
    .end local v9    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v26    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@1d3
    move-object/from16 v0, p2

    #@1d5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d8
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1db
    move-result v3

    #@1dc
    if-eqz v3, :cond_8

    #@1de
    .line 202
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e0
    move-object/from16 v0, p2

    #@1e2
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e5
    move-result-object v10

    #@1e6
    check-cast v10, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@1e8
    .line 207
    :goto_8
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v0, v10}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    #@1ed
    move-result v24

    #@1ee
    .line 208
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f1
    .line 209
    move-object/from16 v0, p3

    #@1f3
    move/from16 v1, v24

    #@1f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f8
    .line 210
    const/4 v3, 0x1

    #@1f9
    return v3

    #@1fa
    .line 205
    .end local v24    # "_result":I
    :cond_8
    const/4 v10, 0x0

    #@1fb
    .local v10, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_8

    #@1fc
    .line 214
    .end local v10    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@1ff
    move-object/from16 v0, p2

    #@201
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@204
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v9

    #@208
    .line 218
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20b
    move-result-object v17

    #@20c
    .line 219
    .restart local v17    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20e
    move-object/from16 v1, v17

    #@210
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    #@213
    move-result v24

    #@214
    .line 220
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@217
    .line 221
    move-object/from16 v0, p3

    #@219
    move/from16 v1, v24

    #@21b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21e
    .line 222
    const/4 v3, 0x1

    #@21f
    return v3

    #@220
    .line 226
    .end local v9    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@223
    move-object/from16 v0, p2

    #@225
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@228
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22b
    move-result-object v3

    #@22c
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@22f
    move-result-object v4

    #@230
    .line 229
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    move-object/from16 v0, p0

    #@232
    invoke-virtual {v0, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@235
    move-result-object v27

    #@236
    .line 230
    .local v27, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@239
    .line 231
    if-eqz v27, :cond_9

    #@23b
    .line 232
    const/4 v3, 0x1

    #@23c
    move-object/from16 v0, p3

    #@23e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@241
    .line 233
    const/4 v3, 0x1

    #@242
    move-object/from16 v0, v27

    #@244
    move-object/from16 v1, p3

    #@246
    invoke-virtual {v0, v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@249
    .line 238
    :goto_9
    const/4 v3, 0x1

    #@24a
    return v3

    #@24b
    .line 236
    :cond_9
    const/4 v3, 0x0

    #@24c
    move-object/from16 v0, p3

    #@24e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@251
    goto :goto_9

    #@252
    .line 242
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v27    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25a
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25d
    move-result-object v3

    #@25e
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@261
    move-result-object v4

    #@262
    .line 246
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@265
    move-result v5

    #@266
    .line 248
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@269
    move-result-object v6

    #@26a
    .line 249
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26c
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z

    #@26f
    move-result v28

    #@270
    .line 250
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@273
    .line 251
    if-eqz v28, :cond_a

    #@275
    const/4 v3, 0x1

    #@276
    :goto_a
    move-object/from16 v0, p3

    #@278
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@27b
    .line 252
    const/4 v3, 0x1

    #@27c
    return v3

    #@27d
    .line 251
    :cond_a
    const/4 v3, 0x0

    #@27e
    goto :goto_a

    #@27f
    .line 256
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v28    # "_result":Z
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@282
    move-object/from16 v0, p2

    #@284
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@287
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28a
    move-result-object v3

    #@28b
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@28e
    move-result-object v4

    #@28f
    .line 260
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@292
    move-result v5

    #@293
    .line 262
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@296
    move-result-object v6

    #@297
    .line 264
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29a
    move-result-object v3

    #@29b
    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@29e
    move-result-object v7

    #@29f
    .line 266
    .local v7, "_arg3":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a2
    move-result v3

    #@2a3
    if-eqz v3, :cond_b

    #@2a5
    .line 267
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ac
    move-result-object v8

    #@2ad
    check-cast v8, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@2af
    :goto_b
    move-object/from16 v3, p0

    #@2b1
    .line 272
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    #@2b4
    move-result v24

    #@2b5
    .line 273
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b8
    .line 274
    move-object/from16 v0, p3

    #@2ba
    move/from16 v1, v24

    #@2bc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2bf
    .line 275
    const/4 v3, 0x1

    #@2c0
    return v3

    #@2c1
    .line 270
    .end local v24    # "_result":I
    :cond_b
    const/4 v8, 0x0

    #@2c2
    .local v8, "_arg4":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_b

    #@2c3
    .line 279
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v8    # "_arg4":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@2c6
    move-object/from16 v0, p2

    #@2c8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cb
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ce
    move-result-object v3

    #@2cf
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@2d2
    move-result-object v4

    #@2d3
    .line 283
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d6
    move-result v5

    #@2d7
    .line 285
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2da
    move-result-object v3

    #@2db
    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@2de
    move-result-object v20

    #@2df
    .line 286
    .local v20, "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    move-object/from16 v0, p0

    #@2e1
    move-object/from16 v1, v20

    #@2e3
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    #@2e6
    move-result v24

    #@2e7
    .line 287
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ea
    .line 288
    move-object/from16 v0, p3

    #@2ec
    move/from16 v1, v24

    #@2ee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f1
    .line 289
    const/4 v3, 0x1

    #@2f2
    return v3

    #@2f3
    .line 293
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v20    # "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v24    # "_result":I
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fb
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    #@2fe
    move-result-object v25

    #@2ff
    .line 295
    .local v25, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@302
    .line 296
    if-eqz v25, :cond_c

    #@304
    .line 297
    const/4 v3, 0x1

    #@305
    move-object/from16 v0, p3

    #@307
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@30a
    .line 298
    const/4 v3, 0x1

    #@30b
    move-object/from16 v0, v25

    #@30d
    move-object/from16 v1, p3

    #@30f
    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@312
    .line 303
    :goto_c
    const/4 v3, 0x1

    #@313
    return v3

    #@314
    .line 301
    :cond_c
    const/4 v3, 0x0

    #@315
    move-object/from16 v0, p3

    #@317
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@31a
    goto :goto_c

    #@31b
    .line 307
    .end local v25    # "_result":Landroid/content/ComponentName;
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@31e
    move-object/from16 v0, p2

    #@320
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@323
    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@326
    move-result v3

    #@327
    if-eqz v3, :cond_d

    #@329
    .line 310
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32b
    move-object/from16 v0, p2

    #@32d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@330
    move-result-object v11

    #@331
    check-cast v11, Landroid/os/Bundle;

    #@333
    .line 316
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v5

    #@337
    .line 318
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@33a
    move-result-object v3

    #@33b
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@33e
    move-result-object v21

    #@33f
    .line 320
    .local v21, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@342
    move-result-object v23

    #@343
    .line 321
    .local v23, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@345
    move-object/from16 v1, v21

    #@347
    move-object/from16 v2, v23

    #@349
    invoke-virtual {v0, v11, v5, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    #@34c
    move-result v28

    #@34d
    .line 322
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@350
    .line 323
    if-eqz v28, :cond_e

    #@352
    const/4 v3, 0x1

    #@353
    :goto_e
    move-object/from16 v0, p3

    #@355
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@358
    .line 324
    const/4 v3, 0x1

    #@359
    return v3

    #@35a
    .line 313
    .end local v5    # "_arg1":I
    .end local v21    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v23    # "_arg3":Landroid/os/IBinder;
    .end local v28    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    #@35b
    .local v11, "_arg0":Landroid/os/Bundle;
    goto :goto_d

    #@35c
    .line 323
    .end local v11    # "_arg0":Landroid/os/Bundle;
    .restart local v5    # "_arg1":I
    .restart local v21    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local v23    # "_arg3":Landroid/os/IBinder;
    .restart local v28    # "_result":Z
    :cond_e
    const/4 v3, 0x0

    #@35d
    goto :goto_e

    #@35e
    .line 328
    .end local v5    # "_arg1":I
    .end local v21    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v23    # "_arg3":Landroid/os/IBinder;
    .end local v28    # "_result":Z
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@361
    move-object/from16 v0, p2

    #@363
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@366
    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideCurrentSession()V

    #@369
    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36c
    .line 331
    const/4 v3, 0x1

    #@36d
    return v3

    #@36e
    .line 335
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@371
    move-object/from16 v0, p2

    #@373
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@376
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->launchVoiceAssistFromKeyguard()V

    #@379
    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37c
    .line 338
    const/4 v3, 0x1

    #@37d
    return v3

    #@37e
    .line 342
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@381
    move-object/from16 v0, p2

    #@383
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@386
    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isSessionRunning()Z

    #@389
    move-result v28

    #@38a
    .line 344
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38d
    .line 345
    if-eqz v28, :cond_f

    #@38f
    const/4 v3, 0x1

    #@390
    :goto_f
    move-object/from16 v0, p3

    #@392
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@395
    .line 346
    const/4 v3, 0x1

    #@396
    return v3

    #@397
    .line 345
    :cond_f
    const/4 v3, 0x0

    #@398
    goto :goto_f

    #@399
    .line 350
    .end local v28    # "_result":Z
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@39c
    move-object/from16 v0, p2

    #@39e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a1
    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsAssist()Z

    #@3a4
    move-result v28

    #@3a5
    .line 352
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a8
    .line 353
    if-eqz v28, :cond_10

    #@3aa
    const/4 v3, 0x1

    #@3ab
    :goto_10
    move-object/from16 v0, p3

    #@3ad
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3b0
    .line 354
    const/4 v3, 0x1

    #@3b1
    return v3

    #@3b2
    .line 353
    :cond_10
    const/4 v3, 0x0

    #@3b3
    goto :goto_10

    #@3b4
    .line 358
    .end local v28    # "_result":Z
    :sswitch_19
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@3b7
    move-object/from16 v0, p2

    #@3b9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bc
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsLaunchFromKeyguard()Z

    #@3bf
    move-result v28

    #@3c0
    .line 360
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c3
    .line 361
    if-eqz v28, :cond_11

    #@3c5
    const/4 v3, 0x1

    #@3c6
    :goto_11
    move-object/from16 v0, p3

    #@3c8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3cb
    .line 362
    const/4 v3, 0x1

    #@3cc
    return v3

    #@3cd
    .line 361
    :cond_11
    const/4 v3, 0x0

    #@3ce
    goto :goto_11

    #@3cf
    .line 366
    .end local v28    # "_result":Z
    :sswitch_1a
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@3d2
    move-object/from16 v0, p2

    #@3d4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d7
    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onLockscreenShown()V

    #@3da
    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3dd
    .line 369
    const/4 v3, 0x1

    #@3de
    return v3

    #@3df
    .line 373
    :sswitch_1b
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@3e2
    move-object/from16 v0, p2

    #@3e4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e7
    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ea
    move-result-object v3

    #@3eb
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionListener;

    #@3ee
    move-result-object v13

    #@3ef
    .line 376
    .local v13, "_arg0":Lcom/android/internal/app/IVoiceInteractionSessionListener;
    move-object/from16 v0, p0

    #@3f1
    invoke-virtual {v0, v13}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    #@3f4
    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f7
    .line 378
    const/4 v3, 0x1

    #@3f8
    return v3

    #@3f9
    .line 38
    nop

    #@3fa
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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
