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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isInExpandedMode:Z

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .locals 1
    .param p0, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 4890
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;-><init>()V

    #@5
    .line 4889
    sput-object v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 4856
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    #@3
    return-void
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .locals 4
    .param p0, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 4877
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@4
    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>()V

    #@7
    .line 4878
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    #@d
    .line 4879
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    if-ne v1, v2, :cond_1

    #@13
    move v1, v2

    #@14
    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    #@16
    .line 4880
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    if-ne v1, v2, :cond_2

    #@1c
    :goto_1
    iput-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    #@1e
    .line 4882
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 4883
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@25
    move-result-object v1

    #@26
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    #@28
    .line 4886
    :cond_0
    return-object v0

    #@29
    :cond_1
    move v1, v3

    #@2a
    .line 4879
    goto :goto_0

    #@2b
    :cond_2
    move v2, v3

    #@2c
    .line 4880
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 4863
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4867
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 4868
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    move v0, v1

    #@c
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 4869
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 4871
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 4872
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@1f
    .line 4866
    :cond_0
    return-void

    #@20
    :cond_1
    move v0, v2

    #@21
    .line 4868
    goto :goto_0

    #@22
    :cond_2
    move v1, v2

    #@23
    .line 4869
    goto :goto_1
.end method
