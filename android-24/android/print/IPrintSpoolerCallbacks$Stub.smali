.class public abstract Landroid/print/IPrintSpoolerCallbacks$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerCallbacks.java"

# interfaces
.implements Landroid/print/IPrintSpoolerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerCallbacks"

.field static final TRANSACTION_customPrinterIconCacheCleared:I = 0x8

.field static final TRANSACTION_onCancelPrintJobResult:I = 0x2

.field static final TRANSACTION_onCustomPrinterIconCached:I = 0x7

.field static final TRANSACTION_onGetCustomPrinterIconResult:I = 0x6

.field static final TRANSACTION_onGetPrintJobInfoResult:I = 0x5

.field static final TRANSACTION_onGetPrintJobInfosResult:I = 0x1

.field static final TRANSACTION_onSetPrintJobStateResult:I = 0x3

.field static final TRANSACTION_onSetPrintJobTagResult:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.print.IPrintSpoolerCallbacks"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.print.IPrintSpoolerCallbacks"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/IPrintSpoolerCallbacks;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/print/IPrintSpoolerCallbacks;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 49
    :sswitch_0
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 50
    return v7

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    sget-object v6, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1b
    move-result-object v3

    #@1c
    .line 58
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v5

    #@20
    .line 59
    .local v5, "_arg1":I
    invoke-virtual {p0, v3, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfosResult(Ljava/util/List;I)V

    #@23
    .line 60
    return v7

    #@24
    .line 64
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v5    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@27
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_0

    #@30
    const/4 v4, 0x1

    #@31
    .line 68
    .local v4, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v5

    #@35
    .line 69
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v4, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCancelPrintJobResult(ZI)V

    #@38
    .line 70
    return v7

    #@39
    .line 66
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    :cond_0
    const/4 v4, 0x0

    #@3a
    .restart local v4    # "_arg0":Z
    goto :goto_0

    #@3b
    .line 74
    .end local v4    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@3e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_1

    #@47
    const/4 v4, 0x1

    #@48
    .line 78
    .restart local v4    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v5

    #@4c
    .line 79
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v4, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobStateResult(ZI)V

    #@4f
    .line 80
    return v7

    #@50
    .line 76
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    :cond_1
    const/4 v4, 0x0

    #@51
    .restart local v4    # "_arg0":Z
    goto :goto_1

    #@52
    .line 84
    .end local v4    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@55
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_2

    #@5e
    const/4 v4, 0x1

    #@5f
    .line 88
    .restart local v4    # "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v5

    #@63
    .line 89
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v4, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobTagResult(ZI)V

    #@66
    .line 90
    return v7

    #@67
    .line 86
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    :cond_2
    const/4 v4, 0x0

    #@68
    .restart local v4    # "_arg0":Z
    goto :goto_2

    #@69
    .line 94
    .end local v4    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@6c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_3

    #@75
    .line 97
    sget-object v6, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@77
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    check-cast v2, Landroid/print/PrintJobInfo;

    #@7d
    .line 103
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v5

    #@81
    .line 104
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V

    #@84
    .line 105
    return v7

    #@85
    .line 100
    .end local v5    # "_arg1":I
    :cond_3
    const/4 v2, 0x0

    #@86
    .local v2, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_3

    #@87
    .line 109
    .end local v2    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_6
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@8a
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_4

    #@93
    .line 112
    sget-object v6, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@95
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@98
    move-result-object v1

    #@99
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@9b
    .line 118
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v5

    #@9f
    .line 119
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v1, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V

    #@a2
    .line 120
    return v7

    #@a3
    .line 115
    .end local v5    # "_arg1":I
    :cond_4
    const/4 v1, 0x0

    #@a4
    .local v1, "_arg0":Landroid/graphics/drawable/Icon;
    goto :goto_4

    #@a5
    .line 124
    .end local v1    # "_arg0":Landroid/graphics/drawable/Icon;
    :sswitch_7
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@a8
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v0

    #@af
    .line 127
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCustomPrinterIconCached(I)V

    #@b2
    .line 128
    return v7

    #@b3
    .line 132
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    #@b6
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b9
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v0

    #@bd
    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->customPrinterIconCacheCleared(I)V

    #@c0
    .line 136
    return v7

    #@c1
    .line 45
    nop

    #@c2
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
