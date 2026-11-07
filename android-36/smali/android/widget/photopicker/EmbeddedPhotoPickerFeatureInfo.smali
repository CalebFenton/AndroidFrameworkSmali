.class public final Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerFeatureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccentColor:J

.field private final blacklist mMaxSelectionLimit:I

.field private final blacklist mMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOrderedSelection:Z

.field private final blacklist mPreSelectedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mThemeNightMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 301
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$1;

    invoke-direct {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$1;-><init>()V

    sput-object v0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 275
    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMimeTypes:Ljava/util/List;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mAccentColor:J

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mOrderedSelection:Z

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMaxSelectionLimit:I

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "preSelectedUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 281
    iput-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mPreSelectedUris:Ljava/util/List;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mThemeNightMode:I

    .line 283
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;JZILjava/util/List;I)V
    .registers 8
    .param p2, "accentColor"    # J
    .param p4, "orderedSelection"    # Z
    .param p5, "maxSelectionLimit"    # I
    .param p7, "themeNightMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZI",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 72
    .local p1, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "preSelectedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMimeTypes:Ljava/util/List;

    .line 74
    iput-wide p2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mAccentColor:J

    .line 75
    iput-boolean p4, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mOrderedSelection:Z

    .line 76
    iput p5, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMaxSelectionLimit:I

    .line 77
    iput-object p6, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mPreSelectedUris:Ljava/util/List;

    .line 78
    iput p7, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mThemeNightMode:I

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;JZILjava/util/List;ILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;-><init>(Ljava/util/List;JZILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccentColor()J
    .registers 3

    .line 92
    iget-wide v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mAccentColor:J

    return-wide v0
.end method

.method public whitelist getMaxSelectionLimit()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMaxSelectionLimit:I

    return v0
.end method

.method public whitelist getMimeTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPreSelectedUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mPreSelectedUris:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getThemeNightMode()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mThemeNightMode:I

    return v0
.end method

.method public whitelist isOrderedSelection()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mOrderedSelection:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmbeddedPhotoPickerFeatureInfo{mMimeTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMimeTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mAccentColor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderedSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mOrderedSelection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxSelectionLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMaxSelectionLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreSelectedUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mPreSelectedUris:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThemeNightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mThemeNightMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMimeTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 288
    iget-wide v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mAccentColor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mOrderedSelection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    iget v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mMaxSelectionLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mPreSelectedUris:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 292
    iget v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;->mThemeNightMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return-void
.end method
