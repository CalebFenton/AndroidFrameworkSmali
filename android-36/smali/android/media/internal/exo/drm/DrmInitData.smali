.class public final Landroid/media/internal/exo/drm/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/drm/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/media/internal/exo/drm/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist hashCode:I

.field public final blacklist schemeDataCount:I

.field private final blacklist schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

.field public final blacklist schemeType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 223
    new-instance v0, Landroid/media/internal/exo/drm/DrmInitData$1;

    invoke-direct {v0}, Landroid/media/internal/exo/drm/DrmInitData$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/drm/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 134
    sget-object v0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    iput-object p1, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    .line 135
    array-length p1, p1

    iput p1, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDataCount:I

    return-void
.end method

.method private varargs constructor blacklist <init>(Ljava/lang/String;Z[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 123
    invoke-virtual {p3}, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    .line 125
    :cond_e
    iput-object p3, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    .line 126
    array-length p1, p3

    iput p1, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDataCount:I

    .line 129
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor blacklist <init>(Ljava/lang/String;[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V
    .registers 4

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, v0, p2}, Landroid/media/internal/exo/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    new-array v1, v0, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Landroid/media/internal/exo/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V

    return-void
.end method

.method public varargs constructor blacklist <init>([Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V
    .registers 3

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, p1}, Landroid/media/internal/exo/drm/DrmInitData;-><init>(Ljava/lang/String;[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/media/internal/exo/drm/DrmInitData$SchemeData;Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)I
    .registers 4

    .line 205
    sget-object p0, Landroid/media/internal/exo/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v0, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    iget-object p1, p2, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0

    .line 207
    :cond_16
    iget-object p0, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object p1, p2, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 33
    check-cast p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    check-cast p2, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/drm/DrmInitData;->compare(Landroid/media/internal/exo/drm/DrmInitData$SchemeData;Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)I

    move-result p0

    return p0
.end method

.method public blacklist copyWithSchemeType(Ljava/lang/String;)Landroid/media/internal/exo/drm/DrmInitData;
    .registers 4

    .line 155
    iget-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 158
    :cond_9
    new-instance v0, Landroid/media/internal/exo/drm/DrmInitData;

    const/4 v1, 0x0

    iget-object p0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, p0}, Landroid/media/internal/exo/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 195
    const-class v2, Landroid/media/internal/exo/drm/DrmInitData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    .line 198
    :cond_10
    check-cast p1, Landroid/media/internal/exo/drm/DrmInitData;

    .line 199
    iget-object v2, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object p0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    iget-object p1, p1, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    .line 200
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist get(I)Landroid/media/internal/exo/drm/DrmInitData$SchemeData;
    .registers 2

    .line 145
    iget-object p0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 182
    iget v0, p0, Landroid/media/internal/exo/drm/DrmInitData;->hashCode:I

    if-nez v0, :cond_19

    .line 183
    iget-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget-object v1, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    iput v0, p0, Landroid/media/internal/exo/drm/DrmInitData;->hashCode:I

    .line 187
    :cond_19
    iget p0, p0, Landroid/media/internal/exo/drm/DrmInitData;->hashCode:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 219
    iget-object p2, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Landroid/media/internal/exo/drm/DrmInitData;->schemeDatas:[Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
