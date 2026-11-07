.class public final Landroid/media/quality/AmbientBacklightSettings;
.super Ljava/lang/Object;
.source "AmbientBacklightSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/AmbientBacklightSettings$Source;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/AmbientBacklightSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SOURCE_AUDIO:I = 0x1

.field public static final whitelist SOURCE_AUDIO_VIDEO:I = 0x3

.field public static final whitelist SOURCE_NONE:I = 0x0

.field public static final whitelist SOURCE_VIDEO:I = 0x2


# instance fields
.field private final blacklist mColorFormat:I

.field private final blacklist mHorizontalZonesNumber:I

.field private final blacklist mIsLetterboxOmitted:Z

.field private final blacklist mMaxFps:I

.field private final blacklist mSource:I

.field private final blacklist mThreshold:I

.field private final blacklist mVerticalZonesNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 209
    new-instance v0, Landroid/media/quality/AmbientBacklightSettings$1;

    invoke-direct {v0}, Landroid/media/quality/AmbientBacklightSettings$1;-><init>()V

    sput-object v0, Landroid/media/quality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIIZI)V
    .registers 8
    .param p1, "source"    # I
    .param p2, "maxFps"    # I
    .param p3, "colorFormat"    # I
    .param p4, "horizontalZonesNumber"    # I
    .param p5, "verticalZonesNumber"    # I
    .param p6, "isLetterboxOmitted"    # Z
    .param p7, "threshold"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    .line 110
    iput p2, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    .line 111
    iput p3, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    .line 112
    iput p4, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    .line 113
    iput p5, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    .line 114
    iput-boolean p6, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    .line 115
    iput p7, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    .line 116
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    .line 126
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/AmbientBacklightSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/AmbientBacklightSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getColorFormat()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    return v0
.end method

.method public whitelist getHorizontalZonesCount()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    return v0
.end method

.method public whitelist getMaxFps()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    return v0
.end method

.method public whitelist getSource()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    return v0
.end method

.method public whitelist getThreshold()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    return v0
.end method

.method public whitelist getVerticalZonesCount()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    return v0
.end method

.method public whitelist isLetterboxOmitted()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientBacklightSettings{Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MaxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ColorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HorizontalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VerticalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsLetterboxOmitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

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

    .line 195
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mMaxFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mColorFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mHorizontalZonesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mVerticalZonesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mIsLetterboxOmitted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    iget v0, p0, Landroid/media/quality/AmbientBacklightSettings;->mThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
