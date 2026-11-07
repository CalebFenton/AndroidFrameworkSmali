.class Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;
.super Ljava/lang/Object;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 2061
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    invoke-direct {v0}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;-><init>()V

    .line 2062
    .local v0, "_aidl_out":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    invoke-virtual {v0, p1}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->readFromParcel(Landroid/os/Parcel;)V

    .line 2063
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

    .line 2058
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 2067
    new-array v0, p1, [Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

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

    .line 2058
    invoke-virtual {p0, p1}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;->newArray(I)[Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object p1

    return-object p1
.end method
