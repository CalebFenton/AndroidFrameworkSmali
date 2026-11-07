.class public abstract Landroid/service/contentcapture/IContentCaptureService$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureService.java"

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityEvent:I = 0x8

.field static final blacklist TRANSACTION_onActivitySnapshot:I = 0x5

.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDataRemovalRequest:I = 0x6

.field static final blacklist TRANSACTION_onDataShared:I = 0x7

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onSessionFinished:I = 0x4

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/contentcapture/IContentCaptureService;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/service/contentcapture/IContentCaptureService;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_26

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 112
    :pswitch_5
    const-string/jumbo v0, "onActivityEvent"

    return-object v0

    .line 108
    :pswitch_9
    const-string/jumbo v0, "onDataShared"

    return-object v0

    .line 104
    :pswitch_d
    const-string/jumbo v0, "onDataRemovalRequest"

    return-object v0

    .line 100
    :pswitch_11
    const-string/jumbo v0, "onActivitySnapshot"

    return-object v0

    .line 96
    :pswitch_15
    const-string/jumbo v0, "onSessionFinished"

    return-object v0

    .line 92
    :pswitch_19
    const-string/jumbo v0, "onSessionStarted"

    return-object v0

    .line 88
    :pswitch_1d
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 84
    :pswitch_21
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
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

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 351
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_16
    packed-switch p1, :pswitch_data_b8

    .line 216
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 209
    :pswitch_1f
    sget-object v2, Landroid/service/contentcapture/ActivityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/contentcapture/ActivityEvent;

    .line 210
    .local v2, "_arg0":Landroid/service/contentcapture/ActivityEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 212
    move-object v3, p0

    goto/16 :goto_b7

    .line 199
    .end local v2    # "_arg0":Landroid/service/contentcapture/ActivityEvent;
    :pswitch_30
    sget-object v2, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/contentcapture/DataShareRequest;

    .line 201
    .local v2, "_arg0":Landroid/view/contentcapture/DataShareRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/contentcapture/IDataShareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IDataShareCallback;

    move-result-object v3

    .line 202
    .local v3, "_arg1":Landroid/service/contentcapture/IDataShareCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    .line 204
    move-object v3, p0

    goto/16 :goto_b7

    .line 191
    .end local v2    # "_arg0":Landroid/view/contentcapture/DataShareRequest;
    .end local v3    # "_arg1":Landroid/service/contentcapture/IDataShareCallback;
    :pswitch_49
    sget-object v2, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/contentcapture/DataRemovalRequest;

    .line 192
    .local v2, "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 194
    move-object v3, p0

    goto :goto_b7

    .line 181
    .end local v2    # "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg0":I
    sget-object v3, Landroid/service/contentcapture/SnapshotData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/contentcapture/SnapshotData;

    .line 184
    .local v3, "_arg1":Landroid/service/contentcapture/SnapshotData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    .line 186
    move-object v3, p0

    goto :goto_b7

    .line 173
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/service/contentcapture/SnapshotData;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionFinished(I)V

    .line 176
    move-object v3, p0

    goto :goto_b7

    .line 157
    .end local v2    # "_arg0":I
    :pswitch_79
    sget-object v2, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/contentcapture/ContentCaptureContext;

    .line 159
    .local v4, "_arg0":Landroid/view/contentcapture/ContentCaptureContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 161
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 163
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v7

    .line 165
    .local v7, "_arg3":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 166
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 168
    goto :goto_b7

    .line 151
    .end local v4    # "_arg0":Landroid/view/contentcapture/ContentCaptureContext;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    .end local v8    # "_arg4":I
    :pswitch_9e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDisconnected()V

    .line 152
    goto :goto_b7

    .line 140
    :pswitch_a3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 144
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 145
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v4, v5}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onConnected(Landroid/os/IBinder;ZZ)V

    .line 147
    nop

    .line 219
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    :goto_b7
    return v1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_9e
        :pswitch_79
        :pswitch_6d
        :pswitch_59
        :pswitch_49
        :pswitch_30
        :pswitch_1f
    .end packed-switch
.end method
