.class public abstract Lcom/android/ims/internal/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field static final TRANSACTION_getFeatureValue:I = 0x5

.field static final TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final TRANSACTION_getProvisionedValue:I = 0x1

.field static final TRANSACTION_getVideoQuality:I = 0x8

.field static final TRANSACTION_getVolteProvisioned:I = 0x7

.field static final TRANSACTION_setFeatureValue:I = 0x6

.field static final TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final TRANSACTION_setProvisionedValue:I = 0x3

.field static final TRANSACTION_setVideoQuality:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 23
    const-string/jumbo v0, "com.android.ims.internal.IImsConfig"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 31
    if-nez p0, :cond_0

    #@3
    .line 32
    return-object v1

    #@4
    .line 34
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsConfig"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/IImsConfig;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 36
    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 42
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
    .line 46
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 150
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 50
    :sswitch_0
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 51
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 55
    :sswitch_1
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedValue(I)I

    #@1d
    move-result v8

    #@1e
    .line 59
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 60
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 61
    const/4 v11, 0x1

    #@25
    return v11

    #@26
    .line 65
    .end local v0    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_2
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@29
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    .line 69
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    .line 70
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 71
    const/4 v11, 0x1

    #@3b
    return v11

    #@3c
    .line 75
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@3f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v2

    #@4a
    .line 80
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedValue(II)I

    #@4d
    move-result v8

    #@4e
    .line 81
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 82
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 83
    const/4 v11, 0x1

    #@55
    return v11

    #@56
    .line 87
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_4
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@59
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    .line 92
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    #@67
    move-result v8

    #@68
    .line 93
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b
    .line 94
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 95
    const/4 v11, 0x1

    #@6f
    return v11

    #@70
    .line 99
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@73
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v0

    #@7a
    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v2

    #@7e
    .line 105
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@81
    move-result-object v11

    #@82
    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    #@85
    move-result-object v6

    #@86
    .line 106
    .local v6, "_arg2":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v0, v2, v6}, Lcom/android/ims/internal/IImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    #@89
    .line 107
    const/4 v11, 0x1

    #@8a
    return v11

    #@8b
    .line 111
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_arg2":Lcom/android/ims/ImsConfigListener;
    :sswitch_6
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@8e
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v0

    #@95
    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v2

    #@99
    .line 117
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v5

    #@9d
    .line 119
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a0
    move-result-object v11

    #@a1
    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    #@a4
    move-result-object v7

    #@a5
    .line 120
    .local v7, "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v0, v2, v5, v7}, Lcom/android/ims/internal/IImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    #@a8
    .line 121
    const/4 v11, 0x1

    #@a9
    return v11

    #@aa
    .line 125
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :sswitch_7
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@ad
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 126
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getVolteProvisioned()Z

    #@b3
    move-result v10

    #@b4
    .line 127
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7
    .line 128
    if-eqz v10, :cond_0

    #@b9
    const/4 v11, 0x1

    #@ba
    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@bd
    .line 129
    const/4 v11, 0x1

    #@be
    return v11

    #@bf
    .line 128
    :cond_0
    const/4 v11, 0x0

    #@c0
    goto :goto_0

    #@c1
    .line 133
    .end local v10    # "_result":Z
    :sswitch_8
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@c4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ca
    move-result-object v11

    #@cb
    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    #@ce
    move-result-object v1

    #@cf
    .line 136
    .local v1, "_arg0":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    #@d2
    .line 137
    const/4 v11, 0x1

    #@d3
    return v11

    #@d4
    .line 141
    .end local v1    # "_arg0":Lcom/android/ims/ImsConfigListener;
    :sswitch_9
    const-string/jumbo v11, "com.android.ims.internal.IImsConfig"

    #@d7
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da
    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v0

    #@de
    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e1
    move-result-object v11

    #@e2
    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    #@e5
    move-result-object v3

    #@e6
    .line 146
    .local v3, "_arg1":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v0, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    #@e9
    .line 147
    const/4 v11, 0x1

    #@ea
    return v11

    #@eb
    .line 46
    nop

    #@ec
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
