.class public final Landroid/provider/MediaCognitionProcessingRequest;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaCognitionProcessingRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/MediaCognitionProcessingRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mProcessingCombination:I

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/provider/MediaCognitionProcessingRequest$1;

    invoke-direct {v0}, Landroid/provider/MediaCognitionProcessingRequest$1;-><init>()V

    sput-object v0, Landroid/provider/MediaCognitionProcessingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/provider/MediaCognitionProcessingRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/provider/MediaCognitionProcessingRequest$Builder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/provider/MediaCognitionProcessingRequest$Builder;->-$$Nest$fgetmUri(Landroid/provider/MediaCognitionProcessingRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mUri:Landroid/net/Uri;

    .line 49
    invoke-static {p1}, Landroid/provider/MediaCognitionProcessingRequest$Builder;->-$$Nest$fgetmProcessingCombination(Landroid/provider/MediaCognitionProcessingRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mProcessingCombination:I

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/provider/MediaCognitionProcessingRequest$Builder;Landroid/provider/MediaCognitionProcessingRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/provider/MediaCognitionProcessingRequest;-><init>(Landroid/provider/MediaCognitionProcessingRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist checkProcessingRequired(I)Z
    .registers 3
    .param p1, "processingType"    # I

    .line 113
    iget v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mProcessingCombination:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProcessingCombination()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mProcessingCombination:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Landroid/provider/MediaCognitionProcessingRequest;->mProcessingCombination:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
