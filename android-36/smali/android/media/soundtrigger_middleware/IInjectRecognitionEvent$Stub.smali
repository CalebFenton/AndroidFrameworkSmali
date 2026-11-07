.class public abstract Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;
.super Landroid/os/Binder;
.source "IInjectRecognitionEvent.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_triggerAbortRecognition:I = 0x2

.field static final blacklist TRANSACTION_triggerRecognitionEvent:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.soundtrigger_middleware.IInjectRecognitionEvent"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.IInjectRecognitionEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "android.media.soundtrigger_middleware.IInjectRecognitionEvent"

    .line 72
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 79
    :cond_16
    packed-switch p1, :pswitch_data_36

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->triggerAbortRecognition()V

    .line 94
    goto :goto_35

    .line 84
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 86
    .local v2, "_arg0":[B
    sget-object v3, Landroid/media/soundtrigger/PhraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 87
    .local v3, "_arg1":[Landroid/media/soundtrigger/PhraseRecognitionExtra;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;->triggerRecognitionEvent([B[Landroid/media/soundtrigger/PhraseRecognitionExtra;)V

    .line 89
    nop

    .line 101
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[Landroid/media/soundtrigger/PhraseRecognitionExtra;
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
