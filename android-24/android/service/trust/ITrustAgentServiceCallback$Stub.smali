.class public abstract Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentServiceCallback.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentServiceCallback"

.field static final TRANSACTION_grantTrust:I = 0x1

.field static final TRANSACTION_onConfigureCompleted:I = 0x4

.field static final TRANSACTION_revokeTrust:I = 0x2

.field static final TRANSACTION_setManagingTrust:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.service.trust.ITrustAgentServiceCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.service.trust.ITrustAgentServiceCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/trust/ITrustAgentServiceCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/service/trust/ITrustAgentServiceCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
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
    const/4 v1, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v7, "android.service.trust.ITrustAgentServiceCallback"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v6

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v7, "android.service.trust.ITrustAgentServiceCallback"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 54
    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/CharSequence;

    #@25
    .line 60
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@28
    move-result-wide v2

    #@29
    .line 62
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v5

    #@2d
    .line 63
    .local v5, "_arg2":I
    invoke-virtual {p0, v0, v2, v3, v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->grantTrust(Ljava/lang/CharSequence;JI)V

    #@30
    .line 64
    return v6

    #@31
    .line 57
    .end local v2    # "_arg1":J
    .end local v5    # "_arg2":I
    :cond_0
    const/4 v0, 0x0

    #@32
    .local v0, "_arg0":Ljava/lang/CharSequence;
    goto :goto_0

    #@33
    .line 68
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_2
    const-string/jumbo v7, "android.service.trust.ITrustAgentServiceCallback"

    #@36
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 69
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->revokeTrust()V

    #@3c
    .line 70
    return v6

    #@3d
    .line 74
    :sswitch_3
    const-string/jumbo v7, "android.service.trust.ITrustAgentServiceCallback"

    #@40
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_1

    #@49
    move v1, v6

    #@4a
    .line 77
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->setManagingTrust(Z)V

    #@4d
    .line 78
    return v6

    #@4e
    .line 82
    .end local v1    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v7, "android.service.trust.ITrustAgentServiceCallback"

    #@51
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_2

    #@5a
    const/4 v1, 0x1

    #@5b
    .line 86
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e
    move-result-object v4

    #@5f
    .line 87
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v4}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    #@62
    .line 88
    return v6

    #@63
    .line 84
    .end local v1    # "_arg0":Z
    .end local v4    # "_arg1":Landroid/os/IBinder;
    :cond_2
    const/4 v1, 0x0

    #@64
    .restart local v1    # "_arg0":Z
    goto :goto_1

    #@65
    .line 42
    nop

    #@66
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
