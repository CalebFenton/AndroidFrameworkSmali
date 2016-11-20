.class public abstract Landroid/print/IPrintSpoolerClient$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerClient.java"

# interfaces
.implements Landroid/print/IPrintSpoolerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerClient"

.field static final TRANSACTION_onAllPrintJobsForServiceHandled:I = 0x2

.field static final TRANSACTION_onAllPrintJobsHandled:I = 0x3

.field static final TRANSACTION_onPrintJobQueued:I = 0x1

.field static final TRANSACTION_onPrintJobStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.print.IPrintSpoolerClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;
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
    const-string/jumbo v1, "android.print.IPrintSpoolerClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/print/IPrintSpoolerClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/print/IPrintSpoolerClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintSpoolerClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/print/IPrintSpoolerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.print.IPrintSpoolerClient"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v3

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.print.IPrintSpoolerClient"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 55
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/print/PrintJobInfo;

    #@24
    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpoolerClient$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    #@27
    .line 61
    return v3

    #@28
    .line 58
    :cond_0
    const/4 v1, 0x0

    #@29
    .local v1, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_0

    #@2a
    .line 65
    .end local v1    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_2
    const-string/jumbo v2, "android.print.IPrintSpoolerClient"

    #@2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 68
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/content/ComponentName;

    #@3e
    .line 73
    :goto_1
    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V

    #@41
    .line 74
    return v3

    #@42
    .line 71
    :cond_1
    const/4 v0, 0x0

    #@43
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    #@44
    .line 78
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v2, "android.print.IPrintSpoolerClient"

    #@47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 79
    invoke-virtual {p0}, Landroid/print/IPrintSpoolerClient$Stub;->onAllPrintJobsHandled()V

    #@4d
    .line 80
    return v3

    #@4e
    .line 84
    :sswitch_4
    const-string/jumbo v2, "android.print.IPrintSpoolerClient"

    #@51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_2

    #@5a
    .line 87
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Landroid/print/PrintJobInfo;

    #@62
    .line 92
    :goto_2
    invoke-virtual {p0, v1}, Landroid/print/IPrintSpoolerClient$Stub;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    #@65
    .line 93
    return v3

    #@66
    .line 90
    :cond_2
    const/4 v1, 0x0

    #@67
    .restart local v1    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_2

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
