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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/preference/YesNoPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/preference/YesNoPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field wasPositiveResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/preference/YesNoPreference$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/preference/YesNoPreference$SavedState$1;-><init>()V

    #@5
    .line 143
    sput-object v0, Lcom/android/internal/preference/YesNoPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 129
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    if-ne v1, v0, :cond_0

    #@a
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    #@c
    .line 128
    return-void

    #@d
    .line 130
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 139
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 134
    return-void

    #@c
    .line 136
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
