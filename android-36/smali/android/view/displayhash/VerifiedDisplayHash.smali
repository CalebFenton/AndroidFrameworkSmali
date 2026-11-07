.class public final Landroid/view/displayhash/VerifiedDisplayHash;
.super Ljava/lang/Object;
.source "VerifiedDisplayHash.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/displayhash/VerifiedDisplayHash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private final blacklist mHashAlgorithm:Ljava/lang/String;

.field private final blacklist mImageHash:[B

.field private final blacklist mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 223
    new-instance v0, Landroid/view/displayhash/VerifiedDisplayHash$1;

    invoke-direct {v0}, Landroid/view/displayhash/VerifiedDisplayHash$1;-><init>()V

    sput-object v0, Landroid/view/displayhash/VerifiedDisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JLandroid/graphics/Rect;Ljava/lang/String;[B)V
    .registers 10
    .param p1, "timeMillis"    # J
    .param p3, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p4, "hashAlgorithm"    # Ljava/lang/String;
    .param p5, "imageHash"    # [B

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    .line 116
    const-class v0, Landroid/annotation/CurrentTimeMillisLong;

    iget-wide v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 118
    iput-object p3, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 119
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 121
    iput-object p4, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    .line 122
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 124
    iput-object p5, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    .line 125
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 202
    .local v0, "timeMillis":J
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 203
    .local v2, "boundsInWindow":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "hashAlgorithm":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 206
    .local v4, "imageHash":[B
    iput-wide v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    .line 207
    const-class v5, Landroid/annotation/CurrentTimeMillisLong;

    iget-wide v6, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 209
    iput-object v2, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 210
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-static {v5, v8, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    iput-object v3, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    .line 213
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-static {v5, v8, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 215
    iput-object v4, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    .line 216
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    invoke-static {v5, v8, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    return-void
.end method

.method private blacklist byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p1, "byteArray"    # [B

    .line 61
    if-nez p1, :cond_5

    .line 62
    const-string v0, "null"

    return-object v0

    .line 64
    :cond_5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 65
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 66
    const-string v1, "[]"

    return-object v1

    .line 69
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "i":I
    :goto_19
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "formatted":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    if-ne v2, v0, :cond_3b

    .line 75
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 77
    :cond_3b
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v3    # "formatted":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method private blacklist imageHashToString()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    invoke-direct {p0, v0}, Landroid/view/displayhash/VerifiedDisplayHash;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBoundsInWindow()Landroid/graphics/Rect;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getHashAlgorithm()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImageHash()[B
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    return-object v0
.end method

.method public whitelist getTimeMillis()J
    .registers 3

    .line 136
    iget-wide v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifiedDisplayHash { timeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashAlgorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageHash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-direct {p0}, Landroid/view/displayhash/VerifiedDisplayHash;->imageHashToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget-wide v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 188
    return-void
.end method
