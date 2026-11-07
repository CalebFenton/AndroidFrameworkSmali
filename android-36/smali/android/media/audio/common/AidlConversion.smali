.class public Landroid/media/audio/common/AidlConversion;
.super Ljava/lang/Object;
.source "AidlConversion.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I
    .registers 6
    .param p0, "aidlBitMask"    # I
    .param p1, "isInput"    # Z

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "apiMask":I
    const/high16 v1, -0x80000000

    .local v1, "bit":I
    :goto_3
    if-eqz v1, :cond_18

    .line 241
    and-int v2, p0, v1

    if-ne v2, v1, :cond_15

    .line 242
    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I

    move-result v2

    .line 243
    .local v2, "apiBit":I
    if-eqz v2, :cond_18

    .line 244
    or-int/2addr v0, v2

    .line 245
    not-int v3, v1

    and-int/2addr p0, v3

    .line 246
    if-nez p0, :cond_15

    .line 247
    return v0

    .line 240
    .end local v2    # "apiBit":I
    :cond_15
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 254
    .end local v1    # "bit":I
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I
    .registers 12
    .param p0, "aidlBit"    # I
    .param p1, "isInput"    # Z

    .line 142
    const/4 v0, 0x0

    const/high16 v1, 0x400000

    const/high16 v2, 0x200000

    const/high16 v3, 0x100000

    const/high16 v4, 0x40000

    const/high16 v5, 0x20000

    const/high16 v6, 0x10000

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eqz p1, :cond_21

    .line 143
    sparse-switch p0, :sswitch_data_68

    .line 167
    return v0

    .line 165
    :sswitch_18
    return v1

    .line 163
    :sswitch_19
    return v2

    .line 151
    :sswitch_1a
    return v7

    .line 159
    :sswitch_1b
    return v5

    .line 157
    :sswitch_1c
    return v6

    .line 161
    :sswitch_1d
    return v3

    .line 149
    :sswitch_1e
    return v4

    .line 147
    :sswitch_1f
    return v8

    .line 145
    :sswitch_20
    return v9

    .line 170
    :cond_21
    sparse-switch p0, :sswitch_data_8e

    .line 228
    return v0

    .line 224
    :sswitch_25
    const/high16 v0, 0x20000000

    return v0

    .line 226
    :sswitch_28
    const/high16 v0, 0x10000000

    return v0

    .line 222
    :sswitch_2b
    const/high16 v0, 0x8000000

    return v0

    .line 220
    :sswitch_2e
    const/high16 v0, 0x4000000

    return v0

    .line 218
    :sswitch_31
    const/high16 v0, 0x2000000

    return v0

    .line 216
    :sswitch_34
    const/high16 v0, 0x1000000

    return v0

    .line 214
    :sswitch_37
    const/high16 v0, 0x800000

    return v0

    .line 212
    :sswitch_3a
    return v1

    .line 210
    :sswitch_3b
    return v2

    .line 208
    :sswitch_3c
    return v3

    .line 206
    :sswitch_3d
    const/high16 v0, 0x80000

    return v0

    .line 204
    :sswitch_40
    return v4

    .line 202
    :sswitch_41
    return v5

    .line 200
    :sswitch_42
    return v6

    .line 198
    :sswitch_43
    const v0, 0x8000

    return v0

    .line 196
    :sswitch_47
    const/16 v0, 0x4000

    return v0

    .line 194
    :sswitch_4a
    const/16 v0, 0x2000

    return v0

    .line 192
    :sswitch_4d
    const/16 v0, 0x1000

    return v0

    .line 190
    :sswitch_50
    const/16 v0, 0x800

    return v0

    .line 188
    :sswitch_53
    const/16 v0, 0x400

    return v0

    .line 186
    :sswitch_56
    const/16 v0, 0x200

    return v0

    .line 184
    :sswitch_59
    const/16 v0, 0x100

    return v0

    .line 182
    :sswitch_5c
    const/16 v0, 0x80

    return v0

    .line 180
    :sswitch_5f
    const/16 v0, 0x40

    return v0

    .line 178
    :sswitch_62
    return v7

    .line 176
    :sswitch_63
    const/16 v0, 0x10

    return v0

    .line 174
    :sswitch_66
    return v8

    .line 172
    :sswitch_67
    return v9

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1c
        0x20 -> :sswitch_1b
        0x100 -> :sswitch_1a
        0x40000 -> :sswitch_19
        0x80000 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_66
        0x4 -> :sswitch_63
        0x8 -> :sswitch_62
        0x10 -> :sswitch_5f
        0x20 -> :sswitch_5c
        0x40 -> :sswitch_59
        0x80 -> :sswitch_56
        0x100 -> :sswitch_53
        0x200 -> :sswitch_50
        0x400 -> :sswitch_4d
        0x800 -> :sswitch_4a
        0x1000 -> :sswitch_47
        0x2000 -> :sswitch_43
        0x4000 -> :sswitch_42
        0x8000 -> :sswitch_41
        0x10000 -> :sswitch_40
        0x20000 -> :sswitch_3d
        0x40000 -> :sswitch_3c
        0x80000 -> :sswitch_3b
        0x100000 -> :sswitch_3a
        0x200000 -> :sswitch_37
        0x400000 -> :sswitch_34
        0x800000 -> :sswitch_31
        0x1000000 -> :sswitch_2e
        0x2000000 -> :sswitch_2b
        0x20000000 -> :sswitch_28
        0x40000000 -> :sswitch_25
    .end sparse-switch
