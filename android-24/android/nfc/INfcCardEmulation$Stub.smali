.class public abstract Landroid/nfc/INfcCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcCardEmulation"

.field static final TRANSACTION_getAidGroupForService:I = 0x6

.field static final TRANSACTION_getServices:I = 0x8

.field static final TRANSACTION_isDefaultServiceForAid:I = 0x2

.field static final TRANSACTION_isDefaultServiceForCategory:I = 0x1

.field static final TRANSACTION_registerAidGroupForService:I = 0x5

.field static final TRANSACTION_removeAidGroupForService:I = 0x7

.field static final TRANSACTION_setDefaultForNextTap:I = 0x4

.field static final TRANSACTION_setDefaultServiceForCategory:I = 0x3

.field static final TRANSACTION_setPreferredService:I = 0x9

.field static final TRANSACTION_supportsAidPrefixRegistration:I = 0xb

.field static final TRANSACTION_unsetPreferredService:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.INfcCardEmulation"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
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
    const-string/jumbo v1, "android.nfc.INfcCardEmulation"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/INfcCardEmulation;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/INfcCardEmulation;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcCardEmulation$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/INfcCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v9

    #@7
    return v9

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v9, 0x1

    #@f
    return v9

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@13
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_0

    #@20
    .line 55
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/content/ComponentName;

    #@28
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 62
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    #@2f
    move-result v8

    #@30
    .line 63
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 64
    if-eqz v8, :cond_1

    #@35
    const/4 v9, 0x1

    #@36
    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 65
    const/4 v9, 0x1

    #@3a
    return v9

    #@3b
    .line 58
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@3c
    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    #@3d
    .line 64
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 69
    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@42
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v9

    #@4d
    if-eqz v9, :cond_2

    #@4f
    .line 74
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@51
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Landroid/content/ComponentName;

    #@57
    .line 80
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    .line 81
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    #@5e
    move-result v8

    #@5f
    .line 82
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 83
    if-eqz v8, :cond_3

    #@64
    const/4 v9, 0x1

    #@65
    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 84
    const/4 v9, 0x1

    #@69
    return v9

    #@6a
    .line 77
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    #@6c
    .line 83
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_3
    const/4 v9, 0x0

    #@6d
    goto :goto_3

    #@6e
    .line 88
    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@71
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v0

    #@78
    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v9

    #@7c
    if-eqz v9, :cond_4

    #@7e
    .line 93
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@80
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Landroid/content/ComponentName;

    #@86
    .line 99
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    .line 100
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    #@8d
    move-result v8

    #@8e
    .line 101
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@91
    .line 102
    if-eqz v8, :cond_5

    #@93
    const/4 v9, 0x1

    #@94
    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    .line 103
    const/4 v9, 0x1

    #@98
    return v9

    #@99
    .line 96
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    #@9a
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    #@9b
    .line 102
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    #@9c
    goto :goto_5

    #@9d
    .line 107
    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@a0
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v0

    #@a7
    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v9

    #@ab
    if-eqz v9, :cond_6

    #@ad
    .line 112
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@af
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b2
    move-result-object v2

    #@b3
    check-cast v2, Landroid/content/ComponentName;

    #@b5
    .line 117
    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    #@b8
    move-result v8

    #@b9
    .line 118
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc
    .line 119
    if-eqz v8, :cond_7

    #@be
    const/4 v9, 0x1

    #@bf
    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@c2
    .line 120
    const/4 v9, 0x1

    #@c3
    return v9

    #@c4
    .line 115
    .end local v8    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    #@c5
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    #@c6
    .line 119
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v8    # "_result":Z
    :cond_7
    const/4 v9, 0x0

    #@c7
    goto :goto_7

    #@c8
    .line 124
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_5
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@cb
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d1
    move-result v0

    #@d2
    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d5
    move-result v9

    #@d6
    if-eqz v9, :cond_8

    #@d8
    .line 129
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@da
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dd
    move-result-object v2

    #@de
    check-cast v2, Landroid/content/ComponentName;

    #@e0
    .line 135
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e3
    move-result v9

    #@e4
    if-eqz v9, :cond_9

    #@e6
    .line 136
    sget-object v9, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e8
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@eb
    move-result-object v4

    #@ec
    check-cast v4, Landroid/nfc/cardemulation/AidGroup;

    #@ee
    .line 141
    :goto_9
    invoke-virtual {p0, v0, v2, v4}, Landroid/nfc/INfcCardEmulation$Stub;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    #@f1
    move-result v8

    #@f2
    .line 142
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f5
    .line 143
    if-eqz v8, :cond_a

    #@f7
    const/4 v9, 0x1

    #@f8
    :goto_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    .line 144
    const/4 v9, 0x1

    #@fc
    return v9

    #@fd
    .line 132
    .end local v8    # "_result":Z
    :cond_8
    const/4 v2, 0x0

    #@fe
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8

    #@ff
    .line 139
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_9
    const/4 v4, 0x0

    #@100
    .local v4, "_arg2":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_9

    #@101
    .line 143
    .end local v4    # "_arg2":Landroid/nfc/cardemulation/AidGroup;
    .restart local v8    # "_result":Z
    :cond_a
    const/4 v9, 0x0

    #@102
    goto :goto_a

    #@103
    .line 148
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@106
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10c
    move-result v0

    #@10d
    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@110
    move-result v9

    #@111
    if-eqz v9, :cond_b

    #@113
    .line 153
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@115
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@118
    move-result-object v2

    #@119
    check-cast v2, Landroid/content/ComponentName;

    #@11b
    .line 159
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e
    move-result-object v5

    #@11f
    .line 160
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    #@122
    move-result-object v6

    #@123
    .line 161
    .local v6, "_result":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@126
    .line 162
    if-eqz v6, :cond_c

    #@128
    .line 163
    const/4 v9, 0x1

    #@129
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    .line 164
    const/4 v9, 0x1

    #@12d
    invoke-virtual {v6, p3, v9}, Landroid/nfc/cardemulation/AidGroup;->writeToParcel(Landroid/os/Parcel;I)V

    #@130
    .line 169
    :goto_c
    const/4 v9, 0x1

    #@131
    return v9

    #@132
    .line 156
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :cond_b
    const/4 v2, 0x0

    #@133
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b

    #@134
    .line 167
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :cond_c
    const/4 v9, 0x0

    #@135
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@138
    goto :goto_c

    #@139
    .line 173
    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :sswitch_7
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@13c
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f
    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v0

    #@143
    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v9

    #@147
    if-eqz v9, :cond_d

    #@149
    .line 178
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14b
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14e
    move-result-object v2

    #@14f
    check-cast v2, Landroid/content/ComponentName;

    #@151
    .line 184
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@154
    move-result-object v5

    #@155
    .line 185
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    #@158
    move-result v8

    #@159
    .line 186
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c
    .line 187
    if-eqz v8, :cond_e

    #@15e
    const/4 v9, 0x1

    #@15f
    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@162
    .line 188
    const/4 v9, 0x1

    #@163
    return v9

    #@164
    .line 181
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_d
    const/4 v2, 0x0

    #@165
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d

    #@166
    .line 187
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_e
    const/4 v9, 0x0

    #@167
    goto :goto_e

    #@168
    .line 192
    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_8
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@16b
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v0

    #@172
    .line 196
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@175
    move-result-object v3

    #@176
    .line 197
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcCardEmulation$Stub;->getServices(ILjava/lang/String;)Ljava/util/List;

    #@179
    move-result-object v7

    #@17a
    .line 198
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 199
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@180
    .line 200
    const/4 v9, 0x1

    #@181
    return v9

    #@182
    .line 204
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :sswitch_9
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@185
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@188
    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v9

    #@18c
    if-eqz v9, :cond_f

    #@18e
    .line 207
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@190
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@193
    move-result-object v1

    #@194
    check-cast v1, Landroid/content/ComponentName;

    #@196
    .line 212
    :goto_f
    invoke-virtual {p0, v1}, Landroid/nfc/INfcCardEmulation$Stub;->setPreferredService(Landroid/content/ComponentName;)Z

    #@199
    move-result v8

    #@19a
    .line 213
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 214
    if-eqz v8, :cond_10

    #@19f
    const/4 v9, 0x1

    #@1a0
    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1a3
    .line 215
    const/4 v9, 0x1

    #@1a4
    return v9

    #@1a5
    .line 210
    .end local v8    # "_result":Z
    :cond_f
    const/4 v1, 0x0

    #@1a6
    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    #@1a7
    .line 214
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_result":Z
    :cond_10
    const/4 v9, 0x0

    #@1a8
    goto :goto_10

    #@1a9
    .line 219
    .end local v8    # "_result":Z
    :sswitch_a
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@1ac
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af
    .line 220
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->unsetPreferredService()Z

    #@1b2
    move-result v8

    #@1b3
    .line 221
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6
    .line 222
    if-eqz v8, :cond_11

    #@1b8
    const/4 v9, 0x1

    #@1b9
    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1bc
    .line 223
    const/4 v9, 0x1

    #@1bd
    return v9

    #@1be
    .line 222
    :cond_11
    const/4 v9, 0x0

    #@1bf
    goto :goto_11

    #@1c0
    .line 227
    .end local v8    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "android.nfc.INfcCardEmulation"

    #@1c3
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c6
    .line 228
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAidPrefixRegistration()Z

    #@1c9
    move-result v8

    #@1ca
    .line 229
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd
    .line 230
    if-eqz v8, :cond_12

    #@1cf
    const/4 v9, 0x1

    #@1d0
    :goto_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@1d3
    .line 231
    const/4 v9, 0x1

    #@1d4
    return v9

    #@1d5
    .line 230
    :cond_12
    const/4 v9, 0x0

    #@1d6
    goto :goto_12

    #@1d7
    .line 41
    nop

    #@1d8
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
