.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o CDMA:I = 0x48

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EVDO:I = 0x2830

.field private static final greylist-max-o GSM:I = 0x8003

.field private static final greylist-max-o HS:I = 0x4380

.field private static final greylist-max-o LTE:I = 0x41000

.field private static final blacklist NR:I = 0x80000

.field public static final greylist-max-o RAF_1xRTT:I = 0x40

.field public static final greylist-max-o RAF_EDGE:I = 0x2

.field public static final greylist-max-o RAF_EHRPD:I = 0x2000

.field public static final greylist-max-o RAF_EVDO_0:I = 0x10

.field public static final greylist-max-o RAF_EVDO_A:I = 0x20

.field public static final greylist-max-o RAF_EVDO_B:I = 0x800

.field public static final greylist-max-o RAF_GPRS:I = 0x1

.field public static final greylist-max-o RAF_GSM:I = 0x8000

.field public static final greylist-max-o RAF_HSDPA:I = 0x80

.field public static final greylist-max-o RAF_HSPA:I = 0x200

.field public static final greylist-max-o RAF_HSPAP:I = 0x4000

.field public static final greylist-max-o RAF_HSUPA:I = 0x100

.field public static final greylist-max-o RAF_IS95A:I = 0x8

.field public static final greylist-max-o RAF_IS95B:I = 0x8

.field public static final greylist-max-o RAF_LTE:I = 0x1000

.field public static final greylist-max-o RAF_LTE_CA:I = 0x40000

.field public static final blacklist RAF_NR:I = 0x80000

.field public static final greylist-max-o RAF_TD_SCDMA:I = 0x10000

.field public static final greylist-max-o RAF_UMTS:I = 0x4

.field public static final greylist-max-o RAF_UNKNOWN:I = 0x0

.field private static final greylist-max-o WCDMA:I = 0x4384


# instance fields
.field private greylist-max-o mPhoneId:I

.field private greylist-max-o mRadioAccessFamily:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    .line 100
    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    .line 101
    return-void
.end method

