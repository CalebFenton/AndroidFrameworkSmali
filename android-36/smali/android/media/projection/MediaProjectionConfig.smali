.class public final Landroid/media/projection/MediaProjectionConfig;
.super Ljava/lang/Object;
.source "MediaProjectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionConfig$Builder;,
        Landroid/media/projection/MediaProjectionConfig$MediaProjectionSource;,
        Landroid/media/projection/MediaProjectionConfig$CaptureRegion;
    }
.end annotation


# static fields
.field public static final blacklist CAPTURE_REGION_FIXED_DISPLAY:I = 0x1

.field public static final blacklist CAPTURE_REGION_USER_CHOICE:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_PROJECTION_SOURCES:I = 0xa

.field private static final blacklist PROJECTION_SOURCES:[I

.field private static final blacklist PROJECTION_SOURCES_STRING:[Ljava/lang/String;

.field public static final blacklist PROJECTION_SOURCE_APP:I = 0x8

.field public static final blacklist PROJECTION_SOURCE_APP_CONTENT:I = 0x10

.field public static final blacklist PROJECTION_SOURCE_DISPLAY:I = 0x2

.field public static final blacklist PROJECTION_SOURCE_DISPLAY_REGION:I = 0x4

.field private static final blacklist VALID_PROJECTION_SOURCES:I


# instance fields
.field private final blacklist mDisplayToCapture:I

.field private final blacklist mInitialSelection:I

.field private final blacklist mProjectionSources:I

.field private blacklist mRegionToCapture:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mRequesterHint:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPROJECTION_SOURCES()[I
    .registers 1

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVALID_PROJECTION_SOURCES()I
    .registers 1

    sget v0, Landroid/media/projection/MediaProjectionConfig;->VALID_PROJECTION_SOURCES:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprojectionSourceToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/media/projection/MediaProjectionConfig;->projectionSourceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 92
    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    .line 97
    const-string v0, "PROJECTION_SOURCE_APP"

    const-string v1, "PROJECTION_SOURCE_APP_CONTENT"

    const-string v2, "PROJECTION_SOURCE_DISPLAY"

    const-string v3, "PROJECTION_SOURCE_DISPLAY_REGION"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    .line 101
    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->createValidSourcesMask()I

    move-result v0

    sput v0, Landroid/media/projection/MediaProjectionConfig;->VALID_PROJECTION_SOURCES:I

    .line 357
    new-instance v0, Landroid/media/projection/MediaProjectionConfig$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 4
    .param p1, "captureRegion"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 158
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 163
    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 164
    return-void

    .line 155
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Flag FLAG_APP_CONTENT_SHARING enabled. This method must not be called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(ILjava/lang/String;II)V
    .registers 7
    .param p1, "projectionSource"    # I
    .param p2, "requesterHint"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "initialSelection"    # I

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 175
    if-nez p1, :cond_10

    .line 176
    const/16 v0, 0xa

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    goto :goto_12

    .line 178
    :cond_10
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 180
    :goto_12
    iput-object p2, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 181
    iput p3, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 182
    iput p4, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 183
    return-void

    .line 172
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Flag FLAG_APP_CONTENT_SHARING disabled. This method must not be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;IILandroid/media/projection/MediaProjectionConfig-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/projection/MediaProjectionConfig;-><init>(ILjava/lang/String;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 345
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    goto :goto_30

    .line 350
    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 353
    iput v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 355
    :goto_30
    return-void
.end method

.method private static blacklist captureRegionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    packed-switch p0, :pswitch_data_e

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 225
    :pswitch_8
    const-string v0, "CAPTURE_REGION_GIVEN_DISPLAY"

    goto :goto_d

    .line 224
    :pswitch_b
    const-string v0, "CAPTURE_REGION_USERS_CHOICE"

    .line 223
    :goto_d
    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static whitelist createConfigForDefaultDisplay()Landroid/media/projection/MediaProjectionConfig;
    .registers 3

    .line 190
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 191
    new-instance v0, Landroid/media/projection/MediaProjectionConfig$Builder;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/media/projection/MediaProjectionConfig$Builder;->setSourceEnabled(IZ)Landroid/media/projection/MediaProjectionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;->build()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    return-object v0

    .line 193
    :cond_16
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    invoke-direct {v0, v1}, Landroid/media/projection/MediaProjectionConfig;-><init>(I)V

    return-object v0
.end method

.method public static whitelist createConfigForUserChoice()Landroid/media/projection/MediaProjectionConfig;
    .registers 2

    .line 210
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 211
    new-instance v0, Landroid/media/projection/MediaProjectionConfig$Builder;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionConfig$Builder;->build()Landroid/media/projection/MediaProjectionConfig;

    move-result-object v0

    return-object v0

    .line 213
    :cond_10
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/projection/MediaProjectionConfig;-><init>(I)V

    return-object v0
.end method

.method private static blacklist createValidSourcesMask()I
    .registers 5

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "validSources":I
    sget-object v1, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_d

    aget v4, v1, v3

    .line 410
    .local v4, "projectionSource":I
    or-int/2addr v0, v4

    .line 409
    .end local v4    # "projectionSource":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 412
    :cond_d
    return v0
.end method

.method private static blacklist projectionSourceToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_27

    .line 237
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    aget v2, v2, v1

    and-int/2addr v2, p0

    if-lez v2, :cond_24

    .line 238
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES_STRING:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    sget-object v2, Landroid/media/projection/MediaProjectionConfig;->PROJECTION_SOURCES:[I

    aget v2, v2, v1

    not-int v2, v2

    and-int/2addr p0, v2

    .line 236
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 243
    .end local v1    # "i":I
    :cond_27
    if-lez p0, :cond_35

    .line 244
    const-string v1, "Unknown projection sources: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 298
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 299
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_49

    .line 300
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/projection/MediaProjectionConfig;

    .line 301
    .local v2, "that":Landroid/media/projection/MediaProjectionConfig;
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 302
    iget v3, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iget v4, v2, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    iget v4, v2, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    iget v4, v2, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    .line 305
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 302
    :goto_39
    return v0

    .line 307
    :cond_3a
    iget v3, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    iget v4, v2, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    if-ne v3, v4, :cond_47

    iget v3, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    iget v4, v2, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    if-ne v3, v4, :cond_47

    goto :goto_48

    :cond_47
    move v0, v1

    :goto_48
    return v0

    .line 299
    .end local v2    # "that":Landroid/media/projection/MediaProjectionConfig;
    :cond_49
    :goto_49
    return v1
.end method

.method public blacklist getDisplayToCapture()I
    .registers 2

    .line 272
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    return v0
.end method

.method public blacklist getInitiallySelectedSource()I
    .registers 2

    .line 387
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    return v0
.end method

.method public blacklist getProjectionSources()I
    .registers 2

    .line 293
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    return v0
.end method

.method public blacklist getRegionToCapture()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    return v0
.end method

.method public blacklist getRequesterHint()Ljava/lang/CharSequence;
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 314
    const/4 v0, 0x1

    .line 315
    .local v0, "_hash":I
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 316
    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 319
    :cond_24
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    add-int/2addr v1, v2

    .line 320
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    add-int/2addr v0, v2

    .line 322
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public blacklist isSourceEnabled(I)Z
    .registers 3
    .param p1, "projectionSource"    # I

    .line 378
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 252
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 253
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-static {v2}, Landroid/media/projection/MediaProjectionConfig;->projectionSourceToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 254
    const-string v1, "MediaProjectionConfig{mInitialSelection=%d, mDisplayToCapture=%d, mProjectionSource=%s, mRequesterHint=\'%s\'}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    return-object v0

    .line 258
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaProjectionConfig { displayToCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionToCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    .line 259
    invoke-static {v1}, Landroid/media/projection/MediaProjectionConfig;->captureRegionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 327
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mDisplayToCapture:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-static {}, Lcom/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 329
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mProjectionSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRequesterHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mInitialSelection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 333
    :cond_1b
    iget v0, p0, Landroid/media/projection/MediaProjectionConfig;->mRegionToCapture:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    :goto_20
    return-void
.end method
