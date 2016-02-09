.class public Landroid/media/MediaDescription;
.super Ljava/lang/Object;
.source "MediaDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDescription$Builder;,
        Landroid/media/MediaDescription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field private final mMediaId:Ljava/lang/String;

.field private final mMediaUri:Landroid/net/Uri;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 166
    new-instance v0, Landroid/media/MediaDescription$1;

    #@2
    invoke-direct {v0}, Landroid/media/MediaDescription$1;-><init>()V

    #@5
    .line 165
    sput-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    #@a
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    #@10
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    #@16
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    #@1c
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/graphics/Bitmap;

    #@22
    iput-object v0, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    #@24
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/net/Uri;

    #@2a
    iput-object v0, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    #@2c
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    #@32
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Landroid/net/Uri;

    #@38
    iput-object v0, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    #@3a
    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaDescription;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaDescription;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "subtitle"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "iconUri"    # Landroid/net/Uri;
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "mediaUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    #@5
    .line 52
    iput-object p2, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    #@7
    .line 53
    iput-object p3, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    #@9
    .line 54
    iput-object p4, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    #@b
    .line 55
    iput-object p5, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    #@d
    .line 56
    iput-object p6, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    #@f
    .line 57
    iput-object p7, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    #@11
    .line 58
    iput-object p8, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    #@13
    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "subtitle"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "iconUri"    # Landroid/net/Uri;
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "mediaUri"    # Landroid/net/Uri;

    #@0
    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMediaUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ", "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ", "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 151
    iget-object v0, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a
    .line 152
    iget-object v0, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@f
    .line 153
    iget-object v0, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@14
    .line 154
    iget-object v0, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    #@16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 155
    iget-object v0, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    #@1b
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1e
    .line 156
    iget-object v0, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@23
    .line 157
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    #@25
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@28
    .line 149
    return-void
.end method
