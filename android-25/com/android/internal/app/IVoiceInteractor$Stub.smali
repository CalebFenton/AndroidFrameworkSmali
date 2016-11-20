.class public abstract Lcom/android/internal/app/IVoiceInteractor$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractor"

.field static final TRANSACTION_startAbortVoice:I = 0x4

.field static final TRANSACTION_startCommand:I = 0x5

.field static final TRANSACTION_startCompleteVoice:I = 0x3

.field static final TRANSACTION_startConfirmation:I = 0x1

.field static final TRANSACTION_startPickOption:I = 0x2

.field static final TRANSACTION_supportsCommands:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.IVoiceInteractor"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractor;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/internal/app/IVoiceInteractor;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    #@21
    move-result-object v2

    #@22
    .line 56
    .local v2, "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 57
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    #@30
    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 64
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v8

    #@3c
    check-cast v8, Landroid/os/Bundle;

    #@3e
    .line 69
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@41
    move-result-object v9

    #@42
    .line 70
    .local v9, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    .line 71
    if-eqz v9, :cond_2

    #@47
    invoke-interface {v9}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@4a
    move-result-object v0

    #@4b
    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@4e
    .line 72
    const/4 v0, 0x1

    #@4f
    return v0

    #@50
    .line 60
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_0
    const/4 v3, 0x0

    #@51
    .local v3, "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_0

    #@52
    .line 67
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :cond_1
    const/4 v8, 0x0

    #@53
    .local v8, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    #@54
    .line 71
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_2
    const/4 v0, 0x0

    #@55
    goto :goto_2

    #@56
    .line 76
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :sswitch_2
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 80
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63
    move-result-object v0

    #@64
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    #@67
    move-result-object v2

    #@68
    .line 82
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v0

    #@6c
    if-eqz v0, :cond_3

    #@6e
    .line 83
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    #@70
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@73
    move-result-object v3

    #@74
    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    #@76
    .line 89
    :goto_3
    sget-object v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    #@78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@7b
    move-result-object v4

    #@7c
    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@7e
    .line 91
    .local v4, "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@86
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89
    move-result-object v5

    #@8a
    check-cast v5, Landroid/os/Bundle;

    #@8c
    :goto_4
    move-object v0, p0

    #@8d
    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@90
    move-result-object v9

    #@91
    .line 98
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 99
    if-eqz v9, :cond_5

    #@96
    invoke-interface {v9}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@99
    move-result-object v0

    #@9a
    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9d
    .line 100
    const/4 v0, 0x1

    #@9e
    return v0

    #@9f
    .line 86
    .end local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_3
    const/4 v3, 0x0

    #@a0
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_3

    #@a1
    .line 95
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .restart local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_4
    const/4 v5, 0x0

    #@a2
    .local v5, "_arg4":Landroid/os/Bundle;
    goto :goto_4

    #@a3
    .line 99
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_5
    const/4 v0, 0x0

    #@a4
    goto :goto_5

    #@a5
    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v4    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :sswitch_3
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@a8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    .line 108
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2
    move-result-object v0

    #@b3
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    #@b6
    move-result-object v2

    #@b7
    .line 110
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v0

    #@bb
    if-eqz v0, :cond_6

    #@bd
    .line 111
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bf
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c2
    move-result-object v3

    #@c3
    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    #@c5
    .line 117
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c8
    move-result v0

    #@c9
    if-eqz v0, :cond_7

    #@cb
    .line 118
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cd
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d0
    move-result-object v8

    #@d1
    check-cast v8, Landroid/os/Bundle;

    #@d3
    .line 123
    :goto_7
    invoke-virtual {p0, v1, v2, v3, v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@d6
    move-result-object v9

    #@d7
    .line 124
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@da
    .line 125
    if-eqz v9, :cond_8

    #@dc
    invoke-interface {v9}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@df
    move-result-object v0

    #@e0
    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e3
    .line 126
    const/4 v0, 0x1

    #@e4
    return v0

    #@e5
    .line 114
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_6
    const/4 v3, 0x0

    #@e6
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_6

    #@e7
    .line 121
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :cond_7
    const/4 v8, 0x0

    #@e8
    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_7

    #@e9
    .line 125
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_8
    const/4 v0, 0x0

    #@ea
    goto :goto_8

    #@eb
    .line 130
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :sswitch_4
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@ee
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f1
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    .line 134
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f8
    move-result-object v0

    #@f9
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    #@fc
    move-result-object v2

    #@fd
    .line 136
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v0

    #@101
    if-eqz v0, :cond_9

    #@103
    .line 137
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    #@105
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@108
    move-result-object v3

    #@109
    check-cast v3, Landroid/app/VoiceInteractor$Prompt;

    #@10b
    .line 143
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v0

    #@10f
    if-eqz v0, :cond_a

    #@111
    .line 144
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@113
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@116
    move-result-object v8

    #@117
    check-cast v8, Landroid/os/Bundle;

    #@119
    .line 149
    :goto_a
    invoke-virtual {p0, v1, v2, v3, v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@11c
    move-result-object v9

    #@11d
    .line 150
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@120
    .line 151
    if-eqz v9, :cond_b

    #@122
    invoke-interface {v9}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@125
    move-result-object v0

    #@126
    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@129
    .line 152
    const/4 v0, 0x1

    #@12a
    return v0

    #@12b
    .line 140
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_9
    const/4 v3, 0x0

    #@12c
    .restart local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    goto :goto_9

    #@12d
    .line 147
    .end local v3    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    :cond_a
    const/4 v8, 0x0

    #@12e
    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_a

    #@12f
    .line 151
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_b
    const/4 v0, 0x0

    #@130
    goto :goto_b

    #@131
    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :sswitch_5
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@134
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@137
    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    .line 160
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13e
    move-result-object v0

    #@13f
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    #@142
    move-result-object v2

    #@143
    .line 162
    .restart local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@146
    move-result-object v7

    #@147
    .line 164
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v0

    #@14b
    if-eqz v0, :cond_c

    #@14d
    .line 165
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@152
    move-result-object v8

    #@153
    check-cast v8, Landroid/os/Bundle;

    #@155
    .line 170
    :goto_c
    invoke-virtual {p0, v1, v2, v7, v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@158
    move-result-object v9

    #@159
    .line 171
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    .line 172
    if-eqz v9, :cond_d

    #@15e
    invoke-interface {v9}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@161
    move-result-object v0

    #@162
    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@165
    .line 173
    const/4 v0, 0x1

    #@166
    return v0

    #@167
    .line 168
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_c
    const/4 v8, 0x0

    #@168
    .restart local v8    # "_arg3":Landroid/os/Bundle;
    goto :goto_c

    #@169
    .line 172
    .end local v8    # "_arg3":Landroid/os/Bundle;
    .restart local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :cond_d
    const/4 v0, 0x0

    #@16a
    goto :goto_d

    #@16b
    .line 177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :sswitch_6
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractor"

    #@16e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171
    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@174
    move-result-object v1

    #@175
    .line 181
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@178
    move-result-object v6

    #@179
    .line 182
    .local v6, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z

    #@17c
    move-result-object v10

    #@17d
    .line 183
    .local v10, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 184
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@183
    .line 185
    const/4 v0, 0x1

    #@184
    return v0

    #@185
    .line 41
    nop

    #@186
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
