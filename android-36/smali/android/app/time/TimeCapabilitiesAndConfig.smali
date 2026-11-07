.class public final Landroid/app/time/TimeCapabilitiesAndConfig;
.super Ljava/lang/Object;
.source "TimeCapabilitiesAndConfig.java"

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
            "Landroid/app/time/TimeCapabilitiesAndConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilities:Landroid/app/time/TimeCapabilities;

.field private final blacklist mConfiguration:Landroid/app/time/TimeConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 1

    invoke-static {p0}, Landroid/app/time/TimeCapabilitiesAndConfig;->readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig$1;

    invoke-direct {v0}, Landroid/app/time/TimeCapabilitiesAndConfig$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeCapabilitiesAndConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V
    .registers 4
    .param p1, "timeCapabilities"    # Landroid/app/time/TimeCapabilities;
    .param p2, "timeConfiguration"    # Landroid/app/time/TimeConfiguration;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeCapabilities;

    iput-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    .line 58
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeConfiguration;

    iput-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    .line 59
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 63
    const-class v0, Landroid/app/time/TimeCapabilities;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeCapabilities;

    .line 64
    .local v0, "capabilities":Landroid/app/time/TimeCapabilities;
    const-class v2, Landroid/app/time/TimeConfiguration;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/time/TimeConfiguration;

    .line 65
    .local v1, "configuration":Landroid/app/time/TimeConfiguration;
    new-instance v2, Landroid/app/time/TimeCapabilitiesAndConfig;

    invoke-direct {v2, v0, v1}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 98
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 99
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 100
    .local v2, "that":Landroid/app/time/TimeCapabilitiesAndConfig;
    iget-object v3, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    iget-object v4, v2, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {v3, v4}, Landroid/app/time/TimeCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    iget-object v4, v2, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    .line 101
    invoke-virtual {v3, v4}, Landroid/app/time/TimeConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 100
    :goto_2b
    return v0

    .line 98
    .end local v2    # "that":Landroid/app/time/TimeCapabilitiesAndConfig;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist getCapabilities()Landroid/app/time/TimeCapabilities;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    return-object v0
.end method

.method public whitelist getConfiguration()Landroid/app/time/TimeConfiguration;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 106
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCapabilitiesAndConfig{mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

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

    .line 70
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
