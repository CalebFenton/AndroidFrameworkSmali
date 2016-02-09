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
    .locals 28
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
    .line 372
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
    move-result-object v14

    #@30
    check-cast v14, Landroid/os/Bundle;

    #@32
    .line 58
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v18

    #@36
    .line 59
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v18

    #@3a
    invoke-virtual {v0, v4, v14, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V

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
    .end local v18    # "_arg2":I
    :cond_0
    const/4 v14, 0x0

    #@43
    .local v14, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@44
    .line 65
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v14    # "_arg1":Landroid/os/Bundle;
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
    move-result-object v15

    #@58
    .line 71
    .local v15, "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    #@5f
    move-result-object v21

    #@60
    .line 72
    .local v21, "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v21

    #@64
    invoke-virtual {v0, v12, v15, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    #@67
    move-result v27

    #@68
    .line 73
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b
    .line 74
    if-eqz v27, :cond_1

    #@6d
    const/4 v3, 0x1

    #@6e
    :goto_1
    move-object/from16 v0, p3

    #@70
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@73
    .line 75
    const/4 v3, 0x1

    #@74
    return v3

    #@75
    .line 74
    :cond_1
    const/4 v3, 0x0

    #@76
    goto :goto_1

    #@77
    .line 79
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    .end local v21    # "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    .end local v27    # "_result":Z
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@7a
    move-object/from16 v0, p2

    #@7c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@82
    move-result-object v12

    #@83
    .line 83
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_2

    #@89
    .line 84
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@90
    move-result-object v14

    #@91
    check-cast v14, Landroid/os/Bundle;

    #@93
    .line 90
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v18

    #@97
    .line 91
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v18

    #@9b
    invoke-virtual {v0, v12, v14, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    #@9e
    move-result v27

    #@9f
    .line 92
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a2
    .line 93
    if-eqz v27, :cond_3

    #@a4
    const/4 v3, 0x1

    #@a5
    :goto_3
    move-object/from16 v0, p3

    #@a7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 94
    const/4 v3, 0x1

    #@ab
    return v3

    #@ac
    .line 87
    .end local v18    # "_arg2":I
    .end local v27    # "_result":Z
    :cond_2
    const/4 v14, 0x0

    #@ad
    .restart local v14    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    #@ae
    .line 93
    .end local v14    # "_arg1":Landroid/os/Bundle;
    .restart local v18    # "_arg2":I
    .restart local v27    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    #@af
    goto :goto_3

    #@b0
    .line 98
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v27    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b3
    move-object/from16 v0, p2

    #@b5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bb
    move-result-object v12

    #@bc
    .line 101
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideSessionFromSession(Landroid/os/IBinder;)Z

    #@c1
    move-result v27

    #@c2
    .line 102
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 103
    if-eqz v27, :cond_4

    #@c7
    const/4 v3, 0x1

    #@c8
    :goto_4
    move-object/from16 v0, p3

    #@ca
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 104
    const/4 v3, 0x1

    #@ce
    return v3

    #@cf
    .line 103
    :cond_4
    const/4 v3, 0x0

    #@d0
    goto :goto_4

    #@d1
    .line 108
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "_result":Z
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@dc
    move-result-object v12

    #@dd
    .line 112
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v3

    #@e1
    if-eqz v3, :cond_5

    #@e3
    .line 113
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ea
    move-result-object v13

    #@eb
    check-cast v13, Landroid/content/Intent;

    #@ed
    .line 119
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f0
    move-result-object v6

    #@f1
    .line 120
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v12, v13, v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    #@f6
    move-result v23

    #@f7
    .line 121
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fa
    .line 122
    move-object/from16 v0, p3

    #@fc
    move/from16 v1, v23

    #@fe
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@101
    .line 123
    const/4 v3, 0x1

    #@102
    return v3

    #@103
    .line 116
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":I
    :cond_5
    const/4 v13, 0x0

    #@104
    .local v13, "_arg1":Landroid/content/Intent;
    goto :goto_5

    #@105
    .line 127
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Landroid/content/Intent;
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10d
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@110
    move-result-object v12

    #@111
    .line 131
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@114
    move-result v3

    #@115
    if-eqz v3, :cond_6

    #@117
    const/16 v17, 0x1

    #@119
    .line 132
    .local v17, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    #@11b
    move/from16 v1, v17

    #@11d
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setKeepAwake(Landroid/os/IBinder;Z)V

    #@120
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@123
    .line 134
    const/4 v3, 0x1

    #@124
    return v3

    #@125
    .line 131
    .end local v17    # "_arg1":Z
    :cond_6
    const/16 v17, 0x0

    #@127
    .restart local v17    # "_arg1":Z
    goto :goto_6

    #@128
    .line 138
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Z
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@12b
    move-object/from16 v0, p2

    #@12d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@130
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@133
    move-result-object v12

    #@134
    .line 141
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@136
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->closeSystemDialogs(Landroid/os/IBinder;)V

    #@139
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13c
    .line 143
    const/4 v3, 0x1

    #@13d
    return v3

    #@13e
    .line 147
    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@141
    move-object/from16 v0, p2

    #@143
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@149
    move-result-object v12

    #@14a
    .line 150
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@14c
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->finish(Landroid/os/IBinder;)V

    #@14f
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 152
    const/4 v3, 0x1

    #@153
    return v3

    #@154
    .line 156
    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@157
    move-object/from16 v0, p2

    #@159
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v9

    #@160
    .line 159
    .local v9, "_arg0":I
    move-object/from16 v0, p0

    #@162
    invoke-virtual {v0, v9}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabledShowContext(I)V

    #@165
    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    .line 161
    const/4 v3, 0x1

    #@169
    return v3

    #@16a
    .line 165
    .end local v9    # "_arg0":I
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDisabledShowContext()I

    #@175
    move-result v23

    #@176
    .line 167
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@179
    .line 168
    move-object/from16 v0, p3

    #@17b
    move/from16 v1, v23

    #@17d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@180
    .line 169
    const/4 v3, 0x1

    #@181
    return v3

    #@182
    .line 173
    .end local v23    # "_result":I
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getUserDisabledShowContext()I

    #@18d
    move-result v23

    #@18e
    .line 175
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 176
    move-object/from16 v0, p3

    #@193
    move/from16 v1, v23

    #@195
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@198
    .line 177
    const/4 v3, 0x1

    #@199
    return v3

    #@19a
    .line 181
    .end local v23    # "_result":I
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@19d
    move-object/from16 v0, p2

    #@19f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a2
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v9

    #@1a6
    .line 185
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a9
    move-result-object v16

    #@1aa
    .line 186
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ac
    move-object/from16 v1, v16

    #@1ae
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@1b1
    move-result-object v25

    #@1b2
    .line 187
    .local v25, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b5
    .line 188
    if-eqz v25, :cond_7

    #@1b7
    .line 189
    const/4 v3, 0x1

    #@1b8
    move-object/from16 v0, p3

    #@1ba
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1bd
    .line 190
    const/4 v3, 0x1

    #@1be
    move-object/from16 v0, v25

    #@1c0
    move-object/from16 v1, p3

    #@1c2
    invoke-virtual {v0, v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c5
    .line 195
    :goto_7
    const/4 v3, 0x1

    #@1c6
    return v3

    #@1c7
    .line 193
    :cond_7
    const/4 v3, 0x0

    #@1c8
    move-object/from16 v0, p3

    #@1ca
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1cd
    goto :goto_7

    #@1ce
    .line 199
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v25    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@1d1
    move-object/from16 v0, p2

    #@1d3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d6
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d9
    move-result v3

    #@1da
    if-eqz v3, :cond_8

    #@1dc
    .line 202
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1de
    move-object/from16 v0, p2

    #@1e0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e3
    move-result-object v10

    #@1e4
    check-cast v10, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@1e6
    .line 207
    :goto_8
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v10}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    #@1eb
    move-result v23

    #@1ec
    .line 208
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ef
    .line 209
    move-object/from16 v0, p3

    #@1f1
    move/from16 v1, v23

    #@1f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f6
    .line 210
    const/4 v3, 0x1

    #@1f7
    return v3

    #@1f8
    .line 205
    .end local v23    # "_result":I
    :cond_8
    const/4 v10, 0x0

    #@1f9
    .local v10, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_8

    #@1fa
    .line 214
    .end local v10    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@1fd
    move-object/from16 v0, p2

    #@1ff
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@205
    move-result v9

    #@206
    .line 218
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@209
    move-result-object v16

    #@20a
    .line 219
    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20c
    move-object/from16 v1, v16

    #@20e
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    #@211
    move-result v23

    #@212
    .line 220
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@215
    .line 221
    move-object/from16 v0, p3

    #@217
    move/from16 v1, v23

    #@219
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21c
    .line 222
    const/4 v3, 0x1

    #@21d
    return v3

    #@21e
    .line 226
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v23    # "_result":I
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@221
    move-object/from16 v0, p2

    #@223
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@226
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@229
    move-result-object v3

    #@22a
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@22d
    move-result-object v4

    #@22e
    .line 229
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    move-object/from16 v0, p0

    #@230
    invoke-virtual {v0, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@233
    move-result-object v26

    #@234
    .line 230
    .local v26, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@237
    .line 231
    if-eqz v26, :cond_9

    #@239
    .line 232
    const/4 v3, 0x1

    #@23a
    move-object/from16 v0, p3

    #@23c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23f
    .line 233
    const/4 v3, 0x1

    #@240
    move-object/from16 v0, v26

    #@242
    move-object/from16 v1, p3

    #@244
    invoke-virtual {v0, v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->writeToParcel(Landroid/os/Parcel;I)V

    #@247
    .line 238
    :goto_9
    const/4 v3, 0x1

    #@248
    return v3

    #@249
    .line 236
    :cond_9
    const/4 v3, 0x0

    #@24a
    move-object/from16 v0, p3

    #@24c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24f
    goto :goto_9

    #@250
    .line 242
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v26    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@253
    move-object/from16 v0, p2

    #@255
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@258
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25b
    move-result-object v3

    #@25c
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@25f
    move-result-object v4

    #@260
    .line 246
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@263
    move-result v5

    #@264
    .line 248
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@267
    move-result-object v6

    #@268
    .line 249
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@26a
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z

    #@26d
    move-result v27

    #@26e
    .line 250
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@271
    .line 251
    if-eqz v27, :cond_a

    #@273
    const/4 v3, 0x1

    #@274
    :goto_a
    move-object/from16 v0, p3

    #@276
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@279
    .line 252
    const/4 v3, 0x1

    #@27a
    return v3

    #@27b
    .line 251
    :cond_a
    const/4 v3, 0x0

    #@27c
    goto :goto_a

    #@27d
    .line 256
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@280
    move-object/from16 v0, p2

    #@282
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@285
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@288
    move-result-object v3

    #@289
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@28c
    move-result-object v4

    #@28d
    .line 260
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@290
    move-result v5

    #@291
    .line 262
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@294
    move-result-object v6

    #@295
    .line 264
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@298
    move-result-object v3

    #@299
    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@29c
    move-result-object v7

    #@29d
    .line 266
    .local v7, "_arg3":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a0
    move-result v3

    #@2a1
    if-eqz v3, :cond_b

    #@2a3
    .line 267
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2aa
    move-result-object v8

    #@2ab
    check-cast v8, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@2ad
    :goto_b
    move-object/from16 v3, p0

    #@2af
    .line 272
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    #@2b2
    move-result v23

    #@2b3
    .line 273
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b6
    .line 274
    move-object/from16 v0, p3

    #@2b8
    move/from16 v1, v23

    #@2ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2bd
    .line 275
    const/4 v3, 0x1

    #@2be
    return v3

    #@2bf
    .line 270
    .end local v23    # "_result":I
    :cond_b
    const/4 v8, 0x0

    #@2c0
    .local v8, "_arg4":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_b

    #@2c1
    .line 279
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v8    # "_arg4":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@2c4
    move-object/from16 v0, p2

    #@2c6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c9
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2cc
    move-result-object v3

    #@2cd
    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    #@2d0
    move-result-object v4

    #@2d1
    .line 283
    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d4
    move-result v5

    #@2d5
    .line 285
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2d8
    move-result-object v3

    #@2d9
    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@2dc
    move-result-object v19

    #@2dd
    .line 286
    .local v19, "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    move-object/from16 v0, p0

    #@2df
    move-object/from16 v1, v19

    #@2e1
    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    #@2e4
    move-result v23

    #@2e5
    .line 287
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e8
    .line 288
    move-object/from16 v0, p3

    #@2ea
    move/from16 v1, v23

    #@2ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2ef
    .line 289
    const/4 v3, 0x1

    #@2f0
    return v3

    #@2f1
    .line 293
    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v19    # "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v23    # "_result":I
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@2f4
    move-object/from16 v0, p2

    #@2f6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f9
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    #@2fc
    move-result-object v24

    #@2fd
    .line 295
    .local v24, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@300
    .line 296
    if-eqz v24, :cond_c

    #@302
    .line 297
    const/4 v3, 0x1

    #@303
    move-object/from16 v0, p3

    #@305
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@308
    .line 298
    const/4 v3, 0x1

    #@309
    move-object/from16 v0, v24

    #@30b
    move-object/from16 v1, p3

    #@30d
    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@310
    .line 303
    :goto_c
    const/4 v3, 0x1

    #@311
    return v3

    #@312
    .line 301
    :cond_c
    const/4 v3, 0x0

    #@313
    move-object/from16 v0, p3

    #@315
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@318
    goto :goto_c

    #@319
    .line 307
    .end local v24    # "_result":Landroid/content/ComponentName;
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@31c
    move-object/from16 v0, p2

    #@31e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@321
    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v3

    #@325
    if-eqz v3, :cond_d

    #@327
    .line 310
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@329
    move-object/from16 v0, p2

    #@32b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32e
    move-result-object v11

    #@32f
    check-cast v11, Landroid/os/Bundle;

    #@331
    .line 316
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@334
    move-result v5

    #@335
    .line 318
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@338
    move-result-object v3

    #@339
    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@33c
    move-result-object v20

    #@33d
    .line 320
    .local v20, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@340
    move-result-object v22

    #@341
    .line 321
    .local v22, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@343
    move-object/from16 v1, v20

    #@345
    move-object/from16 v2, v22

    #@347
    invoke-virtual {v0, v11, v5, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    #@34a
    move-result v27

    #@34b
    .line 322
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34e
    .line 323
    if-eqz v27, :cond_e

    #@350
    const/4 v3, 0x1

    #@351
    :goto_e
    move-object/from16 v0, p3

    #@353
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@356
    .line 324
    const/4 v3, 0x1

    #@357
    return v3

    #@358
    .line 313
    .end local v5    # "_arg1":I
    .end local v20    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v22    # "_arg3":Landroid/os/IBinder;
    .end local v27    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    #@359
    .local v11, "_arg0":Landroid/os/Bundle;
    goto :goto_d

    #@35a
    .line 323
    .end local v11    # "_arg0":Landroid/os/Bundle;
    .restart local v5    # "_arg1":I
    .restart local v20    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local v22    # "_arg3":Landroid/os/IBinder;
    .restart local v27    # "_result":Z
    :cond_e
    const/4 v3, 0x0

    #@35b
    goto :goto_e

    #@35c
    .line 328
    .end local v5    # "_arg1":I
    .end local v20    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v22    # "_arg3":Landroid/os/IBinder;
    .end local v27    # "_result":Z
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideCurrentSession()V

    #@367
    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36a
    .line 331
    const/4 v3, 0x1

    #@36b
    return v3

    #@36c
    .line 335
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@36f
    move-object/from16 v0, p2

    #@371
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@374
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->launchVoiceAssistFromKeyguard()V

    #@377
    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37a
    .line 338
    const/4 v3, 0x1

    #@37b
    return v3

    #@37c
    .line 342
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@37f
    move-object/from16 v0, p2

    #@381
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@384
    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isSessionRunning()Z

    #@387
    move-result v27

    #@388
    .line 344
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38b
    .line 345
    if-eqz v27, :cond_f

    #@38d
    const/4 v3, 0x1

    #@38e
    :goto_f
    move-object/from16 v0, p3

    #@390
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@393
    .line 346
    const/4 v3, 0x1

    #@394
    return v3

    #@395
    .line 345
    :cond_f
    const/4 v3, 0x0

    #@396
    goto :goto_f

    #@397
    .line 350
    .end local v27    # "_result":Z
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@39a
    move-object/from16 v0, p2

    #@39c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39f
    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsAssist()Z

    #@3a2
    move-result v27

    #@3a3
    .line 352
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 353
    if-eqz v27, :cond_10

    #@3a8
    const/4 v3, 0x1

    #@3a9
    :goto_10
    move-object/from16 v0, p3

    #@3ab
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3ae
    .line 354
    const/4 v3, 0x1

    #@3af
    return v3

    #@3b0
    .line 353
    :cond_10
    const/4 v3, 0x0

    #@3b1
    goto :goto_10

    #@3b2
    .line 358
    .end local v27    # "_result":Z
    :sswitch_19
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@3b5
    move-object/from16 v0, p2

    #@3b7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ba
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsLaunchFromKeyguard()Z

    #@3bd
    move-result v27

    #@3be
    .line 360
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c1
    .line 361
    if-eqz v27, :cond_11

    #@3c3
    const/4 v3, 0x1

    #@3c4
    :goto_11
    move-object/from16 v0, p3

    #@3c6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3c9
    .line 362
    const/4 v3, 0x1

    #@3ca
    return v3

    #@3cb
    .line 361
    :cond_11
    const/4 v3, 0x0

    #@3cc
    goto :goto_11

    #@3cd
    .line 366
    .end local v27    # "_result":Z
    :sswitch_1a
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@3d0
    move-object/from16 v0, p2

    #@3d2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d5
    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onLockscreenShown()V

    #@3d8
    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3db
    .line 369
    const/4 v3, 0x1

    #@3dc
    return v3

    #@3dd
    .line 38
    nop

    #@3de
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
