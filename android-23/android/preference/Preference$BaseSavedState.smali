.class public Landroid/preference/Preference$BaseSavedState;
.super Landroid/view/AbsSavedState;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/preference/Preference$BaseSavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1862
    new-instance v0, Landroid/preference/Preference$BaseSavedState$1;

    #@2
    invoke-direct {v0}, Landroid/preference/Preference$BaseSavedState$1;-><init>()V

    #@5
    .line 1861
    sput-object v0, Landroid/preference/Preference$BaseSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1852
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1854
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 1853
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1858
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 1857
    return-void
.end method