.method public static blacklist compare(JJ)I
    .registers 22
    .param p0, "networkTypeBitmaskL"    # J
    .param p2, "networkTypeBitmaskR"    # J

    .line 391
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_38

    .line 398
    .local v4, "prioritizedNetworkClassBitmasks":[J
    not-long v5, v2

    and-long/2addr v5, v0

    .line 399
    .local v5, "lhsUnique":J
    not-long v7, v0

    and-long/2addr v7, v2

    .line 402
    .local v7, "rhsUnique":J
    array-length v9, v4

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v9, :cond_2d

    aget-wide v11, v4, v10

    .line 403
    .local v11, "classBitmask":J
    const/4 v13, 0x0

    .line 404
    .local v13, "result":I
    and-long v14, v5, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1f

    add-int/lit8 v13, v13, 0x1

    .line 405
    :cond_1f
    and-long v14, v7, v11

    cmp-long v14, v14, v16

    if-eqz v14, :cond_27

    add-int/lit8 v13, v13, -0x1

    .line 406
    :cond_27
    if-eqz v13, :cond_2a

    return v13

    .line 402
    .end local v11    # "classBitmask":J
    .end local v13    # "result":I
    :cond_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 410
    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v9

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    return v9

    nop

    :array_38
    .array-data 8
        0x80000
        0x61000
        0x16bb4
        0x804b
    .end array-data
.end method

.method private static greylist-max-o getAdjustedRaf(I)I
    .registers 3
    .param p0, "raf"    # I

    .line 255
    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_9

    or-int/2addr v0, p0

    goto :goto_a

    :cond_9
    move v0, p0

    .line 256
    .end local p0    # "raf":I
    .local v0, "raf":I
    :goto_a
    and-int/lit16 p0, v0, 0x4384

    if-lez p0, :cond_11

    or-int/lit16 p0, v0, 0x4384

    goto :goto_12

    :cond_11
    move p0, v0

    .line 257
    .end local v0    # "raf":I
    .restart local p0    # "raf":I
    :goto_12
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_19

    or-int/lit8 v0, p0, 0x48

    goto :goto_1a

    :cond_19
    move v0, p0

    .line 258
    .end local p0    # "raf":I
    .restart local v0    # "raf":I
    :goto_1a
    and-int/lit16 p0, v0, 0x2830

    if-lez p0, :cond_21

    or-int/lit16 p0, v0, 0x2830

    goto :goto_22

    :cond_21
    move p0, v0

    .line 259
    .end local v0    # "raf":I
    .restart local p0    # "raf":I
    :goto_22
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_2b

    or-int/2addr v0, p0

    goto :goto_2c

    :cond_2b
    move v0, p0

    .line 260
    .end local p0    # "raf":I
    .restart local v0    # "raf":I
    :goto_2c
    const/high16 p0, 0x80000

    and-int v1, v0, p0

    if-lez v1, :cond_34

    or-int/2addr p0, v0

    goto :goto_35

    :cond_34
    move p0, v0

    .line 262
    .end local v0    # "raf":I
    .restart local p0    # "raf":I
    :goto_35
    return p0
.end method

.method public static greylist-max-p getNetworkTypeFromRaf(I)I
    .registers 2
    .param p0, "raf"    # I

    .line 268
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    .line 270
    sparse-switch p0, :sswitch_data_66

    .line 338
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    .line 336
    :sswitch_a
    const/16 v0, 0x21

    return v0

    .line 334
    :sswitch_d
    const/16 v0, 0x20

    return v0

    .line 330
    :sswitch_10
    const/16 v0, 0x1e

    return v0

    .line 332
    :sswitch_13
    const/16 v0, 0x1f

    return v0

    .line 328
    :sswitch_16
    const/16 v0, 0x1d

    return v0

    .line 324
    :sswitch_19
    const/16 v0, 0x1b

    return v0

    .line 322
    :sswitch_1c
    const/16 v0, 0x1a

    return v0

    .line 326
    :sswitch_1f
    const/16 v0, 0x1c

    return v0

    .line 320
    :sswitch_22
    const/16 v0, 0x19

    return v0

    .line 318
    :sswitch_25
    const/16 v0, 0x18

    return v0

    .line 316
    :sswitch_28
    const/16 v0, 0x17

    return v0

    .line 314
    :sswitch_2b
    const/16 v0, 0x16

    return v0

    .line 310
    :sswitch_2e
    const/16 v0, 0x14

    return v0

    .line 304
    :sswitch_31
    const/16 v0, 0x11

    return v0

    .line 308
    :sswitch_34
    const/16 v0, 0x13

    return v0

    .line 300
    :sswitch_37
    const/16 v0, 0xf

    return v0

    .line 284
    :sswitch_3a
    const/16 v0, 0xa

    return v0

    .line 282
    :sswitch_3d
    const/16 v0, 0x9

    return v0

    .line 288
    :sswitch_40
    const/16 v0, 0xc

    return v0

    .line 280
    :sswitch_43
    const/16 v0, 0x8

    return v0

    .line 286
    :sswitch_46
    const/16 v0, 0xb

    return v0

    .line 312
    :sswitch_49
    const/16 v0, 0x15

    return v0

    .line 306
    :sswitch_4c
    const/16 v0, 0x12

    return v0

    .line 302
    :sswitch_4f
    const/16 v0, 0x10

    return v0

    .line 298
    :sswitch_52
    const/16 v0, 0xe

    return v0

    .line 296
    :sswitch_55
    const/16 v0, 0xd

    return v0

    .line 294
    :sswitch_58
    const/4 v0, 0x7

    return v0

    .line 272
    :sswitch_5a
    const/4 v0, 0x0

    return v0

    .line 274
    :sswitch_5c
    const/4 v0, 0x1

    return v0

    .line 276
    :sswitch_5e
    const/4 v0, 0x2

    return v0

    .line 278
    :sswitch_60
    const/4 v0, 0x4

    return v0

    .line 292
    :sswitch_62
    const/4 v0, 0x6

    return v0

    .line 290
    :sswitch_64
    const/4 v0, 0x5

    return v0

    :sswitch_data_66
    .sparse-switch
        0x48 -> :sswitch_64
        0x2830 -> :sswitch_62
        0x2878 -> :sswitch_60
        0x4384 -> :sswitch_5e
        0x8003 -> :sswitch_5c
        0xc387 -> :sswitch_5a
        0xebff -> :sswitch_58
        0x10000 -> :sswitch_55
        0x14384 -> :sswitch_52
        0x18003 -> :sswitch_4f
        0x1c387 -> :sswitch_4c
        0x1ebff -> :sswitch_49
        0x41000 -> :sswitch_46
        0x43878 -> :sswitch_43
        0x45384 -> :sswitch_40
        0x4d387 -> :sswitch_3d
        0x4fbff -> :sswitch_3a
        0x51000 -> :sswitch_37
        0x55384 -> :sswitch_34
        0x59003 -> :sswitch_31
        0x5d387 -> :sswitch_2e
        0x5fbff -> :sswitch_2b
        0x80000 -> :sswitch_28
        0xc1000 -> :sswitch_25
        0xc3878 -> :sswitch_22
        0xc5384 -> :sswitch_1f
        0xcd387 -> :sswitch_1c
        0xcfbff -> :sswitch_19
        0xd1000 -> :sswitch_16
        0xd5384 -> :sswitch_13
        0xd9003 -> :sswitch_10
        0xdd387 -> :sswitch_d
        0xdfbff -> :sswitch_a
    .end sparse-switch
.end method

.method public static greylist-max-r getRafFromNetworkType(I)I
    .registers 2
    .param p0, "type"    # I

    .line 176
    const v0, 0xc387

    packed-switch p0, :pswitch_data_84

    .line 246
    const/4 v0, 0x0

    return v0

    .line 244
    :pswitch_8
    const v0, 0xdfbff

    return v0

    .line 242
    :pswitch_c
    const v0, 0xdd387

    return v0

    .line 240
    :pswitch_10
    const v0, 0xd5384

    return v0

    .line 238
    :pswitch_14
    const v0, 0xd9003

    return v0

    .line 236
    :pswitch_18
    const v0, 0xd1000

    return v0

    .line 234
    :pswitch_1c
    const v0, 0xc5384

    return v0

    .line 232
    :pswitch_20
    const v0, 0xcfbff

    return v0

    .line 230
    :pswitch_24
    const v0, 0xcd387

    return v0

    .line 228
    :pswitch_28
    const v0, 0xc3878

    return v0

    .line 226
    :pswitch_2c
    const v0, 0xc1000

    return v0

    .line 224
    :pswitch_30
    const/high16 v0, 0x80000

    return v0

    .line 222
    :pswitch_33
    const v0, 0x5fbff

    return v0

    .line 220
    :pswitch_37
    const v0, 0x1ebff

    return v0

    .line 218
    :pswitch_3b
    const v0, 0x5d387

    return v0

    .line 216
    :pswitch_3f
    const v0, 0x55384

    return v0

    .line 214
    :pswitch_43
    const v0, 0x1c387

    return v0

    .line 212
    :pswitch_47
    const v0, 0x59003

    return v0

    .line 210
    :pswitch_4b
    const v0, 0x18003

    return v0

    .line 208
    :pswitch_4f
    const v0, 0x51000

    return v0

    .line 206
    :pswitch_53
    const v0, 0x14384

    return v0

    .line 204
    :pswitch_57
    const/high16 v0, 0x10000

    return v0

    .line 196
    :pswitch_5a
    const v0, 0x45384

    return v0

    .line 194
    :pswitch_5e
    const v0, 0x41000

    return v0

    .line 192
    :pswitch_62
    const v0, 0x4fbff

    return v0

    .line 190
    :pswitch_66
    const v0, 0x4d387

    return v0

    .line 188
    :pswitch_6a
    const v0, 0x43878

    return v0

    .line 202
    :pswitch_6e
    const v0, 0xebff

    return v0

    .line 200
    :pswitch_72
    const/16 v0, 0x2830

    return v0

    .line 198
    :pswitch_75
    const/16 v0, 0x48

    return v0

    .line 186
    :pswitch_78
    const/16 v0, 0x2878

    return v0

    .line 184
    :pswitch_7b
    return v0

    .line 182
    :pswitch_7c
    const/16 v0, 0x4384

    return v0

    .line 180
    :pswitch_7f
    const v0, 0x8003

    return v0

    .line 178
    :pswitch_83
    return v0

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o rafTypeFromString(Ljava/lang/String;)I
    .registers 7
    .param p0, "rafList"    # Ljava/lang/String;

    .line 372
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 373
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "rafs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 375
    .local v1, "result":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_22

    aget-object v4, v0, v3

    .line 376
    .local v4, "raf":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    move-result v5

    .line 377
    .local v5, "rafType":I
    if-nez v5, :cond_1e

    return v5

    .line 378
    :cond_1e
    or-int/2addr v1, v5

    .line 375
    .end local v4    # "raf":Ljava/lang/String;
    .end local v5    # "rafType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 380
    :cond_22
    return v1
.end method

.method public static greylist-max-o singleRafTypeFromString(Ljava/lang/String;)I
    .registers 8
    .param p0, "rafString"    # Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    sparse-switch v0, :sswitch_data_152

    :cond_f
    goto/16 :goto_112

    :sswitch_11
    const-string v0, "EVDO_B"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_113

    :sswitch_1d
    const-string v0, "EVDO_A"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    goto/16 :goto_113

    :sswitch_28
    const-string v0, "EVDO_0"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x6

    goto/16 :goto_113

    :sswitch_33
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    goto/16 :goto_113

    :sswitch_3f
    const-string v0, "IS95B"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto/16 :goto_113

    :sswitch_4a
    const-string v0, "IS95A"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto/16 :goto_113

    :sswitch_55
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_113

    :sswitch_61
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto/16 :goto_113

    :sswitch_6d
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    goto/16 :goto_113

    :sswitch_78
    const-string v0, "EHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xc

    goto/16 :goto_113

    :sswitch_84
    const-string v0, "1XRTT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_113

    :sswitch_8f
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto/16 :goto_113

    :sswitch_9a
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_113

    :sswitch_a6
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_113

    :sswitch_b1
    const-string v0, "EVDO"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x13

    goto :goto_113

    :sswitch_bc
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_113

    :sswitch_c6
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    goto :goto_113

    :sswitch_d1
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    goto :goto_113

    :sswitch_dc
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xf

    goto :goto_113

    :sswitch_e7
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x16

    goto :goto_113

    :sswitch_f2
    const-string v0, "HS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    goto :goto_113

    :sswitch_fd
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_113

    :sswitch_107
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x15

    goto :goto_113

    :goto_112
    const/4 v0, -0x1

    :goto_113
    packed-switch v0, :pswitch_data_1b0

    .line 367
    return v1

    .line 366
    :pswitch_117
    const/high16 v0, 0x80000

    return v0

    .line 365
    :pswitch_11a
    const/high16 v0, 0x40000

    return v0

    .line 364
    :pswitch_11d
    const/16 v0, 0x4384

    return v0

    .line 363
    :pswitch_120
    const/16 v0, 0x2830

    return v0

    .line 362
    :pswitch_123
    const/16 v0, 0x48

    return v0

    .line 361
    :pswitch_126
    const/16 v0, 0x4380

    return v0

    .line 360
    :pswitch_129
    const/high16 v0, 0x10000

    return v0

    .line 359
    :pswitch_12c
    const v0, 0x8000

    return v0

    .line 358
    :pswitch_130
    const/16 v0, 0x4000

    return v0

    .line 357
    :pswitch_133
    const/16 v0, 0x1000

    return v0

    .line 356
    :pswitch_136
    const/16 v0, 0x2000

    return v0

    .line 355
    :pswitch_139
    const/16 v0, 0x800

    return v0

    .line 354
    :pswitch_13c
    const/16 v0, 0x200

    return v0

    .line 353
    :pswitch_13f
    const/16 v0, 0x100

    return v0

    .line 352
    :pswitch_142
    const/16 v0, 0x80

    return v0

    .line 351
    :pswitch_145
    const/16 v0, 0x20

    return v0

    .line 350
    :pswitch_148
    return v2

    .line 349
    :pswitch_149
    const/16 v0, 0x40

    return v0

    .line 348
    :pswitch_14c
    return v6

    .line 347
    :pswitch_14d
    return v6

    .line 346
    :pswitch_14e
    return v3

    .line 345
    :pswitch_14f
    return v4

    .line 344
    :pswitch_150
    return v5

    nop

    :sswitch_data_152
    .sparse-switch
        -0x798f2fe0 -> :sswitch_107
        -0x36280a07 -> :sswitch_fd
        0x90b -> :sswitch_f2
        0x9c4 -> :sswitch_e7
        0x114e1 -> :sswitch_dc
        0x127bd -> :sswitch_d1
        0x1f7db5 -> :sswitch_c6
        0x2065bd -> :sswitch_bc
        0x20a8fc -> :sswitch_b1
        0x217cea -> :sswitch_a6
        0x21fc3c -> :sswitch_9a
        0x27cf17 -> :sswitch_8f
        0x2dbbeab -> :sswitch_84
        0x3ee4e43 -> :sswitch_78
        0x41d604a -> :sswitch_6d
        0x41d8b94 -> :sswitch_61
        0x41da01b -> :sswitch_55
        0x42b4b3b -> :sswitch_4a
        0x42b4b3c -> :sswitch_3f
        0x4e97a8c -> :sswitch_33
        0x7a9a65ad -> :sswitch_28
        0x7a9a65be -> :sswitch_1d
        0x7a9a65bf -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_149
        :pswitch_148
        :pswitch_145
        :pswitch_142
        :pswitch_13f
        :pswitch_13c
        :pswitch_139
        :pswitch_136
        :pswitch_133
        :pswitch_130
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getPhoneId()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public greylist-max-r getRadioAccessFamily()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRadioAccessFamily = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return-void
.end method
