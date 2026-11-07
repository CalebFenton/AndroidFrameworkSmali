.class public abstract Lcom/android/internal/statusbar/IAppClipsService$Stub;
.super Landroid/os/Binder;
.source "IAppClipsService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IAppClipsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IAppClipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IAppClipsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_canLaunchCaptureContentActivityForNote:I = 0x1

.field static final blacklist TRANSACTION_canLaunchCaptureContentActivityForNoteInternal:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.statusbar.IAppClipsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IAppClipsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAppClipsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.statusbar.IAppClipsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IAppClipsService;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IAppClipsService;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IAppClipsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IAppClipsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_c

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_5
    const-string v0, "canLaunchCaptureContentActivityForNoteInternal"

    return-object v0

    .line 68
    :pswitch_8
    const-string v0, "canLaunchCaptureContentActivityForNote"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Lcom/android/internal/statusbar/IAppClipsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 87
    const-string v0, "com.android.internal.statusbar.IAppClipsService"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 95
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/internal/statusbar/IAppClipsService$Stub;->canLaunchCaptureContentActivityForNoteInternal(I)I

    move-result v3

    .line 113
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    goto :goto_42

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/internal/statusbar/IAppClipsService$Stub;->canLaunchCaptureContentActivityForNote(I)Z

    move-result v3

    .line 103
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 105
    nop

    .line 122
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
