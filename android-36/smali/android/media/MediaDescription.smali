.class public Landroid/media/MediaDescription;
.super Ljava/lang/Object;
.source "MediaDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDescription$Builder;
    }
.end annotation


# static fields
.field public static final whitelist BT_FOLDER_TYPE_ALBUMS:J = 0x2L

.field public static final whitelist BT_FOLDER_TYPE_ARTISTS:J = 0x3L

.field public static final whitelist BT_FOLDER_TYPE_GENRES:J = 0x4L

.field public static final whitelist BT_FOLDER_TYPE_MIXED:J = 0x0L

.field public static final whitelist BT_FOLDER_TYPE_PLAYLISTS:J = 0x5L

.field public static final whitelist BT_FOLDER_TYPE_TITLES:J = 0x1L

.field public static final whitelist BT_FOLDER_TYPE_YEARS:J = 0x6L

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.extra.BT_FOLDER_TYPE"


# instance fields
.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIcon:Landroid/graphics/Bitmap;

.field private final greylist-max-o mIconUri:Landroid/net/Uri;

.field private final greylist-max-o mMediaId:Ljava/lang/String;

.field private final greylist-max-o mMediaUri:Landroid/net/Uri;

.field private final greylist-max-o mSubtitle:Ljava/lang/CharSequence;

.field private final greylist-max-o mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Landroid/media/MediaDescription$1;

    invoke-direct {v0}, Landroid/media/MediaDescription$1;-><init>()V

    sput-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    .line 142
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    .line 143
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    .line 144
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    .line 145
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 146
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    .line 148
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    .line 149
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/MediaDescription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .registers 9
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "subtitle"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "iconUri"    # Landroid/net/Uri;
    .param p7, "extras"    # Landroid/os/Bundle;
    .param p8, "mediaUri"    # Landroid/net/Uri;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    .line 132
    iput-object p3, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    .line 133
    iput-object p4, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    .line 134
    iput-object p5, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    .line 135
    iput-object p6, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    .line 136
    iput-object p7, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    .line 137
    iput-object p8, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 242
    return v0

    .line 245
    :cond_4
    instance-of v1, p1, Landroid/media/MediaDescription;

    if-nez v1, :cond_9

    .line 246
    return v0

    .line 249
    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/media/MediaDescription;

    .line 251
    .local v1, "d":Landroid/media/MediaDescription;
    iget-object v2, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 252
    return v0

    .line 255
    :cond_1f
    iget-object v2, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 256
    return v0

    .line 259
    :cond_32
    iget-object v2, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 260
    return v0

    .line 263
    :cond_45
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIconBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getIconUri()Landroid/net/Uri;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getMediaId()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMediaUri()Landroid/net/Uri;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 229
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Landroid/media/MediaDescription;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 231
    iget-object v0, p0, Landroid/media/MediaDescription;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 232
    iget-object v0, p0, Landroid/media/MediaDescription;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 233
    iget-object v0, p0, Landroid/media/MediaDescription;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v0, p0, Landroid/media/MediaDescription;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 235
    iget-object v0, p0, Landroid/media/MediaDescription;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Landroid/media/MediaDescription;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 237
    return-void
.end method
