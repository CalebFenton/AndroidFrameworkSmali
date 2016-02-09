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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/DialogPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/DialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;

.field isDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 479
    new-instance v0, Landroid/preference/DialogPreference$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/preference/DialogPreference$SavedState$1;-><init>()V

    #@5
    .line 478
    sput-object v0, Landroid/preference/DialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 457
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 462
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    if-ne v1, v0, :cond_0

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    #@c
    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    #@12
    .line 461
    return-void

    #@13
    .line 463
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 475
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 474
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 469
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 470
    iget-boolean v0, p0, Landroid/preference/DialogPreference$SavedState;->isDialogShowing:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 471
    iget-object v0, p0, Landroid/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@10
    .line 468
    return-void

    #@11
    .line 470
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method
