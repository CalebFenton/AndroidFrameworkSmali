.class public final Landroid/app/time/TimeZoneCapabilitiesAndConfig;
.super Ljava/lang/Object;
.source "TimeZoneCapabilitiesAndConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneCapabilitiesAndConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilities:Landroid/app/time/TimeZoneCapabilities;

.field private final blacklist mConfiguration:Landroid/app/time/TimeZoneConfiguration;

.field private final blacklist mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeZoneDetectorStatus;Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V
    .registers 5
    .param p1, "detectorStatus"    # Landroid/app/time/TimeZoneDetectorStatus;
    .param p2, "capabilities"    # Landroid/app/time/TimeZoneCapabilities;
    .param p3, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneDetectorStatus;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 73
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneCapabilities;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    .line 74
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneConfiguration;

    iput-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    .line 75
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 79
    const-class v0, Landroid/app/time/TimeZoneDetectorStatus;

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeZoneDetectorStatus;

    .line 81
    .local v0, "detectorStatus":Landroid/app/time/TimeZoneDetectorStatus;
    const-class v2, Landroid/app/time/TimeZoneCapabilities;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/TimeZoneCapabilities;

    .line 82
    .local v2, "capabilities":Landroid/app/time/TimeZoneCapabilities;
    const-class v3, Landroid/app/time/TimeZoneConfiguration;

    invoke-virtual {p0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/TimeZoneConfiguration;

    .line 83
    .local v1, "configuration":Landroid/app/time/TimeZoneConfiguration;
    new-instance v3, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    invoke-direct {v3, v0, v2, v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeZoneDetectorStatus;Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V

    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 127
    return v0

    .line 129
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 132
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    .line 133
    .local v2, "that":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    invoke-virtual {v3, v4}, Landroid/app/time/TimeZoneDetectorStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    .line 134
    invoke-virtual {v3, v4}, Landroid/app/time/TimeZoneCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    iget-object v4, v2, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    .line 135
    invoke-virtual {v3, v4}, Landroid/app/time/TimeZoneConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 133
    :goto_35
    return v0

    .line 130
    .end local v2    # "that":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getCapabilities()Landroid/app/time/TimeZoneCapabilities;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    return-object v0
.end method

.method public whitelist getConfiguration()Landroid/app/time/TimeZoneConfiguration;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    return-object v0
.end method

.method public blacklist getDetectorStatus()Landroid/app/time/TimeZoneDetectorStatus;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneCapabilitiesAndConfig{mDetectorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeZoneCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeZoneConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
