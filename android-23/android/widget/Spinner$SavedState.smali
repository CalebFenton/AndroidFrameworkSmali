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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/Spinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field showDropdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 904
    new-instance v0, Landroid/widget/Spinner$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/Spinner$SavedState$1;-><init>()V

    #@5
    .line 903
    sput-object v0, Landroid/widget/Spinner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 885
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 893
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    #@d
    .line 892
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/Spinner$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 889
    invoke-direct {p0, p1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 888
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 899
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 900
    iget-boolean v0, p0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    int-to-byte v0, v0

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@c
    .line 898
    return-void

    #@d
    .line 900
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method
