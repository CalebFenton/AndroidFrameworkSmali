.class public abstract Landroid/speech/IRecognitionListener$Stub;
.super Landroid/os/Binder;
.source "IRecognitionListener.java"

# interfaces
.implements Landroid/speech/IRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionListener"

.field static final TRANSACTION_onBeginningOfSpeech:I = 0x2

.field static final TRANSACTION_onBufferReceived:I = 0x4

.field static final TRANSACTION_onEndOfSpeech:I = 0x5

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onEvent:I = 0x9

.field static final TRANSACTION_onPartialResults:I = 0x8

.field static final TRANSACTION_onReadyForSpeech:I = 0x1

.field static final TRANSACTION_onResults:I = 0x7

.field static final TRANSACTION_onRmsChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.speech.IRecognitionListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.speech.IRecognitionListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/speech/IRecognitionListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/speech/IRecognitionListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/speech/IRecognitionListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/speech/IRecognitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v6

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 56
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/os/Bundle;

    #@24
    .line 61
    :goto_0
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onReadyForSpeech(Landroid/os/Bundle;)V

    #@27
    .line 62
    return v6

    #@28
    .line 59
    :cond_0
    const/4 v2, 0x0

    #@29
    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@2a
    .line 66
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@2d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 67
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onBeginningOfSpeech()V

    #@33
    .line 68
    return v6

    #@34
    .line 72
    :sswitch_3
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@37
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@3d
    move-result v0

    #@3e
    .line 75
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onRmsChanged(F)V

    #@41
    .line 76
    return v6

    #@42
    .line 80
    .end local v0    # "_arg0":F
    :sswitch_4
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@45
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4b
    move-result-object v3

    #@4c
    .line 83
    .local v3, "_arg0":[B
    invoke-virtual {p0, v3}, Landroid/speech/IRecognitionListener$Stub;->onBufferReceived([B)V

    #@4f
    .line 84
    return v6

    #@50
    .line 88
    .end local v3    # "_arg0":[B
    :sswitch_5
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@53
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 89
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onEndOfSpeech()V

    #@59
    .line 90
    return v6

    #@5a
    .line 94
    :sswitch_6
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@5d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v1

    #@64
    .line 97
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/speech/IRecognitionListener$Stub;->onError(I)V

    #@67
    .line 98
    return v6

    #@68
    .line 102
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@6b
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v5

    #@72
    if-eqz v5, :cond_1

    #@74
    .line 105
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@79
    move-result-object v2

    #@7a
    check-cast v2, Landroid/os/Bundle;

    #@7c
    .line 110
    :goto_1
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onResults(Landroid/os/Bundle;)V

    #@7f
    .line 111
    return v6

    #@80
    .line 108
    :cond_1
    const/4 v2, 0x0

    #@81
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    #@82
    .line 115
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@85
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_2

    #@8e
    .line 118
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@90
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@93
    move-result-object v2

    #@94
    check-cast v2, Landroid/os/Bundle;

    #@96
    .line 123
    :goto_2
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onPartialResults(Landroid/os/Bundle;)V

    #@99
    .line 124
    return v6

    #@9a
    .line 121
    :cond_2
    const/4 v2, 0x0

    #@9b
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    #@9c
    .line 128
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_9
    const-string/jumbo v5, "android.speech.IRecognitionListener"

    #@9f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v1

    #@a6
    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v5

    #@aa
    if-eqz v5, :cond_3

    #@ac
    .line 133
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b1
    move-result-object v4

    #@b2
    check-cast v4, Landroid/os/Bundle;

    #@b4
    .line 138
    :goto_3
    invoke-virtual {p0, v1, v4}, Landroid/speech/IRecognitionListener$Stub;->onEvent(ILandroid/os/Bundle;)V

    #@b7
    .line 139
    return v6

    #@b8
    .line 136
    :cond_3
    const/4 v4, 0x0

    #@b9
    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    #@ba
    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
