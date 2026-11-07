.class public final Landroid/media/SuggestedDeviceInfo;
.super Ljava/lang/Object;
.source "SuggestedDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SuggestedDeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeviceDisplayName:Ljava/lang/String;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mRouteId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/media/SuggestedDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/SuggestedDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/SuggestedDeviceInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/SuggestedDeviceInfo$Builder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmDeviceDisplayName(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmRouteId(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmType(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    .line 66
    invoke-static {p1}, Landroid/media/SuggestedDeviceInfo$Builder;->-$$Nest$fgetmExtras(Landroid/media/SuggestedDeviceInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/SuggestedDeviceInfo$Builder;Landroid/media/SuggestedDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/SuggestedDeviceInfo;-><init>(Landroid/media/SuggestedDeviceInfo$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/SuggestedDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/SuggestedDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 132
    return v0

    .line 134
    :cond_4
    instance-of v1, p1, Landroid/media/SuggestedDeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 135
    return v2

    .line 137
    :cond_a
    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroid/media/SuggestedDeviceInfo;

    iget-object v3, v3, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Landroid/media/SuggestedDeviceInfo;

    iget-object v3, v3, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    .line 138
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    move-object v3, p1

    check-cast v3, Landroid/media/SuggestedDeviceInfo;

    iget v3, v3, Landroid/media/SuggestedDeviceInfo;->mType:I

    if-ne v1, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 137
    :goto_2f
    return v0
.end method

.method public blacklist getDeviceDisplayName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getRouteId()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 144
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    iget v2, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mDeviceDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mRouteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/media/SuggestedDeviceInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
