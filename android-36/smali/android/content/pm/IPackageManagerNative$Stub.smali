.class public abstract Landroid/content/pm/IPackageManagerNative$Stub;
.super Landroid/os/Binder;
.source "IPackageManagerNative.java"

# interfaces
.implements Landroid/content/pm/IPackageManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManagerNative$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManagerNative"

.field static final greylist-max-o TRANSACTION_getInstallerForPackage:I = 0x3

.field static final blacklist TRANSACTION_getLocationFlags:I = 0x6

.field static final blacklist TRANSACTION_getModuleMetadataPackageName:I = 0x8

.field static final greylist-max-o TRANSACTION_getNamesForUids:I = 0x1

.field static final blacklist TRANSACTION_getPackageUid:I = 0x2

.field static final blacklist TRANSACTION_getStagedApexInfos:I = 0xe

.field static final blacklist TRANSACTION_getTargetSdkVersionForPackage:I = 0x7

.field static final greylist-max-o TRANSACTION_getVersionCodeForPackage:I = 0x4

.field static final blacklist TRANSACTION_hasSha256SigningCertificate:I = 0x9

.field static final blacklist TRANSACTION_hasSystemFeature:I = 0xb

.field static final blacklist TRANSACTION_isAudioPlaybackCaptureAllowed:I = 0x5

.field static final blacklist TRANSACTION_isPackageDebuggable:I = 0xa

.field static final blacklist TRANSACTION_registerStagedApexObserver:I = 0xc

.field static final blacklist TRANSACTION_unregisterStagedApexObserver:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 160
    const-string v0, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManagerNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 168
    if-nez p0, :cond_4

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_4
    const-string v0, "android.content.pm.IPackageManagerNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 172
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageManagerNative;

    if-eqz v1, :cond_14

    .line 173
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageManagerNative;

    return-object v1

    .line 175
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageManagerNative$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManagerNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 179
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const-string v0, "android.content.pm.IPackageManagerNative"

    .line 184
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 185
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 188
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v1

    .line 191
    :cond_16
    packed-switch p1, :pswitch_data_126

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 328
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/pm/IPackageManagerNative$Stub;->getStagedApexInfos()[Landroid/content/pm/StagedApexInfo;

    move-result-object v2

    .line 329
    .local v2, "_result":[Landroid/content/pm/StagedApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 331
    goto/16 :goto_124

    .line 320
    .end local v2    # "_result":[Landroid/content/pm/StagedApexInfo;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IStagedApexObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IStagedApexObserver;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Landroid/content/pm/IStagedApexObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_124

    .line 311
    .end local v2    # "_arg0":Landroid/content/pm/IStagedApexObserver;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IStagedApexObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IStagedApexObserver;

    move-result-object v2

    .line 312
    .restart local v2    # "_arg0":Landroid/content/pm/IStagedApexObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_124

    .line 299
    .end local v2    # "_arg0":Landroid/content/pm/IStagedApexObserver;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IPackageManagerNative$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v4

    .line 304
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    goto/16 :goto_124

    .line 289
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->isPackageDebuggable(Ljava/lang/String;)Z

    move-result v3

    .line 292
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    goto/16 :goto_124

    .line 277
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 280
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IPackageManagerNative$Stub;->hasSha256SigningCertificate(Ljava/lang/String;[B)Z

    move-result v4

    .line 282
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto/16 :goto_124

    .line 269
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_91
    invoke-virtual {p0}, Landroid/content/pm/IPackageManagerNative$Stub;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    goto/16 :goto_124

    .line 260
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->getTargetSdkVersionForPackage(Ljava/lang/String;)I

    move-result v3

    .line 263
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    goto/16 :goto_124

    .line 250
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->getLocationFlags(Ljava/lang/String;)I

    move-result v3

    .line 253
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    goto :goto_124

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z

    move-result-object v3

    .line 243
    .local v3, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 245
    goto :goto_124

    .line 230
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":[Z
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->getVersionCodeForPackage(Ljava/lang/String;)J

    move-result-wide v3

    .line 233
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    goto :goto_124

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    goto :goto_124

    .line 206
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 210
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManagerNative$Stub;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 213
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto :goto_124

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    .end local v6    # "_result":I
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 197
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/content/pm/IPackageManagerNative$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    nop

    .line 338
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Ljava/lang/String;
    :goto_124
    return v1

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_112
        :pswitch_f8
        :pswitch_e6
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9d
        :pswitch_91
        :pswitch_7a
        :pswitch_67
        :pswitch_50
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