.end method

.method public static blacklist aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .registers 4
    .param p0, "aidlMask"    # Landroid/media/audio/common/AudioChannelLayout;
    .param p1, "isInput"    # Z

    .line 260
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_ce

    .line 418
    return v1

    .line 400
    :pswitch_9
    if-eqz p1, :cond_1e

    .line 401
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    sparse-switch v0, :sswitch_data_dc

    goto :goto_1e

    .line 411
    :sswitch_13
    const v0, 0xc010

    return v0

    .line 408
    :sswitch_17
    const v0, 0x8010

    return v0

    .line 405
    :sswitch_1b
    const/16 v0, 0x4010

    return v0

    .line 416
    :cond_1e
    :goto_1e
    return v1

    .line 273
    :pswitch_1f
    const/16 v0, 0xc

    if-eqz p1, :cond_47

    .line 274
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_ea

    .line 290
    goto/16 :goto_bc

    .line 288
    :sswitch_2c
    const v0, 0x74000c

    return v0

    .line 284
    :sswitch_30
    const v0, 0x70000c

    return v0

    .line 286
    :sswitch_34
    const v0, 0x64000c

    return v0

    .line 282
    :sswitch_38
    const v0, 0x60000c

    return v0

    .line 280
    :sswitch_3c
    const/16 v0, 0x30

    return v0

    .line 290
    :sswitch_3f
    const v0, 0x17000c

    return v0

    .line 278
    :sswitch_43
    return v0

    .line 276
    :sswitch_44
    const/16 v0, 0x10

    return v0

    .line 294
    :cond_47
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_10c

    goto :goto_bc

    .line 387
    :sswitch_4f
    const v0, 0x3000000c

    return v0

    .line 383
    :sswitch_53
    const v0, 0x30000004

    return v0

    .line 380
    :sswitch_57
    const/high16 v0, 0x30000000

    return v0

    .line 377
    :sswitch_5a
    const v0, 0x2000000c

    return v0

    .line 374
    :sswitch_5e
    const v0, 0x20000004

    return v0

    .line 368
    :sswitch_62
    const v0, 0xc3b58fc

    return v0

    .line 366
    :sswitch_66
    const v0, 0xc0b58fc

    return v0

    .line 372
    :sswitch_6a
    const v0, 0x3fffffc

    return v0

    .line 370
    :sswitch_6e
    const v0, 0x1cbd81c

    return v0

    .line 362
    :sswitch_72
    const v0, 0x3018fc

    return v0

    .line 354
    :sswitch_76
    const v0, 0x3000fc

    return v0

    .line 334
    :sswitch_7a
    const v0, 0x30003c

    return v0

    .line 322
    :sswitch_7e
    const v0, 0x30002c

    return v0

    .line 328
    :sswitch_82
    const v0, 0x30001c

    return v0

    .line 317
    :sswitch_86
    const v0, 0x30000c

    return v0

    .line 364
    :sswitch_8a
    const v0, 0xb58fc

    return v0

    .line 356
    :sswitch_8e
    const v0, 0xb40fc

    return v0

    .line 360
    :sswitch_92
    const/16 v0, 0x18fc

    return v0

    .line 352
    :sswitch_95
    const/16 v0, 0x183c

    return v0

    .line 343
    :sswitch_98
    const/16 v0, 0x180c

    return v0

    .line 358
    :sswitch_9b
    const/16 v0, 0x4fc

    return v0

    .line 345
    :sswitch_9e
    const/16 v0, 0x41c

    return v0

    .line 391
    :sswitch_a1
    const/16 v0, 0x410

    return v0

    .line 308
    :sswitch_a4
    const/16 v0, 0x40c

    return v0

    .line 350
    :sswitch_a7
    const/16 v0, 0xfc

    return v0

    .line 347
    :sswitch_aa
    const/16 v0, 0xdc

    return v0

    .line 341
    :sswitch_ad
    const/16 v0, 0xcc

    return v0

    .line 312
    :sswitch_b0
    const/16 v0, 0x3c

    return v0

    .line 300
    :sswitch_b3
    const/16 v0, 0x2c

    return v0

    .line 304
    :sswitch_b6
    const/16 v0, 0x1c

    return v0

    .line 298
    :sswitch_b9
    return v0

    .line 296
    :sswitch_ba
    const/4 v0, 0x4

    return v0

    .line 397
    :goto_bc
    nop

    .line 398
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    .line 397
    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I

    move-result v0

    return v0

    .line 271
    :pswitch_c6
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    return v0

    .line 264
    :pswitch_cb
    return v1

    .line 262
    :pswitch_cc
    const/4 v0, 0x1

    return v0

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_cc
        :pswitch_cb
        :pswitch_c6
        :pswitch_1f
        :pswitch_9
    .end packed-switch

    :sswitch_data_dc
    .sparse-switch
        0x4000 -> :sswitch_1b
        0x8000 -> :sswitch_17
        0xc000 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_44
        0x3 -> :sswitch_43
        0x3f -> :sswitch_3f
        0x104 -> :sswitch_3c
        0xc0003 -> :sswitch_38
        0xc0007 -> :sswitch_34
        0xc000b -> :sswitch_30
        0xc000f -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_ba
        0x3 -> :sswitch_b9
        0x7 -> :sswitch_b6
        0xb -> :sswitch_b3
        0xf -> :sswitch_b0
        0x33 -> :sswitch_ad
        0x37 -> :sswitch_aa
        0x3f -> :sswitch_a7
        0x103 -> :sswitch_a4
        0x104 -> :sswitch_a1
        0x107 -> :sswitch_9e
        0x13f -> :sswitch_9b
        0x603 -> :sswitch_98
        0x60f -> :sswitch_95
        0x63f -> :sswitch_92
        0x2d03f -> :sswitch_8e
        0x2d63f -> :sswitch_8a
        0xc0003 -> :sswitch_86
        0xc0007 -> :sswitch_82
        0xc000b -> :sswitch_7e
        0xc000f -> :sswitch_7a
        0xc003f -> :sswitch_76
        0xc063f -> :sswitch_72
        0x72f607 -> :sswitch_6e
        0xffffff -> :sswitch_6a
        0x302d63f -> :sswitch_66
        0x30ed63f -> :sswitch_62
        0x40000001 -> :sswitch_5e
        0x40000003 -> :sswitch_5a
        0x60000000 -> :sswitch_57
        0x60000001 -> :sswitch_53
        0x60000003 -> :sswitch_4f
    .end sparse-switch
