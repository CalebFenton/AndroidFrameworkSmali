.class public final Landroid/location/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Country$CountrySource;
    }
.end annotation


# static fields
.field public static final whitelist COUNTRY_SOURCE_LOCALE:I = 0x3

.field public static final whitelist COUNTRY_SOURCE_LOCATION:I = 0x1

.field public static final whitelist COUNTRY_SOURCE_NETWORK:I = 0x0

.field public static final whitelist COUNTRY_SOURCE_SIM:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCountryIso:Ljava/lang/String;

.field private greylist-max-o mHashCode:I

.field private final greylist-max-o mSource:I

.field private final greylist-max-o mTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/location/Country$1;

    invoke-direct {v0}, Landroid/location/Country$1;-><init>()V

    sput-object v0, Landroid/location/Country;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/location/Country;)V
    .registers 4
    .param p1, "country"    # Landroid/location/Country;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget-object v0, p1, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    .line 126
    iget v0, p1, Landroid/location/Country;->mSource:I

    iput v0, p0, Landroid/location/Country;->mSource:I

    .line 127
    iget-wide v0, p1, Landroid/location/Country;->mTimestamp:J

    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    .line 128
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1b

    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    .line 109
    iput p2, p0, Landroid/location/Country;->mSource:I

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    .line 111
    return-void

    .line 106
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;IJ)V
    .registers 6
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "timestamp"    # J

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    const/4 v0, 0x3

    if-gt p2, v0, :cond_17

    .line 118
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    .line 119
    iput p2, p0, Landroid/location/Country;->mSource:I

    .line 120
    iput-wide p3, p0, Landroid/location/Country;->mTimestamp:J

    .line 121
    return-void

    .line 116
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IJLandroid/location/Country-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/Country;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 210
    return v0

    .line 212
    :cond_4
    instance-of v1, p1, Landroid/location/Country;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 213
    move-object v1, p1

    check-cast v1, Landroid/location/Country;

    .line 215
    .local v1, "c":Landroid/location/Country;
    iget-object v3, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {v1}, Landroid/location/Country;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 217
    .end local v1    # "c":Landroid/location/Country;
    :cond_23
    return v2
.end method

.method public greylist-max-o equalsIgnoreSource(Landroid/location/Country;)Z
    .registers 4
    .param p1, "country"    # Landroid/location/Country;

    .line 243
    if-eqz p1, :cond_10

    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist getCountryCode()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getCountryIso()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSource()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/location/Country;->mSource:I

    return v0
.end method

.method public greylist-max-o getTimestamp()J
    .registers 3

    .line 175
    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 222
    iget v0, p0, Landroid/location/Country;->mHashCode:I

    .line 223
    .local v0, "hash":I
    if-nez v0, :cond_16

    .line 224
    const/16 v0, 0x11

    .line 225
    mul-int/lit8 v1, v0, 0xd

    iget-object v2, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 226
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0xd

    iget v2, p0, Landroid/location/Country;->mSource:I

    add-int/2addr v0, v2

    .line 227
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Landroid/location/Country;->mHashCode:I

    .line 229
    :cond_16
    iget v1, p0, Landroid/location/Country;->mHashCode:I

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country {ISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Country;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 196
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget v0, p0, Landroid/location/Country;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    return-void
.end method
