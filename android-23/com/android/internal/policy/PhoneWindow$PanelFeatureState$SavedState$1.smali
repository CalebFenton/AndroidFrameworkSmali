.class final Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4892
    invoke-static {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->-wrap0(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 4891
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 4896
    new-array v0, p1, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 4895
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;->newArray(I)[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