.end method

.method public static blacklist aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;
    .registers 5
    .param p0, "aidl"    # Landroid/media/audio/common/AudioConfigBase;
    .param p1, "isInput"    # Z

    .line 432
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 433
    .local v0, "apiBuilder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 434
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {v1}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    .line 435
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    goto :goto_26

    .line 438
    :cond_1d
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 441
    :goto_26
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 442
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .registers 3
    .param p0, "aidl"    # Landroid/media/audio/common/AudioConfig;
    .param p1, "isInput"    # Z

    .line 426
    iget-object v0, p0, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I
    .registers 2
    .param p0, "type"    # I

    .line 639
    packed-switch p0, :pswitch_data_a

    .line 646
    const/4 v0, 0x0

    return v0

    .line 643
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 641
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I
    .registers 5
    .param p0, "aidl"    # Landroid/media/audio/common/AudioFormatDescription;

    .line 448
    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->type:B

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_152

    .line 523
    return v1

    .line 450
    :pswitch_7
    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    packed-switch v0, :pswitch_data_15a

    .line 463
    return v1

    .line 461
    :pswitch_d
    const/16 v0, 0x15

    return v0

    .line 459
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 456
    :pswitch_12
    const/16 v0, 0x16

    return v0

    .line 454
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 452
    :pswitch_17
    const/4 v0, 0x3

    return v0

    .line 466
    :pswitch_19
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_151

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_151

    .line 467
    const-string v0, "audio/ac3"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 468
    const/4 v0, 0x5

    return v0

    .line 469
    :cond_32
    const-string v0, "audio/eac3"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 470
    const/4 v0, 0x6

    return v0

    .line 471
    :cond_3e
    const-string v0, "audio/vnd.dts"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 472
    const/4 v0, 0x7

    return v0

    .line 473
    :cond_4a
    const-string v0, "audio/vnd.dts.hd"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 474
    const/16 v0, 0x8

    return v0

    .line 475
    :cond_57
    const-string v0, "audio/mpeg"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 476
    const/16 v0, 0x9

    return v0

    .line 477
    :cond_64
    const-string v0, "audio/mp4a.40.02"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 478
    const/16 v0, 0xa

    return v0

    .line 479
    :cond_71
    const-string v0, "audio/mp4a.40.05"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 480
    const/16 v0, 0xb

    return v0

    .line 481
    :cond_7e
    const-string v0, "audio/mp4a.40.29"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 482
    const/16 v0, 0xc

    return v0

    .line 483
    :cond_8b
    const-string v0, "audio/x-iec61937"

    iget-object v3, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    if-ne v0, v2, :cond_9c

    .line 485
    const/16 v0, 0xd

    return v0

    .line 486
    :cond_9c
    const-string v0, "audio/vnd.dolby.mlp"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 488
    const/16 v0, 0xe

    return v0

    .line 489
    :cond_a9
    const-string v0, "audio/mp4a.40.39"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 490
    const/16 v0, 0xf

    return v0

    .line 491
    :cond_b6
    const-string v0, "audio/mp4a.40.42"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 492
    const/16 v0, 0x10

    return v0

    .line 493
    :cond_c3
    const-string v0, "audio/ac4"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 494
    const/16 v0, 0x11

    return v0

    .line 495
    :cond_d0
    const-string v0, "audio/eac3-joc"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 496
    const/16 v0, 0x12

    return v0

    .line 497
    :cond_dd
    const-string v0, "audio/vnd.dolby.mat"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    .line 498
    const-string v2, "audio/vnd.dolby.mat."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    goto :goto_14e

    .line 501
    :cond_f2
    const-string v0, "audio/opus"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 502
    const/16 v0, 0x14

    return v0

    .line 503
    :cond_ff
    const-string v0, "audio/mhm1.03"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 504
    const/16 v0, 0x17

    return v0

    .line 505
    :cond_10c
    const-string v0, "audio/mhm1.04"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 506
    const/16 v0, 0x18

    return v0

    .line 507
    :cond_119
    const-string v0, "audio/mhm1.0d"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 508
    const/16 v0, 0x19

    return v0

    .line 509
    :cond_126
    const-string v0, "audio/mhm1.0e"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 510
    const/16 v0, 0x1a

    return v0

    .line 511
    :cond_133
    const-string v0, "audio/vnd.dts.uhd"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 512
    const/16 v0, 0x1b

    return v0

    .line 513
    :cond_140
    const-string v0, "audio/vnd.dra"

    iget-object v2, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 514
    const/16 v0, 0x1c

    return v0

    .line 516
    :cond_14d
    return v1

    .line 500
    :cond_14e
    :goto_14e
    const/16 v0, 0x13

    return v0

    .line 519
    :cond_151
    return v2

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_19
        :pswitch_7
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_15
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist aidl2api_AudioStandard_AudioDescriptorStandard(I)I
    .registers 2
    .param p0, "standard"    # I

    .line 603
    packed-switch p0, :pswitch_data_c

    .line 612
    const/4 v0, 0x0

    return v0

    .line 609
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 607
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 605
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist aidl2api_ExtraAudioDescriptor_AudioDescriptor(Landroid/media/audio/common/ExtraAudioDescriptor;)Landroid/media/AudioDescriptor;
    .registers 5
    .param p0, "extraDescriptor"    # Landroid/media/audio/common/ExtraAudioDescriptor;

    .line 571
    new-instance v0, Landroid/media/AudioDescriptor;

    iget v1, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    .line 572
    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioStandard_AudioDescriptorStandard(I)I

    move-result v1

    iget v2, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    .line 573
    invoke-static {v2}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I

    move-result v2

    iget-object v3, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 576
    .local v0, "descriptor":Landroid/media/AudioDescriptor;
    return-object v0
