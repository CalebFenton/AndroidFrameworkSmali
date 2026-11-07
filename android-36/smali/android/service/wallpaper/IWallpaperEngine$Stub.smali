.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final blacklist TRANSACTION_addLocalColorsAreas:I = 0xe

.field static final blacklist TRANSACTION_applyDimming:I = 0x10

.field static final greylist-max-o TRANSACTION_destroy:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchPointer:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0x8

.field static final blacklist TRANSACTION_mirrorSurfaceControl:I = 0xf

.field static final blacklist TRANSACTION_onApplyWallpaper:I = 0x12

.field static final blacklist TRANSACTION_onScreenTurnedOn:I = 0x5

.field static final blacklist TRANSACTION_onScreenTurningOn:I = 0x4

.field static final blacklist TRANSACTION_removeLocalColorsAreas:I = 0xd

.field static final greylist-max-o TRANSACTION_requestWallpaperColors:I = 0x9

.field static final blacklist TRANSACTION_resizePreview:I = 0xc

.field static final greylist-max-o TRANSACTION_setDesiredSize:I = 0x1

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x2

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x6

.field static final greylist-max-o TRANSACTION_setVisibility:I = 0x3

.field static final blacklist TRANSACTION_setWallpaperFlags:I = 0x11

.field static final blacklist TRANSACTION_setZoomOut:I = 0xb


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_14

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/service/wallpaper/IWallpaperEngine;

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_48

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 180
    :pswitch_5
    const-string/jumbo v0, "onApplyWallpaper"

    return-object v0

    .line 176
    :pswitch_9
    const-string/jumbo v0, "setWallpaperFlags"

    return-object v0

    .line 172
    :pswitch_d
    const-string v0, "applyDimming"

    return-object v0

    .line 168
    :pswitch_10
    const-string/jumbo v0, "mirrorSurfaceControl"

    return-object v0

    .line 164
    :pswitch_14
    const-string v0, "addLocalColorsAreas"

    return-object v0

    .line 160
    :pswitch_17
    const-string/jumbo v0, "removeLocalColorsAreas"

    return-object v0

    .line 156
    :pswitch_1b
    const-string/jumbo v0, "resizePreview"

    return-object v0

    .line 152
    :pswitch_1f
    const-string/jumbo v0, "setZoomOut"

    return-object v0

    .line 148
    :pswitch_23
    const-string v0, "destroy"

    return-object v0

    .line 144
    :pswitch_26
    const-string/jumbo v0, "requestWallpaperColors"

    return-object v0

    .line 140
    :pswitch_2a
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 136
    :pswitch_2d
    const-string v0, "dispatchPointer"

    return-object v0

    .line 132
    :pswitch_30
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 128
    :pswitch_34
    const-string/jumbo v0, "onScreenTurnedOn"

    return-object v0

    .line 124
    :pswitch_38
    const-string/jumbo v0, "onScreenTurningOn"

    return-object v0

    .line 120
    :pswitch_3c
    const-string/jumbo v0, "setVisibility"

    return-object v0

    .line 116
    :pswitch_40
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 112
    :pswitch_44
    const-string/jumbo v0, "setDesiredSize"

    return-object v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 625
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 191
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    .line 196
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 197
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 200
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return v1

    .line 203
    :cond_16
    packed-switch p1, :pswitch_data_11a

    .line 352
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 343
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    .line 346
    .local v3, "_result":Landroid/app/wallpaper/WallpaperDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 348
    move-object v3, p0

    goto/16 :goto_119

    .line 335
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/app/wallpaper/WallpaperDescription;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setWallpaperFlags(I)V

    .line 338
    move-object v3, p0

    goto/16 :goto_119

    .line 327
    .end local v2    # "_arg0":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 328
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->applyDimming(F)V

    .line 330
    move-object v3, p0

    goto/16 :goto_119

    .line 319
    .end local v2    # "_arg0":F
    :pswitch_4d
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->mirrorSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 320
    .local v2, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    move-object v3, p0

    goto/16 :goto_119

    .line 312
    .end local v2    # "_result":Landroid/view/SurfaceControl;
    :pswitch_5a
    sget-object v2, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 313
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->addLocalColorsAreas(Ljava/util/List;)V

    .line 315
    move-object v3, p0

    goto/16 :goto_119

    .line 304
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :pswitch_69
    sget-object v2, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 305
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 307
    move-object v3, p0

    goto/16 :goto_119

    .line 296
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :pswitch_78
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 297
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->resizePreview(Landroid/graphics/Rect;)V

    .line 299
    move-object v3, p0

    goto/16 :goto_119

    .line 288
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 289
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setZoomOut(F)V

    .line 291
    move-object v3, p0

    goto/16 :goto_119

    .line 282
    .end local v2    # "_arg0":F
    :pswitch_96
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    .line 283
    move-object v3, p0

    goto/16 :goto_119

    .line 277
    :pswitch_9c
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->requestWallpaperColors()V

    .line 278
    move-object v3, p0

    goto/16 :goto_119

    .line 262
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 266
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 268
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 270
    .local v7, "_arg3":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/Bundle;

    .line 271
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 273
    goto :goto_119

    .line 254
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/os/Bundle;
    :pswitch_c3
    move-object v3, p0

    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 255
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    .line 257
    goto :goto_119

    .line 244
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_d3
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 246
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 247
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v4, v5}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setInAmbientMode(ZJ)V

    .line 249
    goto :goto_119

    .line 238
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":J
    :pswitch_e3
    move-object v3, p0

    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->onScreenTurnedOn()V

    .line 239
    goto :goto_119

    .line 233
    :pswitch_e8
    move-object v3, p0

    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->onScreenTurningOn()V

    .line 234
    goto :goto_119

    .line 226
    :pswitch_ed
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 227
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    .line 229
    goto :goto_119

    .line 218
    .end local v2    # "_arg0":Z
    :pswitch_f9
    move-object v3, p0

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 219
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    .line 221
    goto :goto_119

    .line 208
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_109
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v4}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    .line 213
    nop

    .line 355
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :goto_119
    return v1

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_109
        :pswitch_f9
        :pswitch_ed
        :pswitch_e8
        :pswitch_e3
        :pswitch_d3
        :pswitch_c3
        :pswitch_a2
        :pswitch_9c
        :pswitch_96
        :pswitch_89
        :pswitch_78
        :pswitch_69
        :pswitch_5a
        :pswitch_4d
        :pswitch_40
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
