.class public final Landroid/provider/MediaCognitionProcessingVersions;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingVersions.java"

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
            "Landroid/provider/MediaCognitionProcessingVersions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mProcessingVersions:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Landroid/provider/MediaCognitionProcessingVersions$1;

    invoke-direct {v0}, Landroid/provider/MediaCognitionProcessingVersions$1;-><init>()V

    sput-object v0, Landroid/provider/MediaCognitionProcessingVersions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-class v0, Landroid/provider/MediaCognitionService$ProcessingTypes;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    .line 58
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 59
    return-void
.end method

.method constructor blacklist <init>([I)V
    .registers 2
    .param p1, "processingVersions"    # [I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    .line 51
    return-void
.end method

.method private blacklist checkProcessingTypeCorrectness(II)Z
    .registers 5
    .param p1, "processingType"    # I
    .param p2, "index"    # I

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    array-length v0, v0

    if-lt p2, v0, :cond_d

    goto :goto_e

    .line 98
    :cond_d
    return v1

    .line 96
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProcessingVersion(I)I
    .registers 5
    .param p1, "processingType"    # I

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 87
    .local v0, "index":I
    invoke-direct {p0, p1, v0}, Landroid/provider/MediaCognitionProcessingVersions;->checkProcessingTypeCorrectness(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 90
    iget-object v1, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    aget v1, v1, v0

    return v1

    .line 88
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong Processing Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setProcessingVersion(II)V
    .registers 6
    .param p1, "processingType"    # I
    .param p2, "version"    # I

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 72
    .local v0, "index":I
    invoke-direct {p0, p1, v0}, Landroid/provider/MediaCognitionProcessingVersions;->checkProcessingTypeCorrectness(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 75
    iget-object v1, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    aput p2, v1, v0

    .line 76
    return-void

    .line 73
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong Processing Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingVersions;->mProcessingVersions:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 114
    return-void
.end method
