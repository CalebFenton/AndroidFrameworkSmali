.class public abstract Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;
.super Landroid/os/Binder;
.source "IVisualQueryDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onQueryDetected:I = 0x1

.field static final blacklist TRANSACTION_onQueryFinished:I = 0x3

.field static final blacklist TRANSACTION_onQueryRejected:I = 0x4

.field static final blacklist TRANSACTION_onResultDetected:I = 0x2

.field static final blacklist TRANSACTION_onVisualQueryDetectionServiceFailure:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 96
    :pswitch_5
    const-string/jumbo v0, "onVisualQueryDetectionServiceFailure"

    return-object v0

    .line 92
    :pswitch_9
    const-string/jumbo v0, "onQueryRejected"

    return-object v0

    .line 88
    :pswitch_d
    const-string/jumbo v0, "onQueryFinished"

    return-object v0

    .line 84
    :pswitch_11
    const-string/jumbo v0, "onResultDetected"

    return-object v0

    .line 80
    :pswitch_15
    const-string/jumbo v0, "onQueryDetected"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 249
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 107
    invoke-static {p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const-string v0, "android.service.voice.IVisualQueryDetectionVoiceInteractionCallback"

    .line 112
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 119
    :cond_16
    packed-switch p1, :pswitch_data_50

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_1e
    sget-object v2, Landroid/service/voice/VisualQueryDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 151
    .local v2, "_arg0":Landroid/service/voice/VisualQueryDetectionServiceFailure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 153
    goto :goto_4f

    .line 144
    .end local v2    # "_arg0":Landroid/service/voice/VisualQueryDetectionServiceFailure;
    :pswitch_2d
    invoke-virtual {p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onQueryRejected()V

    .line 145
    goto :goto_4f

    .line 139
    :pswitch_31
    invoke-virtual {p0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onQueryFinished()V

    .line 140
    goto :goto_4f

    .line 132
    :pswitch_35
    sget-object v2, Landroid/service/voice/VisualQueryDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisualQueryDetectedResult;

    .line 133
    .local v2, "_arg0":Landroid/service/voice/VisualQueryDetectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    .line 135
    goto :goto_4f

    .line 124
    .end local v2    # "_arg0":Landroid/service/voice/VisualQueryDetectedResult;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Stub;->onQueryDetected(Ljava/lang/String;)V

    .line 127
    nop

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_4f
    return v1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_44
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
