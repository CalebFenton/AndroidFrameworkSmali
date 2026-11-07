.class public abstract Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.super Landroid/os/Binder;
.source "IDetectorSessionVisualQueryDetectionCallback.java"

# interfaces
.implements Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAttentionGained:I = 0x1

.field static final blacklist TRANSACTION_onAttentionLost:I = 0x2

.field static final blacklist TRANSACTION_onQueryDetected:I = 0x3

.field static final blacklist TRANSACTION_onQueryFinished:I = 0x5

.field static final blacklist TRANSACTION_onQueryRejected:I = 0x6

.field static final blacklist TRANSACTION_onResultDetected:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.service.voice.IDetectorSessionVisualQueryDetectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.service.voice.IDetectorSessionVisualQueryDetectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_1e

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string/jumbo v0, "onQueryRejected"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "onQueryFinished"

    return-object v0

    .line 99
    :pswitch_d
    const-string/jumbo v0, "onResultDetected"

    return-object v0

    .line 95
    :pswitch_11
    const-string/jumbo v0, "onQueryDetected"

    return-object v0

    .line 91
    :pswitch_15
    const-string/jumbo v0, "onAttentionLost"

    return-object v0

    .line 87
    :pswitch_19
    const-string/jumbo v0, "onAttentionGained"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 282
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    const-string v0, "android.service.voice.IDetectorSessionVisualQueryDetectionCallback"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_16
    packed-switch p1, :pswitch_data_5c

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 171
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onQueryRejected()V

    .line 172
    goto :goto_5a

    .line 166
    :pswitch_22
    invoke-virtual {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onQueryFinished()V

    .line 167
    goto :goto_5a

    .line 159
    :pswitch_26
    sget-object v2, Landroid/service/voice/VisualQueryDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisualQueryDetectedResult;

    .line 160
    .local v2, "_arg0":Landroid/service/voice/VisualQueryDetectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    .line 162
    goto :goto_5a

    .line 151
    .end local v2    # "_arg0":Landroid/service/voice/VisualQueryDetectedResult;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onQueryDetected(Ljava/lang/String;)V

    .line 154
    goto :goto_5a

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onAttentionLost(I)V

    .line 146
    goto :goto_5a

    .line 135
    .end local v2    # "_arg0":I
    :pswitch_4b
    sget-object v2, Landroid/service/voice/VisualQueryAttentionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisualQueryAttentionResult;

    .line 136
    .local v2, "_arg0":Landroid/service/voice/VisualQueryAttentionResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V

    .line 138
    nop

    .line 179
    .end local v2    # "_arg0":Landroid/service/voice/VisualQueryAttentionResult;
    :goto_5a
    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
