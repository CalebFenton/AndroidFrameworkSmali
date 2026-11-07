.class Lcom/android/internal/preference/YesNoPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "YesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/preference/YesNoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/preference/YesNoPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist wasPositiveResult:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Lcom/android/internal/preference/YesNoPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/preference/YesNoPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/preference/YesNoPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, p0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 142
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
