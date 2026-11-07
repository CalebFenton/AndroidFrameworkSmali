.class public Landroid/media/tv/TvStreamConfig;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvStreamConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STREAM_TYPE_BUFFER_PRODUCER:I = 0x2

.field public static final whitelist STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE:I = 0x1

.field static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mGeneration:I

.field private greylist-max-o mMaxHeight:I

.field private greylist-max-o mMaxWidth:I

.field private greylist-max-o mStreamId:I

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmGeneration(Landroid/media/tv/TvStreamConfig;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxHeight(Landroid/media/tv/TvStreamConfig;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxWidth(Landroid/media/tv/TvStreamConfig;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStreamId(Landroid/media/tv/TvStreamConfig;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/media/tv/TvStreamConfig;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/media/tv/TvStreamConfig$1;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvStreamConfig-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/TvStreamConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 173
    :cond_4
    instance-of v1, p1, Landroid/media/tv/TvStreamConfig;

    if-nez v1, :cond_9

    return v0

    .line 175
    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/media/tv/TvStreamConfig;

    .line 176
    .local v1, "config":Landroid/media/tv/TvStreamConfig;
    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    if-ne v2, v3, :cond_2b

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    if-ne v2, v3, :cond_2b

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mType:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    if-ne v2, v3, :cond_2b

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    if-ne v2, v3, :cond_2b

    iget v2, v1, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    if-ne v2, v3, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public whitelist getGeneration()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return v0
.end method

.method public whitelist getMaxHeight()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return v0
.end method

.method public whitelist getStreamId()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 185
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvStreamConfig {mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mGeneration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
