.class Landroid/preference/DialogPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/DialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/preference/DialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o dialogBundle:Landroid/os/Bundle;

.field greylist-max-o isDialogShowing:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 516
    new-instance v0, Landroid/preference/DialogPreference$SavedState$1;

    invoke-direct {v0}, Landroid/preference/DialogPreference$SavedState$1;-><init>()V

    sput-object v0, Landroid/preference/DialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 500
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, p0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 503
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 513
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 514
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 507
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 508
    iget-boolean v0, p0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-object v0, p0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 510
    return-void
.end method
