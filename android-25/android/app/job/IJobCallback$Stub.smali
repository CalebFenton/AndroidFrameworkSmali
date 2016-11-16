.class public abstract Landroid/app/job/IJobCallback$Stub;
.super Landroid/os/Binder;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobCallback"

.field static final TRANSACTION_acknowledgeStartMessage:I = 0x1

.field static final TRANSACTION_acknowledgeStopMessage:I = 0x2

.field static final TRANSACTION_jobFinished:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 25
    const-string/jumbo v0, "android.app.job.IJobCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 33
    if-nez p0, :cond_0

    #@3
    .line 34
    return-object v1

    #@4
    .line 36
    :cond_0
    const-string/jumbo v1, "android.app.job.IJobCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/job/IJobCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 38
    check-cast v0, Landroid/app/job/IJobCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/job/IJobCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/job/IJobCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 44
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
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 48
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 52
    :sswitch_0
    const-string/jumbo v3, "android.app.job.IJobCallback"

    #@d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 53
    return v2

    #@11
    .line 57
    :sswitch_1
    const-string/jumbo v3, "android.app.job.IJobCallback"

    #@14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    move v1, v2

    #@22
    .line 62
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStartMessage(IZ)V

    #@25
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 64
    return v2

    #@29
    .line 68
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v3, "android.app.job.IJobCallback"

    #@2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v0

    #@33
    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    move v1, v2

    #@3a
    .line 73
    .restart local v1    # "_arg1":Z
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStopMessage(IZ)V

    #@3d
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 75
    return v2

    #@41
    .line 79
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v3, "android.app.job.IJobCallback"

    #@44
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_2

    #@51
    move v1, v2

    #@52
    .line 84
    .restart local v1    # "_arg1":Z
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->jobFinished(IZ)V

    #@55
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@58
    .line 86
    return v2

    #@59
    .line 48
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
