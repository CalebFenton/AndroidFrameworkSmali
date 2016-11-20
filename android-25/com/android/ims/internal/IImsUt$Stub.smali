.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_queryCLIP:I = 0x6

.field static final TRANSACTION_queryCLIR:I = 0x5

.field static final TRANSACTION_queryCOLP:I = 0x8

.field static final TRANSACTION_queryCOLR:I = 0x7

.field static final TRANSACTION_queryCallBarring:I = 0x2

.field static final TRANSACTION_queryCallForward:I = 0x3

.field static final TRANSACTION_queryCallWaiting:I = 0x4

.field static final TRANSACTION_setListener:I = 0x11

.field static final TRANSACTION_transact:I = 0x9

.field static final TRANSACTION_updateCLIP:I = 0xe

.field static final TRANSACTION_updateCLIR:I = 0xd

.field static final TRANSACTION_updateCOLP:I = 0x10

.field static final TRANSACTION_updateCOLR:I = 0xf

.field static final TRANSACTION_updateCallBarring:I = 0xa

.field static final TRANSACTION_updateCallForward:I = 0xb

.field static final TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
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
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Lcom/android/ims/internal/IImsUt;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    #@19
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 55
    const/4 v0, 0x1

    #@1d
    return v0

    #@1e
    .line 59
    :sswitch_2
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v1

    #@28
    .line 62
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    #@2b
    move-result v11

    #@2c
    .line 63
    .local v11, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 64
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 65
    const/4 v0, 0x1

    #@33
    return v0

    #@34
    .line 69
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_3
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    .line 73
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 74
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v9}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    #@45
    move-result v11

    #@46
    .line 75
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 76
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 77
    const/4 v0, 0x1

    #@4d
    return v0

    #@4e
    .line 81
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_4
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 82
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    #@57
    move-result v11

    #@58
    .line 83
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b
    .line 84
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 85
    const/4 v0, 0x1

    #@5f
    return v0

    #@60
    .line 89
    .end local v11    # "_result":I
    :sswitch_5
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 90
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    #@69
    move-result v11

    #@6a
    .line 91
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d
    .line 92
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 93
    const/4 v0, 0x1

    #@71
    return v0

    #@72
    .line 97
    .end local v11    # "_result":I
    :sswitch_6
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    .line 98
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    #@7b
    move-result v11

    #@7c
    .line 99
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 100
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    .line 101
    const/4 v0, 0x1

    #@83
    return v0

    #@84
    .line 105
    .end local v11    # "_result":I
    :sswitch_7
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 106
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    #@8d
    move-result v11

    #@8e
    .line 107
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 108
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@94
    .line 109
    const/4 v0, 0x1

    #@95
    return v0

    #@96
    .line 113
    .end local v11    # "_result":I
    :sswitch_8
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 114
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    #@9f
    move-result v11

    #@a0
    .line 115
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a3
    .line 116
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@a6
    .line 117
    const/4 v0, 0x1

    #@a7
    return v0

    #@a8
    .line 121
    .end local v11    # "_result":I
    :sswitch_9
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_0

    #@b4
    .line 124
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b6
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b9
    move-result-object v6

    #@ba
    check-cast v6, Landroid/os/Bundle;

    #@bc
    .line 129
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    #@bf
    move-result v11

    #@c0
    .line 130
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3
    .line 131
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@c6
    .line 132
    const/4 v0, 0x1

    #@c7
    return v0

    #@c8
    .line 127
    .end local v11    # "_result":I
    :cond_0
    const/4 v6, 0x0

    #@c9
    .local v6, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@ca
    .line 136
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@cd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v1

    #@d4
    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v2

    #@d8
    .line 142
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@db
    move-result-object v10

    #@dc
    .line 143
    .local v10, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v10}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    #@df
    move-result v11

    #@e0
    .line 144
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3
    .line 145
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@e6
    .line 146
    const/4 v0, 0x1

    #@e7
    return v0

    #@e8
    .line 150
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_arg2":[Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_b
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@eb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f1
    move-result v1

    #@f2
    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f5
    move-result v2

    #@f6
    .line 156
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    .line 158
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v4

    #@fe
    .line 160
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v5

    #@102
    .local v5, "_arg4":I
    move-object v0, p0

    #@103
    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    #@106
    move-result v11

    #@107
    .line 162
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10a
    .line 163
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@10d
    .line 164
    const/4 v0, 0x1

    #@10e
    return v0

    #@10f
    .line 168
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v11    # "_result":I
    :sswitch_c
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@115
    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@118
    move-result v0

    #@119
    if-eqz v0, :cond_1

    #@11b
    const/4 v8, 0x1

    #@11c
    .line 172
    .local v8, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v2

    #@120
    .line 173
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v8, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    #@123
    move-result v11

    #@124
    .line 174
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@127
    .line 175
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@12a
    .line 176
    const/4 v0, 0x1

    #@12b
    return v0

    #@12c
    .line 170
    .end local v2    # "_arg1":I
    .end local v8    # "_arg0":Z
    .end local v11    # "_result":I
    :cond_1
    const/4 v8, 0x0

    #@12d
    .restart local v8    # "_arg0":Z
    goto :goto_1

    #@12e
    .line 180
    .end local v8    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v1

    #@138
    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    #@13b
    move-result v11

    #@13c
    .line 184
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f
    .line 185
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@142
    .line 186
    const/4 v0, 0x1

    #@143
    return v0

    #@144
    .line 190
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_e
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14d
    move-result v0

    #@14e
    if-eqz v0, :cond_2

    #@150
    const/4 v8, 0x1

    #@151
    .line 193
    .local v8, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    #@154
    move-result v11

    #@155
    .line 194
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@158
    .line 195
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@15b
    .line 196
    const/4 v0, 0x1

    #@15c
    return v0

    #@15d
    .line 192
    .end local v8    # "_arg0":Z
    .end local v11    # "_result":I
    :cond_2
    const/4 v8, 0x0

    #@15e
    goto :goto_2

    #@15f
    .line 200
    :sswitch_f
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@165
    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@168
    move-result v1

    #@169
    .line 203
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    #@16c
    move-result v11

    #@16d
    .line 204
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@170
    .line 205
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@173
    .line 206
    const/4 v0, 0x1

    #@174
    return v0

    #@175
    .line 210
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_10
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@178
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b
    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17e
    move-result v0

    #@17f
    if-eqz v0, :cond_3

    #@181
    const/4 v8, 0x1

    #@182
    .line 213
    .restart local v8    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v8}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    #@185
    move-result v11

    #@186
    .line 214
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@189
    .line 215
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@18c
    .line 216
    const/4 v0, 0x1

    #@18d
    return v0

    #@18e
    .line 212
    .end local v8    # "_arg0":Z
    .end local v11    # "_result":I
    :cond_3
    const/4 v8, 0x0

    #@18f
    goto :goto_3

    #@190
    .line 220
    :sswitch_11
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    #@193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@196
    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@199
    move-result-object v0

    #@19a
    invoke-static {v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    #@19d
    move-result-object v7

    #@19e
    .line 223
    .local v7, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual {p0, v7}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    #@1a1
    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a4
    .line 225
    const/4 v0, 0x1

    #@1a5
    return v0

    #@1a6
    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
