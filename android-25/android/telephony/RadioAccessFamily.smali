.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/RadioAccessFamily$1;
    }
.end annotation


# static fields
.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field private static final LTE:I = 0x84000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_LTE_CA:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 137
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    #@5
    .line 136
    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@5
    .line 82
    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@7
    .line 80
    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 3
    .param p0, "raf"    # I

    #@0
    .prologue
    const v2, 0x10006

    #@3
    const v1, 0x8e08

    #@6
    .line 239
    and-int v0, v2, p0

    #@8
    if-lez v0, :cond_0

    #@a
    or-int/2addr p0, v2

    #@b
    .line 240
    :cond_0
    and-int v0, v1, p0

    #@d
    if-lez v0, :cond_1

    #@f
    or-int/2addr p0, v1

    #@10
    .line 241
    :cond_1
    and-int/lit8 v0, p0, 0x70

    #@12
    if-lez v0, :cond_2

    #@14
    or-int/lit8 p0, p0, 0x70

    #@16
    .line 242
    :cond_2
    and-int/lit16 v0, p0, 0x3180

    #@18
    if-lez v0, :cond_3

    #@1a
    or-int/lit16 p0, p0, 0x3180

    #@1c
    .line 243
    :cond_3
    const v0, 0x84000

    #@1f
    and-int/2addr v0, p0

    #@20
    if-lez v0, :cond_4

    #@22
    const v0, 0x84000

    #@25
    or-int/2addr p0, v0

    #@26
    .line 245
    :cond_4
    return p0
.end method

