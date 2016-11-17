.class public abstract Landroid/speech/tts/ITextToSpeechService$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechService"

.field static final TRANSACTION_getClientDefaultLanguage:I = 0x8

.field static final TRANSACTION_getDefaultVoiceNameFor:I = 0xf

.field static final TRANSACTION_getFeaturesForLanguage:I = 0xa

.field static final TRANSACTION_getLanguage:I = 0x7

.field static final TRANSACTION_getVoices:I = 0xd

.field static final TRANSACTION_isLanguageAvailable:I = 0x9

.field static final TRANSACTION_isSpeaking:I = 0x5

.field static final TRANSACTION_loadLanguage:I = 0xb

.field static final TRANSACTION_loadVoice:I = 0xe

.field static final TRANSACTION_playAudio:I = 0x3

.field static final TRANSACTION_playSilence:I = 0x4

.field static final TRANSACTION_setCallback:I = 0xc

.field static final TRANSACTION_speak:I = 0x1

.field static final TRANSACTION_stop:I = 0x6

.field static final TRANSACTION_synthesizeToFileDescriptor:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.speech.tts.ITextToSpeechService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/speech/tts/ITextToSpeechService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 279
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v5

    #@1e
    .line 56
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 57
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/lang/CharSequence;

    #@2e
    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v7

    #@32
    .line 65
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 66
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v8

    #@40
    check-cast v8, Landroid/os/Bundle;

    #@42
    .line 72
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v9

    #@46
    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    #@48
    .line 73
    invoke-virtual/range {v4 .. v9}, Landroid/speech/tts/ITextToSpeechService$Stub;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@4b
    move-result v28

    #@4c
    .line 74
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 75
    move-object/from16 v0, p3

    #@51
    move/from16 v1, v28

    #@53
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 76
    const/4 v4, 0x1

    #@57
    return v4

    #@58
    .line 60
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v28    # "_result":I
    :cond_0
    const/4 v6, 0x0

    #@59
    .local v6, "_arg1":Ljava/lang/CharSequence;
    goto :goto_0

    #@5a
    .line 69
    .end local v6    # "_arg1":Ljava/lang/CharSequence;
    .restart local v7    # "_arg2":I
    :cond_1
    const/4 v8, 0x0

    #@5b
    .local v8, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    #@5c
    .line 80
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@5f
    move-object/from16 v0, p2

    #@61
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@67
    move-result-object v5

    #@68
    .line 84
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_2

    #@6e
    .line 85
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@70
    move-object/from16 v0, p2

    #@72
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@75
    move-result-object v6

    #@76
    check-cast v6, Ljava/lang/CharSequence;

    #@78
    .line 91
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_3

    #@7e
    .line 92
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@80
    move-object/from16 v0, p2

    #@82
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@85
    move-result-object v13

    #@86
    check-cast v13, Landroid/os/ParcelFileDescriptor;

    #@88
    .line 98
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_4

    #@8e
    .line 99
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@90
    move-object/from16 v0, p2

    #@92
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@95
    move-result-object v8

    #@96
    check-cast v8, Landroid/os/Bundle;

    #@98
    .line 105
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v10, p0

    #@9e
    move-object v11, v5

    #@9f
    move-object v12, v6

    #@a0
    move-object v14, v8

    #@a1
    move-object v15, v9

    #@a2
    .line 106
    invoke-virtual/range {v10 .. v15}, Landroid/speech/tts/ITextToSpeechService$Stub;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    #@a5
    move-result v28

    #@a6
    .line 107
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9
    .line 108
    move-object/from16 v0, p3

    #@ab
    move/from16 v1, v28

    #@ad
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b0
    .line 109
    const/4 v4, 0x1

    #@b1
    return v4

    #@b2
    .line 88
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v28    # "_result":I
    :cond_2
    const/4 v6, 0x0

    #@b3
    .restart local v6    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_2

    #@b4
    .line 95
    .end local v6    # "_arg1":Ljava/lang/CharSequence;
    :cond_3
    const/4 v13, 0x0

    #@b5
    .local v13, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@b6
    .line 102
    .end local v13    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_4
    const/4 v8, 0x0

    #@b7
    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_4

    #@b8
    .line 113
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg3":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@bb
    move-object/from16 v0, p2

    #@bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c3
    move-result-object v5

    #@c4
    .line 117
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v4

    #@c8
    if-eqz v4, :cond_5

    #@ca
    .line 118
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc
    move-object/from16 v0, p2

    #@ce
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d1
    move-result-object v16

    #@d2
    check-cast v16, Landroid/net/Uri;

    #@d4
    .line 124
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v7

    #@d8
    .line 126
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db
    move-result v4

    #@dc
    if-eqz v4, :cond_6

    #@de
    .line 127
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e5
    move-result-object v8

    #@e6
    check-cast v8, Landroid/os/Bundle;

    #@e8
    .line 133
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@eb
    move-result-object v9

    #@ec
    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v14, p0

    #@ee
    move-object v15, v5

    #@ef
    move/from16 v17, v7

    #@f1
    move-object/from16 v18, v8

    #@f3
    move-object/from16 v19, v9

    #@f5
    .line 134
    invoke-virtual/range {v14 .. v19}, Landroid/speech/tts/ITextToSpeechService$Stub;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    #@f8
    move-result v28

    #@f9
    .line 135
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc
    .line 136
    move-object/from16 v0, p3

    #@fe
    move/from16 v1, v28

    #@100
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    .line 137
    const/4 v4, 0x1

    #@104
    return v4

    #@105
    .line 121
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v28    # "_result":I
    :cond_5
    const/16 v16, 0x0

    #@107
    .local v16, "_arg1":Landroid/net/Uri;
    goto :goto_5

    #@108
    .line 130
    .end local v16    # "_arg1":Landroid/net/Uri;
    .restart local v7    # "_arg2":I
    :cond_6
    const/4 v8, 0x0

    #@109
    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_6

    #@10a
    .line 141
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@10d
    move-object/from16 v0, p2

    #@10f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@112
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@115
    move-result-object v5

    #@116
    .line 145
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@119
    move-result-wide v20

    #@11a
    .line 147
    .local v20, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v7

    #@11e
    .line 149
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@121
    move-result-object v23

    #@122
    .local v23, "_arg3":Ljava/lang/String;
    move-object/from16 v18, p0

    #@124
    move-object/from16 v19, v5

    #@126
    move/from16 v22, v7

    #@128
    .line 150
    invoke-virtual/range {v18 .. v23}, Landroid/speech/tts/ITextToSpeechService$Stub;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    #@12b
    move-result v28

    #@12c
    .line 151
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12f
    .line 152
    move-object/from16 v0, p3

    #@131
    move/from16 v1, v28

    #@133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    .line 153
    const/4 v4, 0x1

    #@137
    return v4

    #@138
    .line 157
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg2":I
    .end local v20    # "_arg1":J
    .end local v23    # "_arg3":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeaking()Z

    #@143
    move-result v31

    #@144
    .line 159
    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@147
    .line 160
    if-eqz v31, :cond_7

    #@149
    const/4 v4, 0x1

    #@14a
    :goto_7
    move-object/from16 v0, p3

    #@14c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14f
    .line 161
    const/4 v4, 0x1

    #@150
    return v4

    #@151
    .line 160
    :cond_7
    const/4 v4, 0x0

    #@152
    goto :goto_7

    #@153
    .line 165
    .end local v31    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@156
    move-object/from16 v0, p2

    #@158
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15b
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@15e
    move-result-object v5

    #@15f
    .line 168
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@161
    invoke-virtual {v0, v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->stop(Landroid/os/IBinder;)I

    #@164
    move-result v28

    #@165
    .line 169
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    .line 170
    move-object/from16 v0, p3

    #@16a
    move/from16 v1, v28

    #@16c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16f
    .line 171
    const/4 v4, 0x1

    #@170
    return v4

    #@171
    .line 175
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getLanguage()[Ljava/lang/String;

    #@17c
    move-result-object v32

    #@17d
    .line 177
    .local v32, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 178
    move-object/from16 v0, p3

    #@182
    move-object/from16 v1, v32

    #@184
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@187
    .line 179
    const/4 v4, 0x1

    #@188
    return v4

    #@189
    .line 183
    .end local v32    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getClientDefaultLanguage()[Ljava/lang/String;

    #@194
    move-result-object v32

    #@195
    .line 185
    .restart local v32    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@198
    .line 186
    move-object/from16 v0, p3

    #@19a
    move-object/from16 v1, v32

    #@19c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19f
    .line 187
    const/4 v4, 0x1

    #@1a0
    return v4

    #@1a1
    .line 191
    .end local v32    # "_result":[Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a9
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ac
    move-result-object v24

    #@1ad
    .line 195
    .local v24, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b0
    move-result-object v26

    #@1b1
    .line 197
    .local v26, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b4
    move-result-object v27

    #@1b5
    .line 198
    .local v27, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, v24

    #@1b9
    move-object/from16 v2, v26

    #@1bb
    move-object/from16 v3, v27

    #@1bd
    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@1c0
    move-result v28

    #@1c1
    .line 199
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c4
    .line 200
    move-object/from16 v0, p3

    #@1c6
    move/from16 v1, v28

    #@1c8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1cb
    .line 201
    const/4 v4, 0x1

    #@1cc
    return v4

    #@1cd
    .line 205
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@1d0
    move-object/from16 v0, p2

    #@1d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d5
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d8
    move-result-object v24

    #@1d9
    .line 209
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1dc
    move-result-object v26

    #@1dd
    .line 211
    .restart local v26    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e0
    move-result-object v27

    #@1e1
    .line 212
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1e3
    move-object/from16 v1, v24

    #@1e5
    move-object/from16 v2, v26

    #@1e7
    move-object/from16 v3, v27

    #@1e9
    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@1ec
    move-result-object v32

    #@1ed
    .line 213
    .restart local v32    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f0
    .line 214
    move-object/from16 v0, p3

    #@1f2
    move-object/from16 v1, v32

    #@1f4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1f7
    .line 215
    const/4 v4, 0x1

    #@1f8
    return v4

    #@1f9
    .line 219
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v32    # "_result":[Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@1fc
    move-object/from16 v0, p2

    #@1fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@201
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@204
    move-result-object v5

    #@205
    .line 223
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@208
    move-result-object v26

    #@209
    .line 225
    .restart local v26    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20c
    move-result-object v27

    #@20d
    .line 227
    .restart local v27    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@210
    move-result-object v23

    #@211
    .line 228
    .restart local v23    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@213
    move-object/from16 v1, v26

    #@215
    move-object/from16 v2, v27

    #@217
    move-object/from16 v3, v23

    #@219
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@21c
    move-result v28

    #@21d
    .line 229
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@220
    .line 230
    move-object/from16 v0, p3

    #@222
    move/from16 v1, v28

    #@224
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@227
    .line 231
    const/4 v4, 0x1

    #@228
    return v4

    #@229
    .line 235
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg3":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@22c
    move-object/from16 v0, p2

    #@22e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@231
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@234
    move-result-object v5

    #@235
    .line 239
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@238
    move-result-object v4

    #@239
    invoke-static {v4}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;

    #@23c
    move-result-object v25

    #@23d
    .line 240
    .local v25, "_arg1":Landroid/speech/tts/ITextToSpeechCallback;
    move-object/from16 v0, p0

    #@23f
    move-object/from16 v1, v25

    #@241
    invoke-virtual {v0, v5, v1}, Landroid/speech/tts/ITextToSpeechService$Stub;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    #@244
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@247
    .line 242
    const/4 v4, 0x1

    #@248
    return v4

    #@249
    .line 246
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg1":Landroid/speech/tts/ITextToSpeechCallback;
    :sswitch_d
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@24c
    move-object/from16 v0, p2

    #@24e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@251
    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getVoices()Ljava/util/List;

    #@254
    move-result-object v30

    #@255
    .line 248
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@258
    .line 249
    move-object/from16 v0, p3

    #@25a
    move-object/from16 v1, v30

    #@25c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@25f
    .line 250
    const/4 v4, 0x1

    #@260
    return v4

    #@261
    .line 254
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :sswitch_e
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@264
    move-object/from16 v0, p2

    #@266
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@269
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26c
    move-result-object v5

    #@26d
    .line 258
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@270
    move-result-object v26

    #@271
    .line 259
    .restart local v26    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@273
    move-object/from16 v1, v26

    #@275
    invoke-virtual {v0, v5, v1}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    #@278
    move-result v28

    #@279
    .line 260
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27c
    .line 261
    move-object/from16 v0, p3

    #@27e
    move/from16 v1, v28

    #@280
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@283
    .line 262
    const/4 v4, 0x1

    #@284
    return v4

    #@285
    .line 266
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "android.speech.tts.ITextToSpeechService"

    #@288
    move-object/from16 v0, p2

    #@28a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28d
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@290
    move-result-object v24

    #@291
    .line 270
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@294
    move-result-object v26

    #@295
    .line 272
    .restart local v26    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@298
    move-result-object v27

    #@299
    .line 273
    .restart local v27    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@29b
    move-object/from16 v1, v24

    #@29d
    move-object/from16 v2, v26

    #@29f
    move-object/from16 v3, v27

    #@2a1
    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a4
    move-result-object v29

    #@2a5
    .line 274
    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a8
    .line 275
    move-object/from16 v0, p3

    #@2aa
    move-object/from16 v1, v29

    #@2ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2af
    .line 276
    const/4 v4, 0x1

    #@2b0
    return v4

    #@2b1
    .line 43
    nop

    #@2b2
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
