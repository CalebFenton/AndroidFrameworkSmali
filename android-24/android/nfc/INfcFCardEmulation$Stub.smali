.class public abstract Landroid/nfc/INfcFCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcFCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcFCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcFCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcFCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcFCardEmulation"

.field static final TRANSACTION_disableNfcFForegroundService:I = 0x7

.field static final TRANSACTION_enableNfcFForegroundService:I = 0x6

.field static final TRANSACTION_getMaxNumOfRegisterableSystemCodes:I = 0x9

.field static final TRANSACTION_getNfcFServices:I = 0x8

.field static final TRANSACTION_getNfcid2ForService:I = 0x4

.field static final TRANSACTION_getSystemCodeForService:I = 0x1

.field static final TRANSACTION_registerSystemCodeForService:I = 0x2

.field static final TRANSACTION_removeSystemCodeForService:I = 0x3

.field static final TRANSACTION_setNfcid2ForService:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.INfcFCardEmulation"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcFCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcFCardEmulation;
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
    const-string/jumbo v1, "android.nfc.INfcFCardEmulation"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/INfcFCardEmulation;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/INfcFCardEmulation;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v8

    #@9
    return v8

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    #@d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v9

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_0

    #@21
    .line 55
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/content/ComponentName;

    #@29
    .line 60
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 61
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@30
    .line 62
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 63
    return v9

    #@34
    .line 58
    .end local v5    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    #@36
    .line 67
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    #@39
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v10

    #@44
    if-eqz v10, :cond_2

    #@46
    .line 72
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@48
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    check-cast v2, Landroid/content/ComponentName;

    #@4e
    .line 78
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 79
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    #@55
    move-result v7

    #@56
    .line 80
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 81
    if-eqz v7, :cond_1

    #@5b
    move v8, v9

    #@5c
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 82
    return v9

    #@60
    .line 75
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    #@61
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    #@62
    .line 86
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    #@65
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v0

    #@6c
    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v10

    #@70
    if-eqz v10, :cond_4

    #@72
    .line 91
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77
    move-result-object v2

    #@78
    check-cast v2, Landroid/content/ComponentName;

    #@7a
    .line 96
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    #@7d
    move-result v7

    #@7e
    .line 97
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@81
    .line 98
    if-eqz v7, :cond_3

    #@83
    move v8, v9

    #@84
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 99
    return v9

    #@88
    .line 94
    .end local v7    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    #@89
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    #@8a
    .line 103
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    #@8d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v8

    #@98
    if-eqz v8, :cond_5

    #@9a
    .line 108
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9c
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9f
    move-result-object v2

    #@a0
    check-cast v2, Landroid/content/ComponentName;

    #@a2
    .line 113
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    .line 114
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9
    .line 115
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ac
    .line 116
    return v9

    #@ad
    .line 111
    .end local v5    # "_result":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    #@ae
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3

    #@af
    .line 120
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_5
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    #@b2
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v0

    #@b9
    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v10

    #@bd
    if-eqz v10, :cond_7

    #@bf
    .line 125
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c1
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c4
    move-result-object v2

    #@c5
    check-cast v2, Landroid/content/ComponentName;

    #@c7
    .line 131
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca
    move-result-object v3

    #@cb
    .line 132
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    #@ce
    move-result v7

    #@cf
    .line 133
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2
    .line 134
    if-eqz v7, :cond_6

    #@d4
    move v8, v9

    #@d5
    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@d8
    .line 135
    return v9

    #@d9
    .line 128
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    #@da
    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    #@db
    .line 139
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    #@de
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v10

    #@e5
    if-eqz v10, :cond_9

    #@e7
    .line 142
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e9
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ec
    move-result-object v1

    #@ed
    check-cast v1, Landroid/content/ComponentName;

    #@ef
    .line 147
    :goto_5
    invoke-virtual {p0, v1}, Landroid/nfc/INfcFCardEmulation$Stub;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    #@f2
    move-result v7

    #@f3
    .line 148
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f6
    .line 149
    if-eqz v7, :cond_8

    #@f8
    move v8, v9

    #@f9
    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    .line 150
    return v9

    #@fd
    .line 145
    .end local v7    # "_result":Z
    :cond_9
    const/4 v1, 0x0

    #@fe
    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@ff
    .line 154
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    #@102
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@105
    .line 155
    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->disableNfcFForegroundService()Z

    #@108
    move-result v7

    #@109
    .line 156
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@10c
    .line 157
    if-eqz v7, :cond_a

    #@10e
    move v8, v9

    #@10f
    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@112
    .line 158
    return v9

    #@113
    .line 162
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    #@116
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v0

    #@11d
    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcFServices(I)Ljava/util/List;

    #@120
    move-result-object v6

    #@121
    .line 166
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@127
    .line 168
    return v9

    #@128
    .line 172
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :sswitch_9
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    #@12b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e
    .line 173
    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->getMaxNumOfRegisterableSystemCodes()I

    #@131
    move-result v4

    #@132
    .line 174
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@138
    .line 176
    return v9

    #@139
    .line 41
    nop

    #@13a
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
