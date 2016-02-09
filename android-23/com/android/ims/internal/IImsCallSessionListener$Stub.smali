.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1d

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionStartFailed:I = 0x3

.field static final TRANSACTION_callSessionStarted:I = 0x2

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1c

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "com.android.ims.internal.IImsCallSessionListener"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsCallSessionListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Lcom/android/ims/internal/IImsCallSessionListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 496
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v13

    #@7
    return v13

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v13, 0x1

    #@11
    return v13

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v13

    #@1e
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@21
    move-result-object v1

    #@22
    .line 57
    .local v1, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v13

    #@26
    if-eqz v13, :cond_0

    #@28
    .line 58
    sget-object v13, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    check-cast v6, Lcom/android/ims/ImsStreamMediaProfile;

    #@32
    .line 63
    :goto_0
    invoke-virtual {p0, v1, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    #@35
    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 65
    const/4 v13, 0x1

    #@39
    return v13

    #@3a
    .line 61
    :cond_0
    const/4 v6, 0x0

    #@3b
    .local v6, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_0

    #@3c
    .line 69
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_2
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@47
    move-result-object v13

    #@48
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@4b
    move-result-object v1

    #@4c
    .line 73
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v13

    #@50
    if-eqz v13, :cond_1

    #@52
    .line 74
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@5c
    .line 79
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@5f
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 81
    const/4 v13, 0x1

    #@63
    return v13

    #@64
    .line 77
    :cond_1
    const/4 v3, 0x0

    #@65
    .local v3, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_1

    #@66
    .line 85
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_3
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@71
    move-result-object v13

    #@72
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@75
    move-result-object v1

    #@76
    .line 89
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v13

    #@7a
    if-eqz v13, :cond_2

    #@7c
    .line 90
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@83
    move-result-object v5

    #@84
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@86
    .line 95
    :goto_2
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@89
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c
    .line 97
    const/4 v13, 0x1

    #@8d
    return v13

    #@8e
    .line 93
    :cond_2
    const/4 v5, 0x0

    #@8f
    .local v5, "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_2

    #@90
    .line 101
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_4
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v13

    #@9c
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@9f
    move-result-object v1

    #@a0
    .line 105
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v13

    #@a4
    if-eqz v13, :cond_3

    #@a6
    .line 106
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ad
    move-result-object v5

    #@ae
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@b0
    .line 111
    :goto_3
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@b3
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 113
    const/4 v13, 0x1

    #@b7
    return v13

    #@b8
    .line 109
    :cond_3
    const/4 v5, 0x0

    #@b9
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_3

    #@ba
    .line 117
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_5
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c5
    move-result-object v13

    #@c6
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@c9
    move-result-object v1

    #@ca
    .line 121
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd
    move-result v13

    #@ce
    if-eqz v13, :cond_4

    #@d0
    .line 122
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d2
    move-object/from16 v0, p2

    #@d4
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d7
    move-result-object v3

    #@d8
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@da
    .line 127
    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@dd
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 129
    const/4 v13, 0x1

    #@e1
    return v13

    #@e2
    .line 125
    :cond_4
    const/4 v3, 0x0

    #@e3
    .restart local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    #@e4
    .line 133
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_6
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ef
    move-result-object v13

    #@f0
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@f3
    move-result-object v1

    #@f4
    .line 137
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v13

    #@f8
    if-eqz v13, :cond_5

    #@fa
    .line 138
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@101
    move-result-object v5

    #@102
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@104
    .line 143
    :goto_5
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@107
    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10a
    .line 145
    const/4 v13, 0x1

    #@10b
    return v13

    #@10c
    .line 141
    :cond_5
    const/4 v5, 0x0

    #@10d
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_5

    #@10e
    .line 149
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_7
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@111
    move-object/from16 v0, p2

    #@113
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@119
    move-result-object v13

    #@11a
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@11d
    move-result-object v1

    #@11e
    .line 153
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v13

    #@122
    if-eqz v13, :cond_6

    #@124
    .line 154
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b
    move-result-object v3

    #@12c
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@12e
    .line 159
    :goto_6
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@131
    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@134
    .line 161
    const/4 v13, 0x1

    #@135
    return v13

    #@136
    .line 157
    :cond_6
    const/4 v3, 0x0

    #@137
    .restart local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_6

    #@138
    .line 165
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_8
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@143
    move-result-object v13

    #@144
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@147
    move-result-object v1

    #@148
    .line 169
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v13

    #@14c
    if-eqz v13, :cond_7

    #@14e
    .line 170
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@150
    move-object/from16 v0, p2

    #@152
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@155
    move-result-object v3

    #@156
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@158
    .line 175
    :goto_7
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@15b
    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    .line 177
    const/4 v13, 0x1

    #@15f
    return v13

    #@160
    .line 173
    :cond_7
    const/4 v3, 0x0

    #@161
    .restart local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_7

    #@162
    .line 181
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_9
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@165
    move-object/from16 v0, p2

    #@167
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a
    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16d
    move-result-object v13

    #@16e
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@171
    move-result-object v1

    #@172
    .line 185
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v13

    #@176
    if-eqz v13, :cond_8

    #@178
    .line 186
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17f
    move-result-object v5

    #@180
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@182
    .line 191
    :goto_8
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@185
    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@188
    .line 193
    const/4 v13, 0x1

    #@189
    return v13

    #@18a
    .line 189
    :cond_8
    const/4 v5, 0x0

    #@18b
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_8

    #@18c
    .line 197
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_a
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@18f
    move-object/from16 v0, p2

    #@191
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@194
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@197
    move-result-object v13

    #@198
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@19b
    move-result-object v1

    #@19c
    .line 201
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v13

    #@1a0
    if-eqz v13, :cond_9

    #@1a2
    .line 202
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a9
    move-result-object v3

    #@1aa
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@1ac
    .line 207
    :goto_9
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@1af
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b2
    .line 209
    const/4 v13, 0x1

    #@1b3
    return v13

    #@1b4
    .line 205
    :cond_9
    const/4 v3, 0x0

    #@1b5
    .restart local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_9

    #@1b6
    .line 213
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_b
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@1b9
    move-object/from16 v0, p2

    #@1bb
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1be
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c1
    move-result-object v13

    #@1c2
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@1c5
    move-result-object v1

    #@1c6
    .line 217
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c9
    move-result-object v13

    #@1ca
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@1cd
    move-result-object v7

    #@1ce
    .line 219
    .local v7, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d1
    move-result v13

    #@1d2
    if-eqz v13, :cond_a

    #@1d4
    .line 220
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d6
    move-object/from16 v0, p2

    #@1d8
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1db
    move-result-object v10

    #@1dc
    check-cast v10, Lcom/android/ims/ImsCallProfile;

    #@1de
    .line 225
    :goto_a
    invoke-virtual {p0, v1, v7, v10}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@1e1
    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4
    .line 227
    const/4 v13, 0x1

    #@1e5
    return v13

    #@1e6
    .line 223
    :cond_a
    const/4 v10, 0x0

    #@1e7
    .local v10, "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_a

    #@1e8
    .line 231
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v7    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v10    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_c
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@1eb
    move-object/from16 v0, p2

    #@1ed
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1f3
    move-result-object v13

    #@1f4
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@1f7
    move-result-object v1

    #@1f8
    .line 234
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    #@1fb
    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fe
    .line 236
    const/4 v13, 0x1

    #@1ff
    return v13

    #@200
    .line 240
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_d
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@203
    move-object/from16 v0, p2

    #@205
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@208
    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@20b
    move-result-object v13

    #@20c
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@20f
    move-result-object v1

    #@210
    .line 244
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v13

    #@214
    if-eqz v13, :cond_b

    #@216
    .line 245
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@218
    move-object/from16 v0, p2

    #@21a
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21d
    move-result-object v5

    #@21e
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@220
    .line 250
    :goto_b
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@223
    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@226
    .line 252
    const/4 v13, 0x1

    #@227
    return v13

    #@228
    .line 248
    :cond_b
    const/4 v5, 0x0

    #@229
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_b

    #@22a
    .line 256
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_e
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@22d
    move-object/from16 v0, p2

    #@22f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@232
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@235
    move-result-object v13

    #@236
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@239
    move-result-object v1

    #@23a
    .line 260
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23d
    move-result v13

    #@23e
    if-eqz v13, :cond_c

    #@240
    .line 261
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@242
    move-object/from16 v0, p2

    #@244
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@247
    move-result-object v3

    #@248
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@24a
    .line 266
    :goto_c
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@24d
    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@250
    .line 268
    const/4 v13, 0x1

    #@251
    return v13

    #@252
    .line 264
    :cond_c
    const/4 v3, 0x0

    #@253
    .restart local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_c

    #@254
    .line 272
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_f
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@257
    move-object/from16 v0, p2

    #@259
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25c
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25f
    move-result-object v13

    #@260
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@263
    move-result-object v1

    #@264
    .line 276
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@267
    move-result v13

    #@268
    if-eqz v13, :cond_d

    #@26a
    .line 277
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26c
    move-object/from16 v0, p2

    #@26e
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@271
    move-result-object v5

    #@272
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@274
    .line 282
    :goto_d
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@277
    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27a
    .line 284
    const/4 v13, 0x1

    #@27b
    return v13

    #@27c
    .line 280
    :cond_d
    const/4 v5, 0x0

    #@27d
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_d

    #@27e
    .line 288
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_10
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@289
    move-result-object v13

    #@28a
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@28d
    move-result-object v1

    #@28e
    .line 292
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v13

    #@292
    if-eqz v13, :cond_e

    #@294
    .line 293
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29b
    move-result-object v3

    #@29c
    check-cast v3, Lcom/android/ims/ImsCallProfile;

    #@29e
    .line 298
    :goto_e
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@2a1
    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a4
    .line 300
    const/4 v13, 0x1

    #@2a5
    return v13

    #@2a6
    .line 296
    :cond_e
    const/4 v3, 0x0

    #@2a7
    .restart local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_e

    #@2a8
    .line 304
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_11
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b0
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b3
    move-result-object v13

    #@2b4
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@2b7
    move-result-object v1

    #@2b8
    .line 308
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2bb
    move-result-object v13

    #@2bc
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@2bf
    move-result-object v7

    #@2c0
    .line 310
    .restart local v7    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c3
    move-result v13

    #@2c4
    if-eqz v13, :cond_f

    #@2c6
    .line 311
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cd
    move-result-object v10

    #@2ce
    check-cast v10, Lcom/android/ims/ImsCallProfile;

    #@2d0
    .line 316
    :goto_f
    invoke-virtual {p0, v1, v7, v10}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@2d3
    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d6
    .line 318
    const/4 v13, 0x1

    #@2d7
    return v13

    #@2d8
    .line 314
    :cond_f
    const/4 v10, 0x0

    #@2d9
    .restart local v10    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_f

    #@2da
    .line 322
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v7    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v10    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_12
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@2dd
    move-object/from16 v0, p2

    #@2df
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e2
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e5
    move-result-object v13

    #@2e6
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@2e9
    move-result-object v1

    #@2ea
    .line 326
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ed
    move-result v13

    #@2ee
    if-eqz v13, :cond_10

    #@2f0
    .line 327
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f2
    move-object/from16 v0, p2

    #@2f4
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f7
    move-result-object v5

    #@2f8
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@2fa
    .line 332
    :goto_10
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@2fd
    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@300
    .line 334
    const/4 v13, 0x1

    #@301
    return v13

    #@302
    .line 330
    :cond_10
    const/4 v5, 0x0

    #@303
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_10

    #@304
    .line 338
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_13
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30c
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30f
    move-result-object v13

    #@310
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@313
    move-result-object v1

    #@314
    .line 342
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@317
    move-result-object v13

    #@318
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@31b
    move-result-object v7

    #@31c
    .line 344
    .restart local v7    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31f
    move-result v13

    #@320
    if-eqz v13, :cond_11

    #@322
    .line 345
    sget-object v13, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@324
    move-object/from16 v0, p2

    #@326
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@329
    move-result-object v10

    #@32a
    check-cast v10, Lcom/android/ims/ImsCallProfile;

    #@32c
    .line 350
    :goto_11
    invoke-virtual {p0, v1, v7, v10}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@32f
    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@332
    .line 352
    const/4 v13, 0x1

    #@333
    return v13

    #@334
    .line 348
    :cond_11
    const/4 v10, 0x0

    #@335
    .restart local v10    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_11

    #@336
    .line 356
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v7    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v10    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_14
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@339
    move-object/from16 v0, p2

    #@33b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33e
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@341
    move-result-object v13

    #@342
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@345
    move-result-object v1

    #@346
    .line 359
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    #@349
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34c
    .line 361
    const/4 v13, 0x1

    #@34d
    return v13

    #@34e
    .line 365
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_15
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@351
    move-object/from16 v0, p2

    #@353
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@356
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@359
    move-result-object v13

    #@35a
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@35d
    move-result-object v1

    #@35e
    .line 369
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@361
    move-result v13

    #@362
    if-eqz v13, :cond_12

    #@364
    .line 370
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@366
    move-object/from16 v0, p2

    #@368
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36b
    move-result-object v5

    #@36c
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@36e
    .line 375
    :goto_12
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@371
    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@374
    .line 377
    const/4 v13, 0x1

    #@375
    return v13

    #@376
    .line 373
    :cond_12
    const/4 v5, 0x0

    #@377
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_12

    #@378
    .line 381
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_16
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@37b
    move-object/from16 v0, p2

    #@37d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@380
    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@383
    move-result-object v13

    #@384
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@387
    move-result-object v1

    #@388
    .line 384
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    #@38b
    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38e
    .line 386
    const/4 v13, 0x1

    #@38f
    return v13

    #@390
    .line 390
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_17
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@393
    move-object/from16 v0, p2

    #@395
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@398
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@39b
    move-result-object v13

    #@39c
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@39f
    move-result-object v1

    #@3a0
    .line 394
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a3
    move-result v13

    #@3a4
    if-eqz v13, :cond_13

    #@3a6
    .line 395
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a8
    move-object/from16 v0, p2

    #@3aa
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ad
    move-result-object v5

    #@3ae
    check-cast v5, Lcom/android/ims/ImsReasonInfo;

    #@3b0
    .line 400
    :goto_13
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@3b3
    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b6
    .line 402
    const/4 v13, 0x1

    #@3b7
    return v13

    #@3b8
    .line 398
    :cond_13
    const/4 v5, 0x0

    #@3b9
    .restart local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_13

    #@3ba
    .line 406
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_18
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@3bd
    move-object/from16 v0, p2

    #@3bf
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c2
    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c5
    move-result-object v13

    #@3c6
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@3c9
    move-result-object v1

    #@3ca
    .line 410
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cd
    move-result v13

    #@3ce
    if-eqz v13, :cond_14

    #@3d0
    .line 411
    sget-object v13, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d2
    move-object/from16 v0, p2

    #@3d4
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d7
    move-result-object v4

    #@3d8
    check-cast v4, Lcom/android/ims/ImsConferenceState;

    #@3da
    .line 416
    :goto_14
    invoke-virtual {p0, v1, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    #@3dd
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e0
    .line 418
    const/4 v13, 0x1

    #@3e1
    return v13

    #@3e2
    .line 414
    :cond_14
    const/4 v4, 0x0

    #@3e3
    .local v4, "_arg1":Lcom/android/ims/ImsConferenceState;
    goto :goto_14

    #@3e4
    .line 422
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :sswitch_19
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@3e7
    move-object/from16 v0, p2

    #@3e9
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ec
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ef
    move-result-object v13

    #@3f0
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@3f3
    move-result-object v1

    #@3f4
    .line 426
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f7
    move-result v2

    #@3f8
    .line 428
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3fb
    move-result-object v11

    #@3fc
    .line 429
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v11}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    #@3ff
    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@402
    .line 431
    const/4 v13, 0x1

    #@403
    return v13

    #@404
    .line 435
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg1":I
    .end local v11    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@407
    move-object/from16 v0, p2

    #@409
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40c
    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40f
    move-result-object v13

    #@410
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@413
    move-result-object v1

    #@414
    .line 439
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@417
    move-result v2

    #@418
    .line 441
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41b
    move-result v9

    #@41c
    .line 443
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41f
    move-result v13

    #@420
    if-eqz v13, :cond_15

    #@422
    .line 444
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@424
    move-object/from16 v0, p2

    #@426
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@429
    move-result-object v12

    #@42a
    check-cast v12, Lcom/android/ims/ImsReasonInfo;

    #@42c
    .line 449
    :goto_15
    invoke-virtual {p0, v1, v2, v9, v12}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    #@42f
    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@432
    .line 451
    const/4 v13, 0x1

    #@433
    return v13

    #@434
    .line 447
    :cond_15
    const/4 v12, 0x0

    #@435
    .local v12, "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_15

    #@436
    .line 455
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v12    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1b
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@439
    move-object/from16 v0, p2

    #@43b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43e
    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@441
    move-result-object v13

    #@442
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@445
    move-result-object v1

    #@446
    .line 459
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@449
    move-result v2

    #@44a
    .line 461
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44d
    move-result v9

    #@44e
    .line 463
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@451
    move-result v13

    #@452
    if-eqz v13, :cond_16

    #@454
    .line 464
    sget-object v13, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@456
    move-object/from16 v0, p2

    #@458
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45b
    move-result-object v12

    #@45c
    check-cast v12, Lcom/android/ims/ImsReasonInfo;

    #@45e
    .line 469
    :goto_16
    invoke-virtual {p0, v1, v2, v9, v12}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    #@461
    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@464
    .line 471
    const/4 v13, 0x1

    #@465
    return v13

    #@466
    .line 467
    :cond_16
    const/4 v12, 0x0

    #@467
    .restart local v12    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_16

    #@468
    .line 475
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v12    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1c
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@46b
    move-object/from16 v0, p2

    #@46d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@470
    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@473
    move-result-object v13

    #@474
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@477
    move-result-object v1

    #@478
    .line 479
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47b
    move-result v2

    #@47c
    .line 480
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    #@47f
    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@482
    .line 482
    const/4 v13, 0x1

    #@483
    return v13

    #@484
    .line 486
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v2    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v13, "com.android.ims.internal.IImsCallSessionListener"

    #@487
    move-object/from16 v0, p2

    #@489
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48c
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@48f
    move-result-object v13

    #@490
    invoke-static {v13}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    #@493
    move-result-object v1

    #@494
    .line 490
    .restart local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@497
    move-result v13

    #@498
    if-eqz v13, :cond_17

    #@49a
    const/4 v8, 0x1

    #@49b
    .line 491
    .local v8, "_arg1":Z
    :goto_17
    invoke-virtual {p0, v1, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    #@49e
    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a1
    .line 493
    const/4 v13, 0x1

    #@4a2
    return v13

    #@4a3
    .line 490
    .end local v8    # "_arg1":Z
    :cond_17
    const/4 v8, 0x0

    #@4a4
    .restart local v8    # "_arg1":Z
    goto :goto_17

    #@4a5
    .line 44
    nop

    #@4a6
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
