.class Landroid/provider/MediaCognitionProcessingRequest$1;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaCognitionProcessingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/MediaCognitionProcessingRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/MediaCognitionProcessingRequest;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "processingCombination":I
    new-instance v2, Landroid/provider/MediaCognitionProcessingRequest$Builder;

    invoke-direct {v2, v0}, Landroid/provider/MediaCognitionProcessingRequest$Builder;-><init>(Landroid/net/Uri;)V

    .line 153
    invoke-virtual {v2, v1}, Landroid/provider/MediaCognitionProcessingRequest$Builder;->setProcessingCombination(I)Landroid/provider/MediaCognitionProcessingRequest$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Landroid/provider/MediaCognitionProcessingRequest$Builder;->build()Landroid/provider/MediaCognitionProcessingRequest;

    move-result-object v2

    .line 152
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Landroid/provider/MediaCognitionProcessingRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/MediaCognitionProcessingRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/MediaCognitionProcessingRequest;
    .registers 3
    .param p1, "size"    # I

    .line 159
    new-array v0, p1, [Landroid/provider/MediaCognitionProcessingRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Landroid/provider/MediaCognitionProcessingRequest$1;->newArray(I)[Landroid/provider/MediaCognitionProcessingRequest;

    move-result-object p1

    return-object p1
.end method
