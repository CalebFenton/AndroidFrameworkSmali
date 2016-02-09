.class public Landroid/media/tv/TvStreamConfig;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvStreamConfig$Builder;,
        Landroid/media/tv/TvStreamConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_TYPE_BUFFER_PRODUCER:I = 0x2

.field public static final STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE:I = 0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mGeneration:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mStreamId:I

.field private mType:I


# direct methods
.method static synthetic -set0(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    const-class v0, Landroid/media/tv/TvStreamConfig;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    #@8
    .line 46
    new-instance v0, Landroid/media/tv/TvStreamConfig$1;

    #@a
    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$1;-><init>()V

    #@d
    .line 45
    sput-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvStreamConfig;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvStreamConfig;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 167
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 168
    :cond_0
    instance-of v2, p1, Landroid/media/tv/TvStreamConfig;

    #@6
    if-nez v2, :cond_1

    #@8
    return v1

    #@9
    :cond_1
    move-object v0, p1

    #@a
    .line 170
    check-cast v0, Landroid/media/tv/TvStreamConfig;

    #@c
    .line 171
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    #@e
    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    #@10
    if-ne v2, v3, :cond_2

    #@12
    .line 172
    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    #@14
    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    #@16
    if-ne v2, v3, :cond_2

    #@18
    .line 173
    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mType:I

    #@1a
    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    #@1c
    if-ne v2, v3, :cond_2

    #@1e
    .line 174
    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    #@20
    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    #@22
    if-ne v2, v3, :cond_2

    #@24
    .line 175
    iget v2, v0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    #@26
    iget v3, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    #@28
    if-ne v2, v3, :cond_2

    #@2a
    const/4 v1, 0x1

    #@2b
    .line 171
    :cond_2
    return v1
.end method

.method public getGeneration()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    #@2
    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    #@2
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getStreamId()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "TvStreamConfig {mStreamId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ";"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, "mType="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, ";mGeneration="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 93
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    #@2f
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 93
    const-string/jumbo v1, "}"

    #@36
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 105
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 106
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 107
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 108
    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 103
    return-void
.end method
