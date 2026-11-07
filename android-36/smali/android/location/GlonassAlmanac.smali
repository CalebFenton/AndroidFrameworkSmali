.class public final Landroid/location/GlonassAlmanac;
.super Ljava/lang/Object;
.source "GlonassAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GlonassAlmanac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIssueDateMillis:J

.field private final blacklist mSatelliteAlmanacs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroid/location/GlonassAlmanac$1;

    invoke-direct {v0}, Landroid/location/GlonassAlmanac$1;-><init>()V

    sput-object v0, Landroid/location/GlonassAlmanac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/util/List;)V
    .registers 6
    .param p1, "issueDateMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p3, "satelliteAlmanacs":Ljava/util/List;, "Ljava/util/List<Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 62
    const-string v0, "satelliteAlmanacs cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-wide p1, p0, Landroid/location/GlonassAlmanac;->mIssueDateMillis:J

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAlmanac;->mSatelliteAlmanacs:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIssueDateMillis()J
    .registers 3

    .line 70
    iget-wide v0, p0, Landroid/location/GlonassAlmanac;->mIssueDateMillis:J

    return-wide v0
.end method

.method public blacklist getSatelliteAlmanacs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/location/GlonassAlmanac;->mSatelliteAlmanacs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlonassAlmanac["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "issueDateMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassAlmanac;->mIssueDateMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", satelliteAlmanacs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAlmanac;->mSatelliteAlmanacs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-wide v0, p0, Landroid/location/GlonassAlmanac;->mIssueDateMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Landroid/location/GlonassAlmanac;->mSatelliteAlmanacs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    return-void
.end method
