.class Landroid/preference/MultiSelectListPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiSelectListPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/MultiSelectListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 276
    new-instance v0, Landroid/preference/MultiSelectListPreference$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/preference/MultiSelectListPreference$SavedState$1;-><init>()V

    #@5
    .line 275
    sput-object v0, Landroid/preference/MultiSelectListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 256
    new-instance v3, Ljava/util/HashSet;

    #@5
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v3, p0, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    #@a
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 259
    .local v2, "strings":[Ljava/lang/String;
    array-length v1, v2

    #@f
    .line 260
    .local v1, "stringCount":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@12
    .line 261
    iget-object v3, p0, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    #@14
    aget-object v4, v2, v0

    #@16
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    .line 260
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 254
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 266
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 265
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 271
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 272
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    #@5
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Ljava/lang/String;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@11
    .line 270
    return-void
.end method
