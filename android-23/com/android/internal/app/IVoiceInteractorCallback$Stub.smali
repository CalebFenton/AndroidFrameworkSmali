.class public abstract Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractorCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractorCallback"

.field static final TRANSACTION_deliverAbortVoiceResult:I = 0x4

.field static final TRANSACTION_deliverCancel:I = 0x6

.field static final TRANSACTION_deliverCommandResult:I = 0x5

.field static final TRANSACTION_deliverCompleteVoiceResult:I = 0x3

.field static final TRANSACTION_deliverConfirmationResult:I = 0x1

.field static final TRANSACTION_deliverPickOptionResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractorCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;
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
    const-string/jumbo v1, "com.android.internal.app.IVoiceInteractorCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractorCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/internal/app/IVoiceInteractorCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v7

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@1d
    move-result-object v0

    #@1e
    .line 54
    .local v0, "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    const/4 v2, 0x1

    #@25
    .line 56
    .local v2, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    .line 57
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/os/Bundle;

    #@33
    .line 62
    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V

    #@36
    .line 63
    return v7

    #@37
    .line 54
    .end local v2    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    #@38
    .restart local v2    # "_arg1":Z
    goto :goto_0

    #@39
    .line 60
    :cond_1
    const/4 v3, 0x0

    #@3a
    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    #@3b
    .line 67
    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@3e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@44
    move-result-object v6

    #@45
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@48
    move-result-object v0

    #@49
    .line 71
    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_2

    #@4f
    const/4 v2, 0x1

    #@50
    .line 73
    .restart local v2    # "_arg1":Z
    :goto_2
    sget-object v6, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@55
    move-result-object v4

    #@56
    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@58
    .line 75
    .local v4, "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_3

    #@5e
    .line 76
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v5

    #@64
    check-cast v5, Landroid/os/Bundle;

    #@66
    .line 81
    :goto_3
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    #@69
    .line 82
    return v7

    #@6a
    .line 71
    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_2
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "_arg1":Z
    goto :goto_2

    #@6c
    .line 79
    .restart local v4    # "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_3
    const/4 v5, 0x0

    #@6d
    .local v5, "_arg3":Landroid/os/Bundle;
    goto :goto_3

    #@6e
    .line 86
    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@71
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@77
    move-result-object v6

    #@78
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@7b
    move-result-object v0

    #@7c
    .line 90
    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_4

    #@82
    .line 91
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@84
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    check-cast v1, Landroid/os/Bundle;

    #@8a
    .line 96
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V

    #@8d
    .line 97
    return v7

    #@8e
    .line 94
    :cond_4
    const/4 v1, 0x0

    #@8f
    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_4

    #@90
    .line 101
    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@93
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@99
    move-result-object v6

    #@9a
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@9d
    move-result-object v0

    #@9e
    .line 105
    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v6

    #@a2
    if-eqz v6, :cond_5

    #@a4
    .line 106
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a6
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a9
    move-result-object v1

    #@aa
    check-cast v1, Landroid/os/Bundle;

    #@ac
    .line 111
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V

    #@af
    .line 112
    return v7

    #@b0
    .line 109
    :cond_5
    const/4 v1, 0x0

    #@b1
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    #@b2
    .line 116
    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@b5
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bb
    move-result-object v6

    #@bc
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@bf
    move-result-object v0

    #@c0
    .line 120
    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v6

    #@c4
    if-eqz v6, :cond_6

    #@c6
    const/4 v2, 0x1

    #@c7
    .line 122
    .restart local v2    # "_arg1":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v6

    #@cb
    if-eqz v6, :cond_7

    #@cd
    .line 123
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cf
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d2
    move-result-object v3

    #@d3
    check-cast v3, Landroid/os/Bundle;

    #@d5
    .line 128
    :goto_7
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V

    #@d8
    .line 129
    return v7

    #@d9
    .line 120
    .end local v2    # "_arg1":Z
    :cond_6
    const/4 v2, 0x0

    #@da
    .restart local v2    # "_arg1":Z
    goto :goto_6

    #@db
    .line 126
    :cond_7
    const/4 v3, 0x0

    #@dc
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_7

    #@dd
    .line 133
    .end local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v6, "com.android.internal.app.IVoiceInteractorCallback"

    #@e0
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e6
    move-result-object v6

    #@e7
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@ea
    move-result-object v0

    #@eb
    .line 136
    .restart local v0    # "_arg0":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V

    #@ee
    .line 137
    return v7

    #@ef
    .line 41
    nop

    #@f0
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
