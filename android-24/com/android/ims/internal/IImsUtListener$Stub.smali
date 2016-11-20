.class public abstract Lcom/android/ims/internal/IImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUtListener"

.field static final TRANSACTION_utConfigurationCallBarringQueried:I = 0x5

.field static final TRANSACTION_utConfigurationCallForwardQueried:I = 0x6

.field static final TRANSACTION_utConfigurationCallWaitingQueried:I = 0x7

.field static final TRANSACTION_utConfigurationQueried:I = 0x3

.field static final TRANSACTION_utConfigurationQueryFailed:I = 0x4

.field static final TRANSACTION_utConfigurationUpdateFailed:I = 0x2

.field static final TRANSACTION_utConfigurationUpdated:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.ims.internal.IImsUtListener"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsUtListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsUtListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/ims/internal/IImsUtListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v7

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@1d
    move-result-object v0

    #@1e
    .line 54
    .local v0, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v1

    #@22
    .line 55
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    #@25
    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 57
    return v7

    #@29
    .line 61
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@2c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32
    move-result-object v6

    #@33
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@36
    move-result-object v0

    #@37
    .line 65
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    .line 67
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_0

    #@41
    .line 68
    sget-object v6, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    #@49
    .line 73
    :goto_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    #@4c
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 75
    return v7

    #@50
    .line 71
    :cond_0
    const/4 v3, 0x0

    #@51
    .local v3, "_arg2":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0

    #@52
    .line 79
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/ims/ImsReasonInfo;
    :sswitch_3
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@55
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b
    move-result-object v6

    #@5c
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@5f
    move-result-object v0

    #@60
    .line 83
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v1

    #@64
    .line 85
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v6

    #@68
    if-eqz v6, :cond_1

    #@6a
    .line 86
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    check-cast v2, Landroid/os/Bundle;

    #@72
    .line 91
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    #@75
    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@78
    .line 93
    return v7

    #@79
    .line 89
    :cond_1
    const/4 v2, 0x0

    #@7a
    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    #@7b
    .line 97
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@7e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84
    move-result-object v6

    #@85
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@88
    move-result-object v0

    #@89
    .line 101
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v1

    #@8d
    .line 103
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_2

    #@93
    .line 104
    sget-object v6, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@95
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@98
    move-result-object v3

    #@99
    check-cast v3, Lcom/android/ims/ImsReasonInfo;

    #@9b
    .line 109
    :goto_2
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V

    #@9e
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 111
    return v7

    #@a2
    .line 107
    :cond_2
    const/4 v3, 0x0

    #@a3
    .restart local v3    # "_arg2":Lcom/android/ims/ImsReasonInfo;
    goto :goto_2

    #@a4
    .line 115
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/ims/ImsReasonInfo;
    :sswitch_5
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@a7
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ad
    move-result-object v6

    #@ae
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@b1
    move-result-object v0

    #@b2
    .line 119
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v1

    #@b6
    .line 121
    .restart local v1    # "_arg1":I
    sget-object v6, Lcom/android/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@bb
    move-result-object v5

    #@bc
    check-cast v5, [Lcom/android/ims/ImsSsInfo;

    #@be
    .line 122
    .local v5, "_arg2":[Lcom/android/ims/ImsSsInfo;
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    #@c1
    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    .line 124
    return v7

    #@c5
    .line 128
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v1    # "_arg1":I
    .end local v5    # "_arg2":[Lcom/android/ims/ImsSsInfo;
    :sswitch_6
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@c8
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ce
    move-result-object v6

    #@cf
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@d2
    move-result-object v0

    #@d3
    .line 132
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v1

    #@d7
    .line 134
    .restart local v1    # "_arg1":I
    sget-object v6, Lcom/android/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d9
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@dc
    move-result-object v4

    #@dd
    check-cast v4, [Lcom/android/ims/ImsCallForwardInfo;

    #@df
    .line 135
    .local v4, "_arg2":[Lcom/android/ims/ImsCallForwardInfo;
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    #@e2
    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5
    .line 137
    return v7

    #@e6
    .line 141
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":[Lcom/android/ims/ImsCallForwardInfo;
    :sswitch_7
    const-string/jumbo v6, "com.android.ims.internal.IImsUtListener"

    #@e9
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ef
    move-result-object v6

    #@f0
    invoke-static {v6}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    #@f3
    move-result-object v0

    #@f4
    .line 145
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v1

    #@f8
    .line 147
    .restart local v1    # "_arg1":I
    sget-object v6, Lcom/android/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fa
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@fd
    move-result-object v5

    #@fe
    check-cast v5, [Lcom/android/ims/ImsSsInfo;

    #@100
    .line 148
    .restart local v5    # "_arg2":[Lcom/android/ims/ImsSsInfo;
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    #@103
    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@106
    .line 150
    return v7

    #@107
    .line 41
    nop

    #@108
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
