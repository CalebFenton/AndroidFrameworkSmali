.class Landroid/provider/MediaCognitionProcessingVersions$1;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingVersions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaCognitionProcessingVersions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/MediaCognitionProcessingVersions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/MediaCognitionProcessingVersions;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 121
    const-class v0, Landroid/provider/MediaCognitionService$ProcessingTypes;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    .line 123
    .local v0, "processingVersions":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 124
    new-instance v1, Landroid/provider/MediaCognitionProcessingVersions;

    invoke-direct {v1, v0}, Landroid/provider/MediaCognitionProcessingVersions;-><init>([I)V

    return-object v1
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

    .line 118
    invoke-virtual {p0, p1}, Landroid/provider/MediaCognitionProcessingVersions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/MediaCognitionProcessingVersions;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/MediaCognitionProcessingVersions;
    .registers 3
    .param p1, "size"    # I

    .line 129
    new-array v0, p1, [Landroid/provider/MediaCognitionProcessingVersions;

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

    .line 118
    invoke-virtual {p0, p1}, Landroid/provider/MediaCognitionProcessingVersions$1;->newArray(I)[Landroid/provider/MediaCognitionProcessingVersions;

    move-result-object p1

    return-object p1
.end method