.method public static getHighestRafCapability(I)I
    .locals 3
    .param p0, "raf"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 254
    const v0, 0x84000

    #@4
    and-int/2addr v0, p0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 255
    const/4 v0, 0x3

    #@8
    return v0

    #@9
    .line 257
    :cond_0
    const v0, 0x8e08

    #@c
    and-int/2addr v0, p0

    #@d
    const v1, 0xbf80

    #@10
    or-int/2addr v0, v1

    #@11
    if-lez v0, :cond_1

    #@13
    .line 258
    const/4 v0, 0x2

    #@14
    return v0

    #@15
    .line 260
    :cond_1
    and-int/lit8 v0, p0, 0x70

    #@17
    const v1, 0x10006

    #@1a
    or-int/2addr v0, v1

    #@1b
    if-lez v0, :cond_2

    #@1d
    .line 261
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 263
    :cond_2
    return v2
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    #@0
    .prologue
    .line 269
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    #@3
    move-result p0

    #@4
    .line 271
    sparse-switch p0, :sswitch_data_0

    #@7
    .line 339
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@9
    .line 343
    .local v0, "type":I
    :goto_0
    return v0

    #@a
    .line 273
    .end local v0    # "type":I
    :sswitch_0
    const/4 v0, 0x0

    #@b
    .line 274
    .restart local v0    # "type":I
    goto :goto_0

    #@c
    .line 276
    .end local v0    # "type":I
    :sswitch_1
    const/4 v0, 0x1

    #@d
    .line 277
    .restart local v0    # "type":I
    goto :goto_0

    #@e
    .line 279
    .end local v0    # "type":I
    :sswitch_2
    const/4 v0, 0x2

    #@f
    .line 280
    .restart local v0    # "type":I
    goto :goto_0

    #@10
    .line 282
    .end local v0    # "type":I
    :sswitch_3
    const/4 v0, 0x4

    #@11
    .line 283
    .restart local v0    # "type":I
    goto :goto_0

    #@12
    .line 285
    .end local v0    # "type":I
    :sswitch_4
    const/16 v0, 0x8

    #@14
    .line 286
    .restart local v0    # "type":I
    goto :goto_0

    #@15
    .line 288
    .end local v0    # "type":I
    :sswitch_5
    const/16 v0, 0x9

    #@17
    .line 289
    .restart local v0    # "type":I
    goto :goto_0

    #@18
    .line 291
    .end local v0    # "type":I
    :sswitch_6
    const/16 v0, 0xa

    #@1a
    .line 292
    .restart local v0    # "type":I
    goto :goto_0

    #@1b
    .line 294
    .end local v0    # "type":I
    :sswitch_7
    const/16 v0, 0xb

    #@1d
    .line 295
    .restart local v0    # "type":I
    goto :goto_0

    #@1e
    .line 297
    .end local v0    # "type":I
    :sswitch_8
    const/16 v0, 0xc

    #@20
    .line 298
    .restart local v0    # "type":I
    goto :goto_0

    #@21
    .line 300
    .end local v0    # "type":I
    :sswitch_9
    const/4 v0, 0x5

    #@22
    .line 301
    .restart local v0    # "type":I
    goto :goto_0

    #@23
    .line 303
    .end local v0    # "type":I
    :sswitch_a
    const/4 v0, 0x6

    #@24
    .line 304
    .restart local v0    # "type":I
    goto :goto_0

    #@25
    .line 306
    .end local v0    # "type":I
    :sswitch_b
    const/4 v0, 0x7

    #@26
    .line 307
    .restart local v0    # "type":I
    goto :goto_0

    #@27
    .line 309
    .end local v0    # "type":I
    :sswitch_c
    const/16 v0, 0xd

    #@29
    .line 310
    .restart local v0    # "type":I
    goto :goto_0

    #@2a
    .line 312
    .end local v0    # "type":I
    :sswitch_d
    const/16 v0, 0xe

    #@2c
    .line 313
    .restart local v0    # "type":I
    goto :goto_0

    #@2d
    .line 315
    .end local v0    # "type":I
    :sswitch_e
    const/16 v0, 0xf

    #@2f
    .line 316
    .restart local v0    # "type":I
    goto :goto_0

    #@30
    .line 318
    .end local v0    # "type":I
    :sswitch_f
    const/16 v0, 0x10

    #@32
    .line 319
    .restart local v0    # "type":I
    goto :goto_0

    #@33
    .line 321
    .end local v0    # "type":I
    :sswitch_10
    const/16 v0, 0x11

    #@35
    .line 322
    .restart local v0    # "type":I
    goto :goto_0

    #@36
    .line 324
    .end local v0    # "type":I
    :sswitch_11
    const/16 v0, 0x12

    #@38
    .line 325
    .restart local v0    # "type":I
    goto :goto_0

    #@39
    .line 327
    .end local v0    # "type":I
    :sswitch_12
    const/16 v0, 0x13

    #@3b
    .line 328
    .restart local v0    # "type":I
    goto :goto_0

    #@3c
    .line 330
    .end local v0    # "type":I
    :sswitch_13
    const/16 v0, 0x14

    #@3e
    .line 331
    .restart local v0    # "type":I
    goto :goto_0

    #@3f
    .line 333
    .end local v0    # "type":I
    :sswitch_14
    const/16 v0, 0x15

    #@41
    .line 334
    .restart local v0    # "type":I
    goto :goto_0

    #@42
    .line 336
    .end local v0    # "type":I
    :sswitch_15
    const/16 v0, 0x16

    #@44
    .line 337
    .restart local v0    # "type":I
    goto :goto_0

    #@45
    .line 271
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_9
        0x3180 -> :sswitch_a
        0x31f0 -> :sswitch_3
        0x8e08 -> :sswitch_2
        0x10006 -> :sswitch_1
        0x18e0e -> :sswitch_0
        0x1bffe -> :sswitch_b
        0x20000 -> :sswitch_c
        0x28e08 -> :sswitch_d
        0x30006 -> :sswitch_f
        0x38e0e -> :sswitch_11
        0x3bffe -> :sswitch_14
        0x84000 -> :sswitch_7
        0x871f0 -> :sswitch_4
        0x8ce08 -> :sswitch_8
        0x9ce0e -> :sswitch_5
        0x9fffe -> :sswitch_6
        0xa4000 -> :sswitch_e
        0xace08 -> :sswitch_12
        0xb4006 -> :sswitch_10
        0xbce0e -> :sswitch_13
        0xbfffe -> :sswitch_15
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 156
    packed-switch p0, :pswitch_data_0

    #@3
    .line 227
    const/4 v0, 0x1

    #@4
    .line 231
    .local v0, "raf":I
    :goto_0
    return v0

    #@5
    .line 158
    .end local v0    # "raf":I
    :pswitch_0
    const v0, 0x18e0e

    #@8
    .line 159
    .restart local v0    # "raf":I
    goto :goto_0

    #@9
    .line 161
    .end local v0    # "raf":I
    :pswitch_1
    const v0, 0x10006

    #@c
    .line 162
    .restart local v0    # "raf":I
    goto :goto_0

    #@d
    .line 164
    .end local v0    # "raf":I
    :pswitch_2
    const v0, 0x8e08

    #@10
    .line 165
    .restart local v0    # "raf":I
    goto :goto_0

    #@11
    .line 167
    .end local v0    # "raf":I
    :pswitch_3
    const v0, 0x18e0e

    #@14
    .line 168
    .restart local v0    # "raf":I
    goto :goto_0

    #@15
    .line 170
    .end local v0    # "raf":I
    :pswitch_4
    const/16 v0, 0x31f0

    #@17
    .line 171
    .restart local v0    # "raf":I
    goto :goto_0

    #@18
    .line 173
    .end local v0    # "raf":I
    :pswitch_5
    const v0, 0x871f0

    #@1b
    .line 174
    .restart local v0    # "raf":I
    goto :goto_0

    #@1c
    .line 176
    .end local v0    # "raf":I
    :pswitch_6
    const v0, 0x9ce0e

    #@1f
    .line 177
    .restart local v0    # "raf":I
    goto :goto_0

    #@20
    .line 179
    .end local v0    # "raf":I
    :pswitch_7
    const v0, 0x9fffe

    #@23
    .line 180
    .restart local v0    # "raf":I
    goto :goto_0

    #@24
    .line 182
    .end local v0    # "raf":I
    :pswitch_8
    const v0, 0x84000

    #@27
    .line 183
    .restart local v0    # "raf":I
    goto :goto_0

    #@28
    .line 185
    .end local v0    # "raf":I
    :pswitch_9
    const v0, 0x8ce08

    #@2b
    .line 186
    .restart local v0    # "raf":I
    goto :goto_0

    #@2c
    .line 188
    .end local v0    # "raf":I
    :pswitch_a
    const/16 v0, 0x70

    #@2e
    .line 189
    .restart local v0    # "raf":I
    goto :goto_0

    #@2f
    .line 191
    .end local v0    # "raf":I
    :pswitch_b
    const/16 v0, 0x3180

    #@31
    .line 192
    .restart local v0    # "raf":I
    goto :goto_0

    #@32
    .line 194
    .end local v0    # "raf":I
    :pswitch_c
    const v0, 0x1bffe

    #@35
    .line 195
    .restart local v0    # "raf":I
    goto :goto_0

    #@36
    .line 197
    .end local v0    # "raf":I
    :pswitch_d
    const/high16 v0, 0x20000

    #@38
    .line 198
    .restart local v0    # "raf":I
    goto :goto_0

    #@39
    .line 200
    .end local v0    # "raf":I
    :pswitch_e
    const v0, 0x28e08

    #@3c
    .line 201
    .restart local v0    # "raf":I
    goto :goto_0

    #@3d
    .line 203
    .end local v0    # "raf":I
    :pswitch_f
    const v0, 0xa4000

    #@40
    .line 204
    .restart local v0    # "raf":I
    goto :goto_0

    #@41
    .line 206
    .end local v0    # "raf":I
    :pswitch_10
    const v0, 0x30006

    #@44
    .line 207
    .restart local v0    # "raf":I
    goto :goto_0

    #@45
    .line 209
    .end local v0    # "raf":I
    :pswitch_11
    const v0, 0xb4006

    #@48
    .line 210
    .restart local v0    # "raf":I
    goto :goto_0

    #@49
    .line 212
    .end local v0    # "raf":I
    :pswitch_12
    const v0, 0x38e0e

    #@4c
    .line 213
    .restart local v0    # "raf":I
    goto :goto_0

    #@4d
    .line 215
    .end local v0    # "raf":I
    :pswitch_13
    const v0, 0xace08

    #@50
    .line 216
    .restart local v0    # "raf":I
    goto :goto_0

    #@51
    .line 218
    .end local v0    # "raf":I
    :pswitch_14
    const v0, 0xbce0e

    #@54
    .line 219
    .restart local v0    # "raf":I
    goto :goto_0

    #@55
    .line 221
    .end local v0    # "raf":I
    :pswitch_15
    const v0, 0x3bffe

    #@58
    .line 222
    .restart local v0    # "raf":I
    goto :goto_0

    #@59
    .line 224
    .end local v0    # "raf":I
    :pswitch_16
    const v0, 0xbfffe

    #@5c
    .line 225
    .restart local v0    # "raf":I
    goto :goto_0

    #@5d
    .line 156
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .locals 7
    .param p0, "rafList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 376
    const-string/jumbo v4, "\\|"

    #@7
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 377
    .local v2, "rafs":[Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .line 378
    .local v3, "result":I
    const/4 v4, 0x0

    #@d
    array-length v5, v2

    #@e
    :goto_0
    if-ge v4, v5, :cond_1

    #@10
    aget-object v0, v2, v4

    #@12
    .line 379
    .local v0, "raf":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    invoke-static {v6}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    .line 380
    .local v1, "rafType":I
    const/4 v6, 0x1

    #@1b
    if-ne v1, v6, :cond_0

    #@1d
    return v1

    #@1e
    .line 381
    :cond_0
    or-int/2addr v3, v1

    #@1f
    .line 378
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 383
    .end local v0    # "raf":Ljava/lang/String;
    .end local v1    # "rafType":I
    :cond_1
    return v3
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "rafString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
    const-string/jumbo v0, "GPRS"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 348
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 347
    :cond_0
    const-string/jumbo v0, "EDGE"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 349
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 347
    :cond_1
    const-string/jumbo v0, "UMTS"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 350
    const/16 v0, 0x8

    #@21
    return v0

    #@22
    .line 347
    :cond_2
    const-string/jumbo v0, "IS95A"

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 351
    const/16 v0, 0x10

    #@2d
    return v0

    #@2e
    .line 347
    :cond_3
    const-string/jumbo v0, "IS95B"

    #@31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 352
    const/16 v0, 0x20

    #@39
    return v0

    #@3a
    .line 347
    :cond_4
    const-string/jumbo v0, "1XRTT"

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 353
    const/16 v0, 0x40

    #@45
    return v0

    #@46
    .line 347
    :cond_5
    const-string/jumbo v0, "EVDO_0"

    #@49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_6

    #@4f
    .line 354
    const/16 v0, 0x80

    #@51
    return v0

    #@52
    .line 347
    :cond_6
    const-string/jumbo v0, "EVDO_A"

    #@55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_7

    #@5b
    .line 355
    const/16 v0, 0x100

    #@5d
    return v0

    #@5e
    .line 347
    :cond_7
    const-string/jumbo v0, "HSDPA"

    #@61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 356
    const/16 v0, 0x200

    #@69
    return v0

    #@6a
    .line 347
    :cond_8
    const-string/jumbo v0, "HSUPA"

    #@6d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_9

    #@73
    .line 357
    const/16 v0, 0x400

    #@75
    return v0

    #@76
    .line 347
    :cond_9
    const-string/jumbo v0, "HSPA"

    #@79
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_a

    #@7f
    .line 358
    const/16 v0, 0x800

    #@81
    return v0

    #@82
    .line 347
    :cond_a
    const-string/jumbo v0, "EVDO_B"

    #@85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_b

    #@8b
    .line 359
    const/16 v0, 0x1000

    #@8d
    return v0

    #@8e
    .line 347
    :cond_b
    const-string/jumbo v0, "EHRPD"

    #@91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_c

    #@97
    .line 360
    const/16 v0, 0x2000

    #@99
    return v0

    #@9a
    .line 347
    :cond_c
    const-string/jumbo v0, "LTE"

    #@9d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_d

    #@a3
    .line 361
    const/16 v0, 0x4000

    #@a5
    return v0

    #@a6
    .line 347
    :cond_d
    const-string/jumbo v0, "HSPAP"

    #@a9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_e

    #@af
    .line 362
    const v0, 0x8000

    #@b2
    return v0

    #@b3
    .line 347
    :cond_e
    const-string/jumbo v0, "GSM"

    #@b6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v0

    #@ba
    if-eqz v0, :cond_f

    #@bc
    .line 363
    const/high16 v0, 0x10000

    #@be
    return v0

    #@bf
    .line 347
    :cond_f
    const-string/jumbo v0, "TD_SCDMA"

    #@c2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v0

    #@c6
    if-eqz v0, :cond_10

    #@c8
    .line 364
    const/high16 v0, 0x20000

    #@ca
    return v0

    #@cb
    .line 347
    :cond_10
    const-string/jumbo v0, "HS"

    #@ce
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v0

    #@d2
    if-eqz v0, :cond_11

    #@d4
    .line 365
    const v0, 0x8e00

    #@d7
    return v0

    #@d8
    .line 347
    :cond_11
    const-string/jumbo v0, "CDMA"

    #@db
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v0

    #@df
    if-eqz v0, :cond_12

    #@e1
    .line 366
    const/16 v0, 0x70

    #@e3
    return v0

    #@e4
    .line 347
    :cond_12
    const-string/jumbo v0, "EVDO"

    #@e7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_13

    #@ed
    .line 367
    const/16 v0, 0x3180

    #@ef
    return v0

    #@f0
    .line 347
    :cond_13
    const-string/jumbo v0, "WCDMA"

    #@f3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v0

    #@f7
    if-eqz v0, :cond_14

    #@f9
    .line 368
    const v0, 0x8e08

    #@fc
    return v0

    #@fd
    .line 347
    :cond_14
    const-string/jumbo v0, "LTE_CA"

    #@100
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v0

    #@104
    if-eqz v0, :cond_15

    #@106
    .line 369
    const/high16 v0, 0x80000

    #@108
    return v0

    #@109
    .line 370
    :cond_15
    const/4 v0, 0x1

    #@10a
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@2
    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "{ mPhoneId = "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 106
    const-string/jumbo v2, ", mRadioAccessFamily = "

    #@15
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 106
    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@1b
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 107
    const-string/jumbo v2, "}"

    #@22
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 108
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 130
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 128
    return-void
.end method
