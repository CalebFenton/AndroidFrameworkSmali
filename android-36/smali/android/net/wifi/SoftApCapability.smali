.class public final Landroid/net/wifi/SoftApCapability;
.super Ljava/lang/Object;
.source "SoftApCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SoftApCapability$HotspotFeatures;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SoftApCapability;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field public static final whitelist SOFTAP_FEATURE_ACS_OFFLOAD:J = 0x1L

.field public static final whitelist SOFTAP_FEATURE_BAND_24G_SUPPORTED:J = 0x20L

.field public static final whitelist SOFTAP_FEATURE_BAND_5G_SUPPORTED:J = 0x40L

.field public static final whitelist SOFTAP_FEATURE_BAND_60G_SUPPORTED:J = 0x100L

.field public static final whitelist SOFTAP_FEATURE_BAND_6G_SUPPORTED:J = 0x80L

.field public static final whitelist SOFTAP_FEATURE_CLIENT_FORCE_DISCONNECT:J = 0x2L

.field public static final whitelist SOFTAP_FEATURE_IEEE80211_AX:J = 0x10L

.field public static final whitelist SOFTAP_FEATURE_IEEE80211_BE:J = 0x200L

.field public static final whitelist SOFTAP_FEATURE_MAC_ADDRESS_CUSTOMIZATION:J = 0x8L

.field public static final whitelist SOFTAP_FEATURE_MLO:J = 0x1000L

.field public static final whitelist SOFTAP_FEATURE_WPA3_OWE:J = 0x800L

.field public static final whitelist SOFTAP_FEATURE_WPA3_OWE_TRANSITION:J = 0x400L

.field public static final whitelist SOFTAP_FEATURE_WPA3_SAE:J = 0x4L

.field private static final blacklist TAG:Ljava/lang/String; = "SoftApCapability"


# instance fields
.field private blacklist mCountryCodeFromDriver:Ljava/lang/String;

.field private blacklist mMaximumSupportedClientNumber:I

.field private blacklist mSupportedChannelListIn24g:[I

.field private blacklist mSupportedChannelListIn5g:[I

.field private blacklist mSupportedChannelListIn60g:[I

.field private blacklist mSupportedChannelListIn6g:[I

.field private blacklist mSupportedFeatures:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmMaximumSupportedClientNumber(Landroid/net/wifi/SoftApCapability;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    .line 378
    new-instance v0, Landroid/net/wifi/SoftApCapability$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApCapability$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 5
    .param p1, "features"    # J

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    .line 184
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 189
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 194
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 199
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 355
    iput-wide p1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    .line 356
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/SoftApCapability;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/SoftApCapability;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    .line 184
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 189
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 194
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 199
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 334
    if-eqz p1, :cond_35

    .line 335
    iget-wide v0, p1, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    iput-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    .line 336
    iget v0, p1, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    iput v0, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    .line 337
    iget-object v0, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 338
    iget-object v0, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 339
    iget-object v0, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 340
    iget-object v0, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 341
    iget-object v0, p1, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    .line 343
    :cond_35
    return-void
.end method


# virtual methods
.method public whitelist areFeaturesSupported(J)Z
    .registers 5
    .param p1, "features"    # J

    .line 247
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 413
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 414
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/SoftApCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 415
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/SoftApCapability;

    .line 416
    .local v1, "capability":Landroid/net/wifi/SoftApCapability;
    iget-wide v3, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    iget-wide v5, v1, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4e

    iget v3, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    iget v4, v1, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    iget-object v4, v1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 418
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    iget-object v4, v1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 419
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    iget-object v4, v1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 420
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    iget-object v4, v1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 421
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    .line 422
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v2

    .line 416
    :goto_4f
    return v0
.end method

.method public blacklist getCountryCode()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxSupportedClients()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    return v0
.end method

.method public whitelist getSupportedChannelList(I)[I
    .registers 5
    .param p1, "band"    # I

    .line 316
    sparse-switch p1, :sswitch_data_28

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :sswitch_1c
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    return-object v0

    .line 322
    :sswitch_1f
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    return-object v0

    .line 320
    :sswitch_22
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    return-object v0

    .line 318
    :sswitch_25
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    return-object v0

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_22
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1c
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 427
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 428
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 429
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 430
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 431
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 427
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public blacklist setMaxSupportedClients(I)V
    .registers 2
    .param p1, "maxClient"    # I

    .line 236
    iput p1, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    .line 237
    return-void
.end method

.method public blacklist setSupportedChannelList(I[I)Z
    .registers 6
    .param p1, "band"    # I
    .param p2, "supportedChannelList"    # [I

    .line 279
    if-nez p2, :cond_4

    const/4 v0, 0x0

    return v0

    .line 280
    :cond_4
    sparse-switch p1, :sswitch_data_2e

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :sswitch_20
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 292
    goto :goto_2c

    .line 288
    :sswitch_23
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 289
    goto :goto_2c

    .line 285
    :sswitch_26
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 286
    goto :goto_2c

    .line 282
    :sswitch_29
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 283
    nop

    .line 296
    :goto_2c
    const/4 v0, 0x1

    return v0

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_26
        0x4 -> :sswitch_23
        0x8 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist setSupportedFeatures(ZJ)V
    .registers 8
    .param p1, "value"    # Z
    .param p2, "features"    # J

    .line 257
    if-eqz p1, :cond_8

    .line 258
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    or-long/2addr v0, p2

    iput-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    goto :goto_e

    .line 260
    :cond_8
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    not-long v2, p2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    .line 262
    :goto_e
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "SupportedFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, " MaximumSupportedClientNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    const-string v1, " SupportedChannelListIn24g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 402
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, " SupportedChannelListIn5g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, " SupportedChannelListIn6g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, " SupportedChannelListIn60g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 406
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, " mCountryCodeFromDriver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 367
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 368
    iget v0, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 370
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 371
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 372
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 373
    iget-object v0, p0, Landroid/net/wifi/SoftApCapability;->mCountryCodeFromDriver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    return-void
.end method
