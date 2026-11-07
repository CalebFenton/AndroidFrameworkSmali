.class public final Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
.super Ljava/lang/Object;
.source "CinematicEffectResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;,
        Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$ImageContentType;,
        Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$CinematicEffectStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist CINEMATIC_EFFECT_STATUS_ANIMATION_FAILURE:I = 0xa

.field public static final whitelist CINEMATIC_EFFECT_STATUS_CONTENT_TARGET_ERROR:I = 0x8

.field public static final whitelist CINEMATIC_EFFECT_STATUS_CONTENT_TOO_FLAT:I = 0x9

.field public static final whitelist CINEMATIC_EFFECT_STATUS_CONTENT_UNSUPPORTED:I = 0x7

.field public static final whitelist CINEMATIC_EFFECT_STATUS_ERROR:I = 0x0

.field public static final whitelist CINEMATIC_EFFECT_STATUS_FEATURE_DISABLED:I = 0x5

.field public static final whitelist CINEMATIC_EFFECT_STATUS_IMAGE_FORMAT_NOT_SUITABLE:I = 0x6

.field public static final whitelist CINEMATIC_EFFECT_STATUS_NOT_READY:I = 0x2

.field public static final whitelist CINEMATIC_EFFECT_STATUS_OK:I = 0x1

.field public static final whitelist CINEMATIC_EFFECT_STATUS_PENDING:I = 0x3

.field public static final whitelist CINEMATIC_EFFECT_STATUS_TOO_MANY_REQUESTS:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IMAGE_CONTENT_TYPE_LANDSCAPE:I = 0x2

.field public static final whitelist IMAGE_CONTENT_TYPE_OTHER:I = 0x3

.field public static final whitelist IMAGE_CONTENT_TYPE_PEOPLE_PORTRAIT:I = 0x1

.field public static final whitelist IMAGE_CONTENT_TYPE_UNKNOWN:I


# instance fields
.field private blacklist mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private blacklist mImageContentType:I

.field private blacklist mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private blacklist mStatusCode:I

.field private blacklist mTaskId:Ljava/lang/String;

.field private blacklist mTexturedMeshes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 215
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "taskId"    # Ljava/lang/String;
    .param p3, "imageContentType"    # I
    .param p5, "startKeyFrame"    # Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .param p6, "endKeyFrame"    # Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            ")V"
        }
    .end annotation

    .line 160
    .local p4, "texturedMeshes":Ljava/util/List;, "Ljava/util/List<Landroid/app/wallpapereffectsgeneration/TexturedMesh;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    .line 162
    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    .line 163
    iput p3, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    .line 164
    iput-object p5, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 165
    iput-object p6, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 166
    iput-object p4, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    .line 167
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;-><init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    .line 150
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    sget-object v1, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 151
    sget-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 152
    sget-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 153
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 246
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 249
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 250
    .local v0, "that":Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 247
    .end local v0    # "that":Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndKeyFrame()Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-object v0
.end method

.method public whitelist getImageContentType()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    return v0
.end method

.method public whitelist getStartKeyFrame()Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    return v0
.end method

.method public whitelist getTaskId()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTexturedMeshes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 235
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mImageContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mTexturedMeshes:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 239
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 240
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 241
    return-void
.end method
