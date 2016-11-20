.class public Landroid/location/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Country$1;
    }
.end annotation


# static fields
.field public static final COUNTRY_SOURCE_LOCALE:I = 0x3

.field public static final COUNTRY_SOURCE_LOCATION:I = 0x1

.field public static final COUNTRY_SOURCE_NETWORK:I = 0x0

.field public static final COUNTRY_SOURCE_SIM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountryIso:Ljava/lang/String;

.field private mHashCode:I

.field private final mSource:I

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/location/Country$1;

    #@2
    invoke-direct {v0}, Landroid/location/Country$1;-><init>()V

    #@5
    sput-object v0, Landroid/location/Country;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    iget-object v0, p1, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@7
    .line 103
    iget v0, p1, Landroid/location/Country;->mSource:I

    #@9
    iput v0, p0, Landroid/location/Country;->mSource:I

    #@b
    .line 104
    iget-wide v0, p1, Landroid/location/Country;->mTimestamp:J

    #@d
    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    #@f
    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 83
    :cond_1
    const/4 v0, 0x3

    #@e
    if-gt p2, v0, :cond_0

    #@10
    .line 86
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@18
    .line 87
    iput p2, p0, Landroid/location/Country;->mSource:I

    #@1a
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    #@20
    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "timestamp"    # J

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 93
    :cond_1
    const/4 v0, 0x3

    #@e
    if-gt p2, v0, :cond_0

    #@10
    .line 96
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@18
    .line 97
    iput p2, p0, Landroid/location/Country;->mSource:I

    #@1a
    .line 98
    iput-wide p3, p0, Landroid/location/Country;->mTimestamp:J

    #@1c
    .line 91
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLandroid/location/Country;)V
    .locals 1
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "timestamp"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/Country;-><init>(Ljava/lang/String;IJ)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 147
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 163
    if-ne p1, p0, :cond_0

    #@4
    .line 164
    return v1

    #@5
    .line 166
    :cond_0
    instance-of v3, p1, Landroid/location/Country;

    #@7
    if-eqz v3, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 167
    check-cast v0, Landroid/location/Country;

    #@c
    .line 169
    .local v0, "c":Landroid/location/Country;
    iget-object v3, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@e
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    iget v3, p0, Landroid/location/Country;->mSource:I

    #@1a
    invoke-virtual {v0}, Landroid/location/Country;->getSource()I

    #@1d
    move-result v4

    #@1e
    if-ne v3, v4, :cond_1

    #@20
    :goto_0
    return v1

    #@21
    :cond_1
    move v1, v2

    #@22
    goto :goto_0

    #@23
    .line 171
    .end local v0    # "c":Landroid/location/Country;
    :cond_2
    return v2
.end method

.method public equalsIgnoreSource(Landroid/location/Country;)Z
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 195
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@4
    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public final getCountryIso()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getSource()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/location/Country;->mSource:I

    #@2
    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 133
    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 176
    iget v0, p0, Landroid/location/Country;->mHashCode:I

    #@2
    .line 177
    .local v0, "hash":I
    if-nez v0, :cond_0

    #@4
    .line 179
    iget-object v1, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/lit16 v0, v1, 0xdd

    #@c
    .line 180
    mul-int/lit8 v1, v0, 0xd

    #@e
    iget v2, p0, Landroid/location/Country;->mSource:I

    #@10
    add-int v0, v1, v2

    #@12
    .line 181
    iput v0, p0, Landroid/location/Country;->mHashCode:I

    #@14
    .line 183
    :cond_0
    iget v1, p0, Landroid/location/Country;->mHashCode:I

    #@16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Country {ISO="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", source="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/location/Country;->mSource:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", time="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-wide v2, p0, Landroid/location/Country;->mTimestamp:J

    #@28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/location/Country;->mCountryIso:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 152
    iget v0, p0, Landroid/location/Country;->mSource:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 153
    iget-wide v0, p0, Landroid/location/Country;->mTimestamp:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 150
    return-void
.end method
