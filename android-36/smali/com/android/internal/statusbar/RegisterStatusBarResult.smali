.class public final Lcom/android/internal/statusbar/RegisterStatusBarResult;
.super Ljava/lang/Object;
.source "RegisterStatusBarResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/RegisterStatusBarResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAppearance:I

.field public final blacklist mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public final blacklist mBehavior:I

.field public final blacklist mDisabledFlags1:I

.field public final blacklist mDisabledFlags2:I

.field public final blacklist mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mImeBackDisposition:I

.field public final blacklist mImeWindowVis:I

.field public final blacklist mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public final blacklist mNavbarColorManagedByIme:Z

.field public final blacklist mPackageName:Ljava/lang/String;

.field public final blacklist mRequestedVisibleTypes:I

.field public final blacklist mShowImeSwitcher:Z

.field public final blacklist mTransientBarTypes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZIZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .registers 16
    .param p2, "disabledFlags1"    # I
    .param p3, "appearance"    # I
    .param p4, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p5, "imeWindowVis"    # I
    .param p6, "imeBackDisposition"    # I
    .param p7, "showImeSwitcher"    # Z
    .param p8, "disabledFlags2"    # I
    .param p9, "navbarColorManagedByIme"    # Z
    .param p10, "behavior"    # I
    .param p11, "requestedVisibleTypes"    # I
    .param p12, "packageName"    # Ljava/lang/String;
    .param p13, "transientBarTypes"    # I
    .param p14, "letterboxDetails"    # [Lcom/android/internal/statusbar/LetterboxDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;II[",
            "Lcom/android/internal/view/AppearanceRegion;",
            "IIZIZII",
            "Ljava/lang/String;",
            "I[",
            "Lcom/android/internal/statusbar/LetterboxDetails;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    .line 55
    iput p2, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    .line 56
    iput p3, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    .line 57
    iput-object p4, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 58
    iput p5, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    .line 59
    iput p6, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    .line 60
    iput-boolean p7, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    .line 61
    iput p8, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    .line 62
    iput-boolean p9, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    .line 63
    iput p10, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mBehavior:I

    .line 64
    iput p11, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mRequestedVisibleTypes:I

    .line 65
    iput-object p12, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mPackageName:Ljava/lang/String;

    .line 66
    iput p13, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:I

    .line 67
    iput-object p14, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 78
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 81
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mDisabledFlags2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mNavbarColorManagedByIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mRequestedVisibleTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mTransientBarTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
