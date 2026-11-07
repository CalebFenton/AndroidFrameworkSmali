.class Landroid/widget/Spinner$SavedState;
.super Landroid/widget/AbsSpinner$SavedState;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/Spinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o showDropdown:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 972
    new-instance v0, Landroid/widget/Spinner$SavedState$1;

    invoke-direct {v0}, Landroid/widget/Spinner$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/Spinner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 962
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 964
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/Spinner-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 958
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 959
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 968
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 969
    iget-boolean v0, p0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 970
    return-void
.end method
