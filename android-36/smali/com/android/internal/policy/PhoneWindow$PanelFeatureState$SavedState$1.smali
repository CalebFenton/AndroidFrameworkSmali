.class Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 3823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3825
    invoke-static {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3823
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 3829
    new-array v0, p1, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3823
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;->newArray(I)[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method
