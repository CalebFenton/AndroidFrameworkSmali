.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_publishMyCap:I = 0x5

.field static final TRANSACTION_reenableService:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 17
    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 25
    if-nez p0, :cond_0

    #@3
    .line 26
    return-object v1

    #@4
    .line 28
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.uce.presence.IPresenceService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 30
    check-cast v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 36
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v13

    #@7
    return v13

    #@8
    .line 44
    :sswitch_0
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 45
    const/4 v13, 0x1

    #@11
    return v13

    #@12
    .line 49
    :sswitch_1
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@21
    move-result-object v12

    #@22
    .line 53
    .local v12, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 54
    if-eqz v12, :cond_0

    #@27
    .line 55
    const/4 v13, 0x1

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 56
    const/4 v13, 0x1

    #@2e
    move-object/from16 v0, p3

    #@30
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 61
    :goto_0
    const/4 v13, 0x1

    #@34
    return v13

    #@35
    .line 59
    :cond_0
    const/4 v13, 0x0

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 65
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_2
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v1

    #@48
    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v13

    #@4c
    invoke-static {v13}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    #@4f
    move-result-object v4

    #@50
    .line 71
    .local v4, "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v13

    #@54
    if-eqz v13, :cond_1

    #@56
    .line 72
    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v9

    #@5e
    check-cast v9, Lcom/android/ims/internal/uce/common/UceLong;

    #@60
    .line 77
    :goto_1
    invoke-virtual {p0, v1, v4, v9}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    #@63
    move-result-object v12

    #@64
    .line 78
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 79
    if-eqz v12, :cond_2

    #@69
    .line 80
    const/4 v13, 0x1

    #@6a
    move-object/from16 v0, p3

    #@6c
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 81
    const/4 v13, 0x1

    #@70
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@75
    .line 86
    :goto_2
    if-eqz v9, :cond_3

    #@77
    .line 87
    const/4 v13, 0x1

    #@78
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 88
    const/4 v13, 0x1

    #@7e
    move-object/from16 v0, p3

    #@80
    invoke-virtual {v9, v0, v13}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@83
    .line 93
    :goto_3
    const/4 v13, 0x1

    #@84
    return v13

    #@85
    .line 75
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_1
    const/4 v9, 0x0

    #@86
    .local v9, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_1

    #@87
    .line 84
    .end local v9    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_2
    const/4 v13, 0x0

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    goto :goto_2

    #@8e
    .line 91
    :cond_3
    const/4 v13, 0x0

    #@8f
    move-object/from16 v0, p3

    #@91
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    goto :goto_3

    #@95
    .line 97
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_3
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v1

    #@a1
    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a4
    move-result v13

    #@a5
    if-eqz v13, :cond_4

    #@a7
    .line 102
    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a9
    move-object/from16 v0, p2

    #@ab
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae
    move-result-object v3

    #@af
    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    #@b1
    .line 107
    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    #@b4
    move-result-object v12

    #@b5
    .line 108
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 109
    if-eqz v12, :cond_5

    #@ba
    .line 110
    const/4 v13, 0x1

    #@bb
    move-object/from16 v0, p3

    #@bd
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    .line 111
    const/4 v13, 0x1

    #@c1
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@c6
    .line 116
    :goto_5
    const/4 v13, 0x1

    #@c7
    return v13

    #@c8
    .line 105
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_4
    const/4 v3, 0x0

    #@c9
    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_4

    #@ca
    .line 114
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_5
    const/4 v13, 0x0

    #@cb
    move-object/from16 v0, p3

    #@cd
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    goto :goto_5

    #@d1
    .line 120
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_4
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v1

    #@dd
    .line 124
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e0
    move-result v2

    #@e1
    .line 125
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    #@e4
    move-result-object v12

    #@e5
    .line 126
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8
    .line 127
    if-eqz v12, :cond_6

    #@ea
    .line 128
    const/4 v13, 0x1

    #@eb
    move-object/from16 v0, p3

    #@ed
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@f0
    .line 129
    const/4 v13, 0x1

    #@f1
    move-object/from16 v0, p3

    #@f3
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@f6
    .line 134
    :goto_6
    const/4 v13, 0x1

    #@f7
    return v13

    #@f8
    .line 132
    :cond_6
    const/4 v13, 0x0

    #@f9
    move-object/from16 v0, p3

    #@fb
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@fe
    goto :goto_6

    #@ff
    .line 138
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_5
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@102
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@107
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v1

    #@10b
    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v13

    #@10f
    if-eqz v13, :cond_7

    #@111
    .line 143
    sget-object v13, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@113
    move-object/from16 v0, p2

    #@115
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@118
    move-result-object v5

    #@119
    check-cast v5, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    #@11b
    .line 149
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v8

    #@11f
    .line 150
    .local v8, "_arg2":I
    invoke-virtual {p0, v1, v5, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@122
    move-result-object v12

    #@123
    .line 151
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 152
    if-eqz v12, :cond_8

    #@128
    .line 153
    const/4 v13, 0x1

    #@129
    move-object/from16 v0, p3

    #@12b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@12e
    .line 154
    const/4 v13, 0x1

    #@12f
    move-object/from16 v0, p3

    #@131
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@134
    .line 159
    :goto_8
    const/4 v13, 0x1

    #@135
    return v13

    #@136
    .line 146
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_7
    const/4 v5, 0x0

    #@137
    .local v5, "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    goto :goto_7

    #@138
    .line 157
    .end local v5    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .restart local v8    # "_arg2":I
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_8
    const/4 v13, 0x0

    #@139
    move-object/from16 v0, p3

    #@13b
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@13e
    goto :goto_8

    #@13f
    .line 163
    .end local v1    # "_arg0":I
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_6
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v1

    #@14b
    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14e
    move-result-object v6

    #@14f
    .line 169
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@152
    move-result v8

    #@153
    .line 170
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v6, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@156
    move-result-object v12

    #@157
    .line 171
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    .line 172
    if-eqz v12, :cond_9

    #@15c
    .line 173
    const/4 v13, 0x1

    #@15d
    move-object/from16 v0, p3

    #@15f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 174
    const/4 v13, 0x1

    #@163
    move-object/from16 v0, p3

    #@165
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@168
    .line 179
    :goto_9
    const/4 v13, 0x1

    #@169
    return v13

    #@16a
    .line 177
    :cond_9
    const/4 v13, 0x0

    #@16b
    move-object/from16 v0, p3

    #@16d
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@170
    goto :goto_9

    #@171
    .line 183
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_7
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v1

    #@17d
    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@180
    move-result-object v7

    #@181
    .line 189
    .local v7, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@184
    move-result v8

    #@185
    .line 190
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@188
    move-result-object v12

    #@189
    .line 191
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 192
    if-eqz v12, :cond_a

    #@18e
    .line 193
    const/4 v13, 0x1

    #@18f
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@194
    .line 194
    const/4 v13, 0x1

    #@195
    move-object/from16 v0, p3

    #@197
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@19a
    .line 199
    :goto_a
    const/4 v13, 0x1

    #@19b
    return v13

    #@19c
    .line 197
    :cond_a
    const/4 v13, 0x0

    #@19d
    move-object/from16 v0, p3

    #@19f
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2
    goto :goto_a

    #@1a3
    .line 203
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":[Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_8
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ab
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ae
    move-result v1

    #@1af
    .line 207
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b2
    move-result-object v6

    #@1b3
    .line 209
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b6
    move-result v13

    #@1b7
    if-eqz v13, :cond_b

    #@1b9
    .line 210
    sget-object v13, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c0
    move-result-object v10

    #@1c1
    check-cast v10, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    #@1c3
    .line 216
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v11

    #@1c7
    .line 217
    .local v11, "_arg3":I
    invoke-virtual {p0, v1, v6, v10, v11}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    #@1ca
    move-result-object v12

    #@1cb
    .line 218
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ce
    .line 219
    if-eqz v12, :cond_c

    #@1d0
    .line 220
    const/4 v13, 0x1

    #@1d1
    move-object/from16 v0, p3

    #@1d3
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1d6
    .line 221
    const/4 v13, 0x1

    #@1d7
    move-object/from16 v0, p3

    #@1d9
    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    #@1dc
    .line 226
    :goto_c
    const/4 v13, 0x1

    #@1dd
    return v13

    #@1de
    .line 213
    .end local v11    # "_arg3":I
    .end local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_b
    const/4 v10, 0x0

    #@1df
    .local v10, "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    goto :goto_b

    #@1e0
    .line 224
    .end local v10    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .restart local v11    # "_arg3":I
    .restart local v12    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :cond_c
    const/4 v13, 0x0

    #@1e1
    move-object/from16 v0, p3

    #@1e3
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    #@1e6
    goto :goto_c

    #@1e7
    .line 40
    nop

    #@1e8
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
