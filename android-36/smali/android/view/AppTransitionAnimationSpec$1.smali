.class Landroid/view/AppTransitionAnimationSpec$1;
.super Ljava/lang/Object;
.source "AppTransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AppTransitionAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/AppTransitionAnimationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/AppTransitionAnimationSpec;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    invoke-direct {v0, p1}, Landroid/view/AppTransitionAnimationSpec;-><init>(Landroid/os/Parcel;)V

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

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/AppTransitionAnimationSpec$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/AppTransitionAnimationSpec;
    .registers 3
    .param p1, "size"    # I

    .line 54
    new-array v0, p1, [Landroid/view/AppTransitionAnimationSpec;

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

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/AppTransitionAnimationSpec$1;->newArray(I)[Landroid/view/AppTransitionAnimationSpec;

    move-result-object p1

    return-object p1
.end method
