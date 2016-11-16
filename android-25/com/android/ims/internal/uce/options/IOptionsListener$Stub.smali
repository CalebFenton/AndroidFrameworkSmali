.class public abstract Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;
.super Landroid/os/Binder;
.source "IOptionsListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsListener"

.field static final TRANSACTION_cmdStatus:I = 0x5

.field static final TRANSACTION_getVersionCb:I = 0x1

.field static final TRANSACTION_incomingOptions:I = 0x6

.field static final TRANSACTION_serviceAvailable:I = 0x2

.field static final TRANSACTION_serviceUnavailable:I = 0x3

.field static final TRANSACTION_sipResponseReceived:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.ims.internal.uce.options.IOptionsListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/ims/internal/uce/options/IOptionsListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v8

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@13
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 51
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->getVersionCb(Ljava/lang/String;)V

    #@1d
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 53
    return v8

    #@21
    .line 57
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@24
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_0

    #@2d
    .line 60
    sget-object v7, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@35
    .line 65
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    #@38
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 67
    return v8

    #@3c
    .line 63
    :cond_0
    const/4 v0, 0x0

    #@3d
    .local v0, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@3e
    .line 71
    .end local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_3
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@41
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v7

    #@48
    if-eqz v7, :cond_1

    #@4a
    .line 74
    sget-object v7, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@52
    .line 79
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    #@55
    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@58
    .line 81
    return v8

    #@59
    .line 77
    :cond_1
    const/4 v0, 0x0

    #@5a
    .restart local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1

    #@5b
    .line 85
    .end local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_4
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@5e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 89
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v7

    #@69
    if-eqz v7, :cond_2

    #@6b
    .line 90
    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70
    move-result-object v4

    #@71
    check-cast v4, Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    #@73
    .line 96
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v7

    #@77
    if-eqz v7, :cond_3

    #@79
    .line 97
    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7e
    move-result-object v6

    #@7f
    check-cast v6, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    #@81
    .line 102
    :goto_3
    invoke-virtual {p0, v2, v4, v6}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V

    #@84
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 104
    return v8

    #@88
    .line 93
    :cond_2
    const/4 v4, 0x0

    #@89
    .local v4, "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    goto :goto_2

    #@8a
    .line 100
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    :cond_3
    const/4 v6, 0x0

    #@8b
    .local v6, "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    goto :goto_3

    #@8c
    .line 108
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :sswitch_5
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@8f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v7

    #@96
    if-eqz v7, :cond_4

    #@98
    .line 111
    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9a
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9d
    move-result-object v1

    #@9e
    check-cast v1, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    #@a0
    .line 116
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V

    #@a3
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    .line 118
    return v8

    #@a7
    .line 114
    :cond_4
    const/4 v1, 0x0

    #@a8
    .local v1, "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    goto :goto_4

    #@a9
    .line 122
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    :sswitch_6
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    #@ac
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    .line 126
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v7

    #@b7
    if-eqz v7, :cond_5

    #@b9
    .line 127
    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@be
    move-result-object v3

    #@bf
    check-cast v3, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    #@c1
    .line 133
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v5

    #@c5
    .line 134
    .local v5, "_arg2":I
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V

    #@c8
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 136
    return v8

    #@cc
    .line 130
    .end local v5    # "_arg2":I
    :cond_5
    const/4 v3, 0x0

    #@cd
    .local v3, "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    goto :goto_5

    #@ce
    .line 39
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
