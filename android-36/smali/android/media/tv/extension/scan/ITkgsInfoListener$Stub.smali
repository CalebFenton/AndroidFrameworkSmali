.class public abstract Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;
.super Landroid/os/Binder;
.source "ITkgsInfoListener.java"

# interfaces
.implements Landroid/media/tv/extension/scan/ITkgsInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/ITkgsInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onServiceList:I = 0x1

.field static final blacklist TRANSACTION_onTableVersionUpdate:I = 0x2

.field static final blacklist TRANSACTION_onUserMessage:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.media.tv.extension.scan.ITkgsInfoListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ITkgsInfoListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.media.tv.extension.scan.ITkgsInfoListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scan/ITkgsInfoListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scan/ITkgsInfoListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_12

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string/jumbo v0, "onUserMessage"

    return-object v0

    .line 69
    :pswitch_9
    const-string/jumbo v0, "onTableVersionUpdate"

    return-object v0

    .line 65
    :pswitch_d
    const-string/jumbo v0, "onServiceList"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 187
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    const-string v0, "android.media.tv.extension.scan.ITkgsInfoListener"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_16
    packed-switch p1, :pswitch_data_40

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;->onUserMessage(Ljava/lang/String;)V

    .line 120
    goto :goto_3f

    .line 109
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;->onTableVersionUpdate(I)V

    .line 112
    goto :goto_3f

    .line 101
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;->onServiceList([Ljava/lang/String;)V

    .line 104
    nop

    .line 127
    .end local v2    # "_arg0":[Ljava/lang/String;
    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
