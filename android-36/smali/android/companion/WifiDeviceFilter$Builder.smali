.class public final Landroid/companion/WifiDeviceFilter$Builder;
.super Ljava/lang/Object;
.source "WifiDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/WifiDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBssid:Landroid/net/MacAddress;

.field private blacklist mBssidMask:Landroid/net/MacAddress;

.field private blacklist mBuilderFieldsSet:J

.field private greylist-max-o mNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 210
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 269
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 273
    return-void

    .line 270
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/WifiDeviceFilter;
    .registers 9

    .line 250
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 251
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 253
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 254
    iput-object v1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 256
    :cond_18
    iget-wide v4, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 257
    iput-object v1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    .line 259
    :cond_23
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 260
    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    .line 262
    :cond_30
    new-instance v0, Landroid/companion/WifiDeviceFilter;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object v3, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/WifiDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/net/MacAddress;Landroid/net/MacAddress;)V

    return-object v0
.end method

.method public whitelist setBssid(Landroid/net/MacAddress;)Landroid/companion/WifiDeviceFilter$Builder;
    .registers 6
    .param p1, "value"    # Landroid/net/MacAddress;

    .line 229
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 230
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 231
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    .line 232
    return-object p0
.end method

.method public whitelist setBssidMask(Landroid/net/MacAddress;)Landroid/companion/WifiDeviceFilter$Builder;
    .registers 6
    .param p1, "value"    # Landroid/net/MacAddress;

    .line 241
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 242
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 243
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    .line 244
    return-object p0
.end method

.method public whitelist setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/WifiDeviceFilter$Builder;
    .registers 6
    .param p1, "value"    # Ljava/util/regex/Pattern;

    .line 218
    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 219
    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    .line 220
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 221
    return-object p0
.end method