.end method

.method private static native blacklist aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I
.end method

.method public static blacklist aidl2legacy_AudioChannelLayout_audio_channel_mask_t(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .registers 4
    .param p0, "aidl"    # Landroid/media/audio/common/AudioChannelLayout;
    .param p1, "isInput"    # Z

    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 65
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    :try_start_b
    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 68
    return v1

    .line 70
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    throw v1
.end method

.method public static native blacklist aidl2legacy_AudioEncapsulationMode_audio_encapsulation_mode_t(I)I
.end method

.method private static native blacklist aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I
.end method

.method public static blacklist aidl2legacy_AudioFormatDescription_audio_format_t(Landroid/media/audio/common/AudioFormatDescription;)I
    .registers 3
    .param p0, "aidl"    # Landroid/media/audio/common/AudioFormatDescription;

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioFormatDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    :try_start_b
    invoke-static {v0}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return v1

    .line 98
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    throw v1
.end method

.method public static native blacklist aidl2legacy_AudioStreamType_audio_stream_type_t(I)I
.end method

.method public static native blacklist aidl2legacy_AudioUsage_audio_usage_t(I)I
.end method

.method public static blacklist api2aidl_AudioDescriptorStandard_AudioStandard(I)I
    .registers 2
    .param p0, "standard"    # I

    .line 585
    packed-switch p0, :pswitch_data_c

    .line 594
    const/4 v0, 0x0

    return v0

    .line 591
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 589
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 587
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .registers 3
    .param p0, "descriptor"    # Landroid/media/AudioDescriptor;

    .line 556
    new-instance v0, Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-direct {v0}, Landroid/media/audio/common/ExtraAudioDescriptor;-><init>()V

    .line 557
    .local v0, "extraDescriptor":Landroid/media/audio/common/ExtraAudioDescriptor;
    nop

    .line 558
    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v1

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptorStandard_AudioStandard(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    .line 559
    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    .line 560
    nop

    .line 562
    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getEncapsulationType()I

    move-result v1

    .line 561
    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    .line 563
    return-object v0
.end method

.method public static blacklist api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;
    .registers 5
    .param p0, "attributes"    # Landroid/media/AudioDeviceAttributes;

    .line 532
    new-instance v0, Landroid/media/audio/common/AudioPort;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPort;-><init>()V

    .line 533
    .local v0, "port":Landroid/media/audio/common/AudioPort;
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    .line 535
    const/4 v1, 0x0

    new-array v2, v1, [Landroid/media/audio/common/AudioProfile;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    .line 536
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;-><init>()V

    .line 537
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 538
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/ExtraAudioDescriptor;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    .line 539
    new-instance v2, Landroid/media/audio/common/AudioIoFlags;

    invoke-direct {v2}, Landroid/media/audio/common/AudioIoFlags;-><init>()V

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    .line 540
    new-array v2, v1, [Landroid/media/audio/common/AudioGain;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    .line 541
    new-instance v2, Landroid/media/audio/common/AudioPortDeviceExt;

    invoke-direct {v2}, Landroid/media/audio/common/AudioPortDeviceExt;-><init>()V

    .line 542
    .local v2, "deviceExt":Landroid/media/audio/common/AudioPortDeviceExt;
    new-instance v3, Landroid/media/audio/common/AudioDevice;

    invoke-direct {v3}, Landroid/media/audio/common/AudioDevice;-><init>()V

    iput-object v3, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    .line 543
    new-array v1, v1, [Landroid/media/audio/common/AudioFormatDescription;

    iput-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->encodedFormats:[Landroid/media/audio/common/AudioFormatDescription;

    .line 544
    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    .line 545
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Landroid/media/audio/common/AidlConversion;->api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->type:Landroid/media/audio/common/AudioDeviceDescription;

    .line 546
    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audio/common/AudioDeviceAddress;->id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->address:Landroid/media/audio/common/AudioDeviceAddress;

    .line 547
    invoke-static {v2}, Landroid/media/audio/common/AudioPortExt;->device(Landroid/media/audio/common/AudioPortDeviceExt;)Landroid/media/audio/common/AudioPortExt;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    .line 548
    return-object v0
.end method

.method public static blacklist api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I
    .registers 2
    .param p0, "type"    # I

    .line 622
    packed-switch p0, :pswitch_data_a

    .line 629
    const/4 v0, 0x0

    return v0

    .line 626
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 624
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;
    .registers 17
    .param p0, "nativeType"    # I

    .line 655
    new-instance v0, Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceDescription;-><init>()V

    .line 656
    .local v0, "aidl":Landroid/media/audio/common/AudioDeviceDescription;
    const-string v1, ""

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 657
    const-string v3, "hdmi-earc"

    const-string v4, "hdmi-arc"

    const-string v5, "bus"

    const-string v6, "ip-v4"

    const-string v7, "spdif"

    const-string v9, "hdmi"

    const/16 v10, 0x8c

    const-string v11, "virtual"

    const/16 v12, 0x89

    const-string v13, "bt-a2dp"

    const-string v14, "bt-sco"

    const-string v8, "bt-le"

    const-string v15, "analog"

    const-string v2, "usb"

    const/4 v1, 0x4

    sparse-switch p0, :sswitch_data_1c2

    .line 889
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_1c0

    .line 886
    :sswitch_2e
    const/16 v1, 0x81

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 887
    goto/16 :goto_1c0

    .line 705
    :sswitch_34
    const/16 v1, 0x92

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 706
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 707
    goto/16 :goto_1c0

    .line 701
    :sswitch_3c
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 702
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 703
    goto/16 :goto_1c0

    .line 879
    :sswitch_42
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 880
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 881
    goto/16 :goto_1c0

    .line 698
    :sswitch_48
    const/16 v1, 0x86

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 699
    goto/16 :goto_1c0

    .line 694
    :sswitch_4e
    const/16 v1, 0x8a

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 695
    const-string v1, "wireless"

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 696
    goto/16 :goto_1c0

    .line 855
    :sswitch_58
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 856
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 857
    goto/16 :goto_1c0

    .line 848
    :sswitch_5e
    const/16 v1, 0x83

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 849
    goto/16 :goto_1c0

    .line 841
    :sswitch_64
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 842
    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 843
    goto/16 :goto_1c0

    .line 709
    :sswitch_6c
    const/16 v1, 0x93

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 710
    iput-object v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 711
    goto/16 :goto_1c0

    .line 833
    :sswitch_74
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 834
    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 835
    goto/16 :goto_1c0

    .line 691
    :sswitch_7c
    const/16 v1, 0x8e

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 692
    goto/16 :goto_1c0

    .line 688
    :sswitch_82
    const/16 v1, 0x8b

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 689
    goto/16 :goto_1c0

    .line 802
    :sswitch_88
    const/16 v1, 0x87

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 803
    goto/16 :goto_1c0

    .line 817
    :sswitch_8e
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 818
    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 819
    goto/16 :goto_1c0

    .line 871
    :sswitch_96
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 872
    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 873
    goto/16 :goto_1c0

    .line 863
    :sswitch_9e
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 864
    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 865
    goto/16 :goto_1c0

    .line 809
    :sswitch_a6
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 810
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 811
    goto/16 :goto_1c0

    .line 685
    :sswitch_ae
    const/16 v1, 0x90

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 686
    goto/16 :goto_1c0

    .line 763
    :sswitch_b4
    const/16 v1, 0x8f

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 764
    iput-object v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 765
    goto/16 :goto_1c0

    .line 795
    :sswitch_bc
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 796
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 797
    goto/16 :goto_1c0

    .line 787
    :sswitch_c4
    const/16 v1, 0x82

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 788
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 789
    goto/16 :goto_1c0

    .line 779
    :sswitch_cc
    const/16 v1, 0x91

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 780
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 781
    goto/16 :goto_1c0

    .line 771
    :sswitch_d4
    const/16 v1, 0x91

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 772
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 773
    goto/16 :goto_1c0

    .line 755
    :sswitch_dc
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 756
    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 757
    goto/16 :goto_1c0

    .line 681
    :sswitch_e4
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 682
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 683
    goto/16 :goto_1c0

    .line 677
    :sswitch_ea
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 678
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 679
    goto/16 :goto_1c0

    .line 825
    :sswitch_f2
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 826
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 827
    goto/16 :goto_1c0

    .line 673
    :sswitch_fa
    const/16 v1, 0x84

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 674
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 675
    goto/16 :goto_1c0

    .line 747
    :sswitch_102
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 748
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 749
    goto/16 :goto_1c0

    .line 669
    :sswitch_108
    const/16 v1, 0x85

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 670
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 671
    goto/16 :goto_1c0

    .line 665
    :sswitch_110
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 666
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 667
    goto/16 :goto_1c0

    .line 739
    :sswitch_118
    iput v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 740
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 741
    goto/16 :goto_1c0

    .line 662
    :sswitch_11e
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 663
    goto/16 :goto_1c0

    .line 659
    :sswitch_122
    const/16 v1, 0x8d

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 660
    goto/16 :goto_1c0

    .line 883
    :sswitch_128
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 884
    goto/16 :goto_1c0

    .line 875
    :sswitch_12d
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 876
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 877
    goto/16 :goto_1c0

    .line 732
    :sswitch_134
    const/4 v1, 0x5

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 733
    goto/16 :goto_1c0

    .line 867
    :sswitch_139
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 868
    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 869
    goto/16 :goto_1c0

    .line 859
    :sswitch_13f
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 860
    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 861
    goto/16 :goto_1c0

    .line 728
    :sswitch_145
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 729
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 730
    goto/16 :goto_1c0

    .line 851
    :sswitch_14b
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 852
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 853
    goto/16 :goto_1c0

    .line 845
    :sswitch_152
    const/4 v1, 0x3

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 846
    goto/16 :goto_1c0

    .line 837
    :sswitch_157
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 838
    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 839
    goto/16 :goto_1c0

    .line 829
    :sswitch_15d
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 830
    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 831
    goto/16 :goto_1c0

    .line 725
    :sswitch_163
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 726
    goto :goto_1c0

    .line 821
    :sswitch_168
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 822
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 823
    goto :goto_1c0

    .line 813
    :sswitch_16d
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 814
    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 815
    goto :goto_1c0

    .line 805
    :sswitch_172
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 806
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 807
    goto :goto_1c0

    .line 722
    :sswitch_177
    const/16 v1, 0xd

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 723
    goto :goto_1c0

    .line 799
    :sswitch_17c
    const/4 v1, 0x6

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 800
    goto :goto_1c0

    .line 791
    :sswitch_180
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 792
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 793
    goto :goto_1c0

    .line 783
    :sswitch_185
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 784
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 785
    goto :goto_1c0

    .line 775
    :sswitch_18b
    const/16 v1, 0xe

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 776
    iput-object v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 777
    goto :goto_1c0

    .line 767
    :sswitch_192
    const/16 v1, 0xe

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 768
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 769
    goto :goto_1c0

    .line 759
    :sswitch_199
    const/16 v1, 0xb

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 760
    iput-object v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 761
    goto :goto_1c0

    .line 716
    :sswitch_1a0
    const/16 v1, 0xa

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 717
    goto :goto_1c0

    .line 719
    :sswitch_1a5
    const/16 v1, 0xc

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 720
    goto :goto_1c0

    .line 751
    :sswitch_1aa
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 752
    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 753
    goto :goto_1c0

    .line 735
    :sswitch_1af
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 736
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 737
    goto :goto_1c0

    .line 743
    :sswitch_1b5
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 744
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 745
    goto :goto_1c0

    .line 713
    :sswitch_1bb
    const/16 v1, 0x9

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 714
    nop

    .line 891
    :goto_1c0
    return-object v0

    nop

    :sswitch_data_1c2
    .sparse-switch
        -0x7ffffffc -> :sswitch_1bb
        -0x7ffffff8 -> :sswitch_1b5
        -0x7ffffff0 -> :sswitch_1af
        -0x7fffffe0 -> :sswitch_1aa
        -0x7fffffc0 -> :sswitch_1a5
        -0x7fffff80 -> :sswitch_1a0
        -0x7fffff00 -> :sswitch_199
        -0x7ffffe00 -> :sswitch_192
        -0x7ffffc00 -> :sswitch_18b
        -0x7ffff800 -> :sswitch_185
        -0x7ffff000 -> :sswitch_180
        -0x7fffe000 -> :sswitch_17c
        -0x7fffc000 -> :sswitch_177
        -0x7fff8000 -> :sswitch_172
        -0x7fff0000 -> :sswitch_16d
        -0x7ffe0000 -> :sswitch_168
        -0x7ffc0000 -> :sswitch_163
        -0x7ff80000 -> :sswitch_15d
        -0x7ff00000 -> :sswitch_157
        -0x7f000000 -> :sswitch_152
        -0x7e000000 -> :sswitch_14b
        -0x7c000000 -> :sswitch_145
        -0x78000000 -> :sswitch_13f
        -0x77ffffff -> :sswitch_139
        -0x70000000 -> :sswitch_134
        -0x60000000 -> :sswitch_12d
        -0x40000000 -> :sswitch_128
        0x1 -> :sswitch_122
        0x2 -> :sswitch_11e
        0x4 -> :sswitch_118
        0x8 -> :sswitch_110
        0x10 -> :sswitch_108
        0x20 -> :sswitch_102
        0x40 -> :sswitch_fa
        0x80 -> :sswitch_f2
        0x100 -> :sswitch_ea
        0x200 -> :sswitch_e4
        0x400 -> :sswitch_dc
        0x800 -> :sswitch_d4
        0x1000 -> :sswitch_cc
        0x2000 -> :sswitch_c4
        0x4000 -> :sswitch_bc
        0x8000 -> :sswitch_b4
        0x10000 -> :sswitch_ae
        0x20000 -> :sswitch_a6
        0x40000 -> :sswitch_9e
        0x40001 -> :sswitch_96
        0x80000 -> :sswitch_8e
        0x100000 -> :sswitch_88
        0x200000 -> :sswitch_82
        0x400000 -> :sswitch_7c
        0x800000 -> :sswitch_74
        0x800001 -> :sswitch_6c
        0x1000000 -> :sswitch_64
        0x2000000 -> :sswitch_5e
        0x4000000 -> :sswitch_58
        0x8000000 -> :sswitch_4e
        0x10000000 -> :sswitch_48
        0x20000000 -> :sswitch_42
        0x20000001 -> :sswitch_3c
        0x20000002 -> :sswitch_34
        0x40000000 -> :sswitch_2e
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$api2aidl_AudioDeviceAttributes_AudioPort$0(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .registers 2
    .param p0, "descriptor"    # Landroid/media/AudioDescriptor;

    .line 537
    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$api2aidl_AudioDeviceAttributes_AudioPort$1(I)[Landroid/media/audio/common/ExtraAudioDescriptor;
    .registers 2
    .param p0, "x$0"    # I

    .line 538
    new-array v0, p0, [Landroid/media/audio/common/ExtraAudioDescriptor;

    return-object v0
.end method

.method public static blacklist legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;
    .registers 6
    .param p0, "legacy"    # I
    .param p1, "isInput"    # Z

    .line 77
    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, "in":Landroid/os/Parcel;
    if-eqz v0, :cond_17

    .line 80
    :try_start_6
    sget-object v1, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioChannelLayout;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    return-object v1

    .line 82
    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    throw v1

    .line 85
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    if-eqz p1, :cond_29

    const-string v3, "input"

    goto :goto_2b

    :cond_29
    const-string v3, "output"

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audio_channel_mask_t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;
.end method

.method public static native blacklist legacy2aidl_audio_encapsulation_mode_t_AudioEncapsulationMode(I)I
.end method

.method public static blacklist legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;
    .registers 5
    .param p0, "legacy"    # I

    .line 105
    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, "in":Landroid/os/Parcel;
    if-eqz v0, :cond_17

    .line 108
    :try_start_6
    sget-object v1, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioFormatDescription;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_12

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    return-object v1

    .line 110
    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v1

    .line 113
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio_format_t value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;
.end method

.method public static native blacklist legacy2aidl_audio_stream_type_t_AudioStreamType(I)I
.end method

.method public static native blacklist legacy2aidl_audio_usage_t_AudioUsage(I)I
.end method
