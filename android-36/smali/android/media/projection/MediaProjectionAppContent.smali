.class public final Landroid/media/projection/MediaProjectionAppContent;
.super Ljava/lang/Object;
.source "MediaProjectionAppContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionAppContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mThumbnail:Landroid/graphics/Bitmap;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/media/projection/MediaProjectionAppContent$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionAppContent$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionAppContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "id"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "thumbnail can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mThumbnail:Landroid/graphics/Bitmap;

    .line 56
    const-string v0, "title can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mTitle:Ljava/lang/CharSequence;

    .line 57
    iput p3, p0, Landroid/media/projection/MediaProjectionAppContent;->mId:I

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mThumbnail:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mId:I

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/projection/MediaProjectionAppContent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjectionAppContent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mId:I

    return v0
.end method

.method public blacklist getThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 100
    iget v0, p0, Landroid/media/projection/MediaProjectionAppContent;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
