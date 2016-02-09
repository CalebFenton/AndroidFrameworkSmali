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

.field static final TRANSACTION_onCancelPrintJobResult:I = 0x2

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 49
    :sswitch_0
    const-string/jumbo v4, "android.print.IPrintSpoolerCallbacks"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 50
    return v5

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v4, "android.print.IPrintSpoolerCallbacks"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1b
    move-result-object v1

    #@1c
    .line 58
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    .line 59
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfosResult(Ljava/util/List;I)V

    #@23
    .line 60
    return v5

    #@24
    .line 64
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.print.IPrintSpoolerCallbacks"

    #@27
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    const/4 v2, 0x1

    #@31
    .line 68
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v3

    #@35
    .line 69
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCancelPrintJobResult(ZI)V

    #@38
    .line 70
    return v5

    #@39
    .line 66
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_0
    const/4 v2, 0x0

    #@3a
    .restart local v2    # "_arg0":Z
    goto :goto_0

    #@3b
    .line 74
    .end local v2    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v4, "android.print.IPrintSpoolerCallbacks"

    #@3e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_1

    #@47
    const/4 v2, 0x1

    #@48
    .line 78
    .restart local v2    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v3

    #@4c
    .line 79
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobStateResult(ZI)V

    #@4f
    .line 80
    return v5

    #@50
    .line 76
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    #@51
    .restart local v2    # "_arg0":Z
    goto :goto_1

    #@52
    .line 84
    .end local v2    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v4, "android.print.IPrintSpoolerCallbacks"

    #@55
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_2

    #@5e
    const/4 v2, 0x1

    #@5f
    .line 88
    .restart local v2    # "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v3

    #@63
    .line 89
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobTagResult(ZI)V

    #@66
    .line 90
    return v5

    #@67
    .line 86
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_2
    const/4 v2, 0x0

    #@68
    .restart local v2    # "_arg0":Z
    goto :goto_2

    #@69
    .line 94
    .end local v2    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v4, "android.print.IPrintSpoolerCallbacks"

    #@6c
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_3

    #@75
    .line 97
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@77
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7a
    move-result-object v0

    #@7b
    check-cast v0, Landroid/print/PrintJobInfo;

    #@7d
    .line 103
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v3

    #@81
    .line 104
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V

    #@84
    .line 105
    return v5

    #@85
    .line 100
    .end local v3    # "_arg1":I
    :cond_3
    const/4 v0, 0x0

    #@86
    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_3

    #@87
    .line 45
    nop

    #@88
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
