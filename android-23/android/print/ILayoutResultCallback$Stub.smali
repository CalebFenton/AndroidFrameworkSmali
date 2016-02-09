.class public abstract Landroid/print/ILayoutResultCallback$Stub;
.super Landroid/os/Binder;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/print/ILayoutResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/ILayoutResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/ILayoutResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.ILayoutResultCallback"

.field static final TRANSACTION_onLayoutCanceled:I = 0x4

.field static final TRANSACTION_onLayoutFailed:I = 0x3

.field static final TRANSACTION_onLayoutFinished:I = 0x2

.field static final TRANSACTION_onLayoutStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.print.ILayoutResultCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;
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
    const-string/jumbo v1, "android.print.ILayoutResultCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/ILayoutResultCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/print/ILayoutResultCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/ILayoutResultCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/ILayoutResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    #@c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v8

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    #@13
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v7

    #@1a
    invoke-static {v7}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

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
    invoke-virtual {p0, v1, v4}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V

    #@25
    .line 58
    return v8

    #@26
    .line 62
    .end local v1    # "_arg0":Landroid/os/ICancellationSignal;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    #@29
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_0

    #@32
    .line 65
    sget-object v7, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/print/PrintDocumentInfo;

    #@3a
    .line 71
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_1

    #@40
    const/4 v5, 0x1

    #@41
    .line 73
    .local v5, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v6

    #@45
    .line 74
    .local v6, "_arg2":I
    invoke-virtual {p0, v2, v5, v6}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V

    #@48
    .line 75
    return v8

    #@49
    .line 68
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_0
    const/4 v2, 0x0

    #@4a
    .local v2, "_arg0":Landroid/print/PrintDocumentInfo;
    goto :goto_0

    #@4b
    .line 71
    .end local v2    # "_arg0":Landroid/print/PrintDocumentInfo;
    :cond_1
    const/4 v5, 0x0

    #@4c
    .restart local v5    # "_arg1":Z
    goto :goto_1

    #@4d
    .line 79
    .end local v5    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    #@50
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v7

    #@57
    if-eqz v7, :cond_2

    #@59
    .line 82
    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@5b
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e
    move-result-object v3

    #@5f
    check-cast v3, Ljava/lang/CharSequence;

    #@61
    .line 88
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v4

    #@65
    .line 89
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFailed(Ljava/lang/CharSequence;I)V

    #@68
    .line 90
    return v8

    #@69
    .line 85
    .end local v4    # "_arg1":I
    :cond_2
    const/4 v3, 0x0

    #@6a
    .local v3, "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    #@6b
    .line 94
    .end local v3    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_4
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    #@6e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v0

    #@75
    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutCanceled(I)V

    #@78
    .line 98
    return v8

    #@79
    .line 43
    nop

    #@7a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
