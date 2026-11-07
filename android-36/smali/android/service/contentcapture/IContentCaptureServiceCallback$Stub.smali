.class public abstract Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureServiceCallback.java"

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableSelf:I = 0x3

.field static final blacklist TRANSACTION_setContentCaptureConditions:I = 0x2

.field static final blacklist TRANSACTION_setContentCaptureWhitelist:I = 0x1

.field static final blacklist TRANSACTION_writeSessionFlush:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.service.contentcapture.IContentCaptureServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.service.contentcapture.IContentCaptureServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/service/contentcapture/IContentCaptureServiceCallback;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string/jumbo v0, "writeSessionFlush"

    return-object v0

    .line 81
    :pswitch_9
    const-string v0, "disableSelf"

    return-object v0

    .line 77
    :pswitch_c
    const-string/jumbo v0, "setContentCaptureConditions"

    return-object v0

    .line 73
    :pswitch_10
    const-string/jumbo v0, "setContentCaptureWhitelist"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 235
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.service.contentcapture.IContentCaptureServiceCallback"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_16
    packed-switch p1, :pswitch_data_74

    .line 153
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .local v4, "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/content/ComponentName;

    .line 142
    .local v5, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/service/contentcapture/FlushMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/service/contentcapture/FlushMetrics;

    .line 144
    .local v6, "_arg2":Landroid/service/contentcapture/FlushMetrics;
    sget-object v2, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/ContentCaptureOptions;

    .line 146
    .local v7, "_arg3":Landroid/content/ContentCaptureOptions;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 147
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 149
    goto :goto_73

    .line 132
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    .end local v6    # "_arg2":Landroid/service/contentcapture/FlushMetrics;
    .end local v7    # "_arg3":Landroid/content/ContentCaptureOptions;
    .end local v8    # "_arg4":I
    :pswitch_4a
    move-object v3, p0

    invoke-virtual {p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->disableSelf()V

    .line 133
    goto :goto_73

    .line 123
    :pswitch_4f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/view/contentcapture/ContentCaptureCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 126
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2, v4}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V

    .line 128
    goto :goto_73

    .line 113
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :pswitch_61
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 116
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v4}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V

    .line 118
    nop

    .line 156
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_73
    return v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_61
        :pswitch_4f
        :pswitch_4a
        :pswitch_1f
    .end packed-switch
.end method
