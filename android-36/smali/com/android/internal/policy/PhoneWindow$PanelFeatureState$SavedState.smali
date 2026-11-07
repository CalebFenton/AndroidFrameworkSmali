.class Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
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
            "Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist featureId:I

.field blacklist isInExpandedMode:Z

.field blacklist isOpen:Z

.field blacklist menuState:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3822
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 3789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .registers 5
    .param p0, "source"    # Landroid/os/Parcel;

    .line 3810
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    .line 3811
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 3812
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 3813
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1f

    move v2, v3

    :cond_1f
    iput-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 3815
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v1, :cond_2b

    .line 3816
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 3819
    :cond_2b
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3796
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3800
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3801
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3802
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_18

    .line 3805
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3807
    :cond_18
    return-void
.end method
