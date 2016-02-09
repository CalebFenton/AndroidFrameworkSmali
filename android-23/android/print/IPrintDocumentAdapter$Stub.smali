.class public abstract Landroid/print/IPrintDocumentAdapter$Stub;
.super Landroid/os/Binder;
.source "IPrintDocumentAdapter.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintDocumentAdapter"

.field static final TRANSACTION_finish:I = 0x5

.field static final TRANSACTION_kill:I = 0x6

.field static final TRANSACTION_layout:I = 0x3

.field static final TRANSACTION_setObserver:I = 0x1

.field static final TRANSACTION_start:I = 0x2

.field static final TRANSACTION_write:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;
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
    const-string/jumbo v1, "android.print.IPrintDocumentAdapter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/IPrintDocumentAdapter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/print/IPrintDocumentAdapter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 129
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapterObserver;

    #@1d
    move-result-object v6

    #@1e
    .line 55
    .local v6, "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-virtual {p0, v6}, Landroid/print/IPrintDocumentAdapter$Stub;->setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V

    #@21
    .line 56
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 60
    .end local v6    # "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    :sswitch_2
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 61
    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->start()V

    #@2c
    .line 62
    const/4 v0, 0x1

    #@2d
    return v0

    #@2e
    .line 66
    :sswitch_3
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_0

    #@3a
    .line 69
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Landroid/print/PrintAttributes;

    #@42
    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_1

    #@48
    .line 76
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Landroid/print/PrintAttributes;

    #@50
    .line 82
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@53
    move-result-object v0

    #@54
    invoke-static {v0}, Landroid/print/ILayoutResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;

    #@57
    move-result-object v3

    #@58
    .line 84
    .local v3, "_arg2":Landroid/print/ILayoutResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_2

    #@5e
    .line 85
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Landroid/os/Bundle;

    #@66
    .line 91
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v5

    #@6a
    .local v5, "_arg4":I
    move-object v0, p0

    #@6b
    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintDocumentAdapter$Stub;->layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V

    #@6e
    .line 93
    const/4 v0, 0x1

    #@6f
    return v0

    #@70
    .line 72
    .end local v3    # "_arg2":Landroid/print/ILayoutResultCallback;
    .end local v5    # "_arg4":I
    :cond_0
    const/4 v1, 0x0

    #@71
    .local v1, "_arg0":Landroid/print/PrintAttributes;
    goto :goto_0

    #@72
    .line 79
    .end local v1    # "_arg0":Landroid/print/PrintAttributes;
    :cond_1
    const/4 v2, 0x0

    #@73
    .local v2, "_arg1":Landroid/print/PrintAttributes;
    goto :goto_1

    #@74
    .line 88
    .end local v2    # "_arg1":Landroid/print/PrintAttributes;
    .restart local v3    # "_arg2":Landroid/print/ILayoutResultCallback;
    :cond_2
    const/4 v4, 0x0

    #@75
    .local v4, "_arg3":Landroid/os/Bundle;
    goto :goto_2

    #@76
    .line 97
    .end local v3    # "_arg2":Landroid/print/ILayoutResultCallback;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 99
    sget-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@81
    move-result-object v8

    #@82
    check-cast v8, [Landroid/print/PageRange;

    #@84
    .line 101
    .local v8, "_arg0":[Landroid/print/PageRange;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v0

    #@88
    if-eqz v0, :cond_3

    #@8a
    .line 102
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8f
    move-result-object v9

    #@90
    check-cast v9, Landroid/os/ParcelFileDescriptor;

    #@92
    .line 108
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@95
    move-result-object v0

    #@96
    invoke-static {v0}, Landroid/print/IWriteResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;

    #@99
    move-result-object v10

    #@9a
    .line 110
    .local v10, "_arg2":Landroid/print/IWriteResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v11

    #@9e
    .line 111
    .local v11, "_arg3":I
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/print/IPrintDocumentAdapter$Stub;->write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V

    #@a1
    .line 112
    const/4 v0, 0x1

    #@a2
    return v0

    #@a3
    .line 105
    .end local v10    # "_arg2":Landroid/print/IWriteResultCallback;
    .end local v11    # "_arg3":I
    :cond_3
    const/4 v9, 0x0

    #@a4
    .local v9, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@a5
    .line 116
    .end local v8    # "_arg0":[Landroid/print/PageRange;
    .end local v9    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@a8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 117
    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->finish()V

    #@ae
    .line 118
    const/4 v0, 0x1

    #@af
    return v0

    #@b0
    .line 122
    :sswitch_6
    const-string/jumbo v0, "android.print.IPrintDocumentAdapter"

    #@b3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    .line 125
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Landroid/print/IPrintDocumentAdapter$Stub;->kill(Ljava/lang/String;)V

    #@bd
    .line 126
    const/4 v0, 0x1

    #@be
    return v0

    #@bf
    .line 43
    nop

    #@c0
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
