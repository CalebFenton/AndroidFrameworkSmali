.class public abstract Landroid/os/IVoldListener$Stub;
.super Landroid/os/Binder;
.source "IVoldListener.java"

# interfaces
.implements Landroid/os/IVoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldListener"

.field static final greylist-max-o TRANSACTION_onDiskCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_onDiskDestroyed:I = 0x4

.field static final greylist-max-o TRANSACTION_onDiskMetadataChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onDiskScanned:I = 0x2

.field static final greylist-max-o TRANSACTION_onVolumeCreated:I = 0x5

.field static final greylist-max-o TRANSACTION_onVolumeDestroyed:I = 0xa

.field static final greylist-max-o TRANSACTION_onVolumeInternalPathChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onVolumeMetadataChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onVolumePathChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onVolumeStateChanged:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.os.IVoldListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoldListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.os.IVoldListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVoldListener;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/os/IVoldListener;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/os/IVoldListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVoldListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_2e

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "onVolumeDestroyed"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "onVolumeInternalPathChanged"

    return-object v0

    .line 114
    :pswitch_d
    const-string/jumbo v0, "onVolumePathChanged"

    return-object v0

    .line 110
    :pswitch_11
    const-string/jumbo v0, "onVolumeMetadataChanged"

    return-object v0

    .line 106
    :pswitch_15
    const-string/jumbo v0, "onVolumeStateChanged"

    return-object v0

    .line 102
    :pswitch_19
    const-string/jumbo v0, "onVolumeCreated"

    return-object v0

    .line 98
    :pswitch_1d
    const-string/jumbo v0, "onDiskDestroyed"

    return-object v0

    .line 94
    :pswitch_21
    const-string/jumbo v0, "onDiskMetadataChanged"

    return-object v0

    .line 90
    :pswitch_25
    const-string/jumbo v0, "onDiskScanned"

    return-object v0

    .line 86
    :pswitch_29
    const-string/jumbo v0, "onDiskCreated"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 430
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/os/IVoldListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v6, "android.os.IVoldListener"

    .line 138
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 139
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 142
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v7

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_ce

    .line 259
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 252
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v1}, Landroid/os/IVoldListener$Stub;->onVolumeDestroyed(Ljava/lang/String;)V

    .line 255
    goto/16 :goto_cd

    .line 242
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoldListener$Stub;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    goto/16 :goto_cd

    .line 232
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoldListener$Stub;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    goto/16 :goto_cd

    .line 218
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IVoldListener$Stub;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    goto :goto_cd

    .line 206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IVoldListener$Stub;->onVolumeStateChanged(Ljava/lang/String;II)V

    .line 213
    goto :goto_cd

    .line 190
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 199
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVoldListener$Stub;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 201
    goto :goto_cd

    .line 182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1}, Landroid/os/IVoldListener$Stub;->onDiskDestroyed(Ljava/lang/String;)V

    .line 185
    goto :goto_cd

    .line 168
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 172
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVoldListener$Stub;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 177
    goto :goto_cd

    .line 160
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v1}, Landroid/os/IVoldListener$Stub;->onDiskScanned(Ljava/lang/String;)V

    .line 163
    goto :goto_cd

    .line 150
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v1, v2}, Landroid/os/IVoldListener$Stub;->onDiskCreated(Ljava/lang/String;I)V

    .line 155
    nop

    .line 262
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :goto_cd
    return v7

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_be
        :pswitch_b3
        :pswitch_9b
        :pswitch_90
        :pswitch_74
        :pswitch_61
        :pswitch_4a
        :pswitch_3a
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
