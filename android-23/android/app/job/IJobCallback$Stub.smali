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
    const/4 v3, 0x1

    #@1
    .line 48
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 52
    :sswitch_0
    const-string/jumbo v2, "android.app.job.IJobCallback"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 53
    return v3

    #@10
    .line 57
    :sswitch_1
    const-string/jumbo v2, "android.app.job.IJobCallback"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    const/4 v1, 0x1

    #@21
    .line 62
    .local v1, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStartMessage(IZ)V

    #@24
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 64
    return v3

    #@28
    .line 61
    .end local v1    # "_arg1":Z
    :cond_0
    const/4 v1, 0x0

    #@29
    .restart local v1    # "_arg1":Z
    goto :goto_0

    #@2a
    .line 68
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v2, "android.app.job.IJobCallback"

    #@2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    const/4 v1, 0x1

    #@3b
    .line 73
    .restart local v1    # "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStopMessage(IZ)V

    #@3e
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@41
    .line 75
    return v3

    #@42
    .line 72
    .end local v1    # "_arg1":Z
    :cond_1
    const/4 v1, 0x0

    #@43
    .restart local v1    # "_arg1":Z
    goto :goto_1

    #@44
    .line 79
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v2, "android.app.job.IJobCallback"

    #@47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v0

    #@4e
    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_2

    #@54
    const/4 v1, 0x1

    #@55
    .line 84
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->jobFinished(IZ)V

    #@58
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    .line 86
    return v3

    #@5c
    .line 83
    .end local v1    # "_arg1":Z
    :cond_2
    const/4 v1, 0x0

    #@5d
    .restart local v1    # "_arg1":Z
    goto :goto_2

    #@5e
    .line 48
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
