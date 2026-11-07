.class public final Landroid/service/voice/VisualQueryDetectedResult;
.super Ljava/lang/Object;
.source "VisualQueryDetectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryDetectedResult$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisualQueryDetectedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessibilityDetectionData:[B

.field private final blacklist mPartialQuery:Ljava/lang/String;

.field private final blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAccessibilityDetectionData()[B
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultAccessibilityDetectionData()[B

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultPartialQuery()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultPartialQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSpeakerId()I
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->defaultSpeakerId()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 255
    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisualQueryDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "partialQuery":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .local v1, "speakerId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 244
    .local v2, "accessibilityDetectionData":[B
    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    .line 245
    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 247
    iput v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    .line 248
    iput-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    .line 250
    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult;->onConstructed()V

    .line 251
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I[B)V
    .registers 7
    .param p1, "partialQuery"    # Ljava/lang/String;
    .param p2, "speakerId"    # I
    .param p3, "accessibilityDetectionData"    # [B

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    .line 133
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 135
    iput p2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    .line 136
    iput-object p3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    .line 138
    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult;->onConstructed()V

    .line 139
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    return-void
.end method

.method private static blacklist defaultAccessibilityDetectionData()[B
    .registers 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultPartialQuery()Ljava/lang/String;
    .registers 1

    .line 54
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist defaultSpeakerId()I
    .registers 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxSpeakerId()I
    .registers 1

    .line 68
    const/16 v0, 0xf

    return v0
.end method

.method private blacklist onConstructed()V
    .registers 5

    .line 88
    iget v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->getMaxSpeakerId()I

    move-result v1

    const-string/jumbo v2, "speakerId"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .registers 3

    .line 97
    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;-><init>()V

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setPartialQuery(Ljava/lang/String;)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    .line 99
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setSpeakerId(I)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    .line 100
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->setAccessibilityDetectionData([B)Landroid/service/voice/VisualQueryDetectedResult$Builder;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 193
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 195
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/VisualQueryDetectedResult;

    .line 197
    .local v2, "that":Landroid/service/voice/VisualQueryDetectedResult;
    iget-object v3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    .line 198
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    iget v4, v2, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    iget-object v4, v2, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    .line 200
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 197
    :goto_31
    return v0

    .line 193
    .end local v2    # "that":Landroid/service/voice/VisualQueryDetectedResult;
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getAccessibilityDetectionData()[B
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    return-object v0
.end method

.method public whitelist getPartialQuery()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSpeakerId()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    add-int/2addr v0, v2

    .line 212
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 213
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualQueryDetectedResult { partialQuery = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speakerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessibilityDetectionData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    .line 181
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 223
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mPartialQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mSpeakerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult;->mAccessibilityDetectionData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 226
    return-void
.end method
