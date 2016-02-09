.class public abstract Landroid/print/IWriteResultCallback$Stub;
.super Landroid/os/Binder;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/print/IWriteResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IWriteResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IWriteResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IWriteResultCallback"

.field static final TRANSACTION_onWriteCanceled:I = 0x4

.field static final TRANSACTION_onWriteFailed:I = 0x3

.field static final TRANSACTION_onWriteFinished:I = 0x2

.field static final TRANSACTION_onWriteStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.print.IWriteResultCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/IWriteResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.print.IWriteResultCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/IWriteResultCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/print/IWriteResultCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IWriteResultCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/IWriteResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.print.IWriteResultCallback"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v6

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.print.IWriteResultCallback"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    #@1d
    move-result-object v1

    #@1e
    .line 56
    .local v1, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    .line 57
    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Landroid/print/IWriteResultCallback$Stub;->onWriteStarted(Landroid/os/ICancellationSignal;I)V

    #@25
    .line 58
    return v6

    #@26
    .line 62
    .end local v1    # "_arg0":Landroid/os/ICancellationSignal;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string/jumbo v5, "android.print.IWriteResultCallback"

    #@29
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 64
    sget-object v5, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, [Landroid/print/PageRange;

    #@34
    .line 66
    .local v3, "_arg0":[Landroid/print/PageRange;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v4

    #@38
    .line 67
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/print/IWriteResultCallback$Stub;->onWriteFinished([Landroid/print/PageRange;I)V

    #@3b
    .line 68
    return v6

    #@3c
    .line 72
    .end local v3    # "_arg0":[Landroid/print/PageRange;
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string/jumbo v5, "android.print.IWriteResultCallback"

    #@3f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_0

    #@48
    .line 75
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Ljava/lang/CharSequence;

    #@50
    .line 81
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v4

    #@54
    .line 82
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Landroid/print/IWriteResultCallback$Stub;->onWriteFailed(Ljava/lang/CharSequence;I)V

    #@57
    .line 83
    return v6

    #@58
    .line 78
    .end local v4    # "_arg1":I
    :cond_0
    const/4 v2, 0x0

    #@59
    .local v2, "_arg0":Ljava/lang/CharSequence;
    goto :goto_0

    #@5a
    .line 87
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_4
    const-string/jumbo v5, "android.print.IWriteResultCallback"

    #@5d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v0

    #@64
    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/print/IWriteResultCallback$Stub;->onWriteCanceled(I)V

    #@67
    .line 91
    return v6

    #@68
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
