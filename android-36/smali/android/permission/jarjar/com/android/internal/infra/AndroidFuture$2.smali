.class Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$2;
.super Ljava/lang/Object;
.source "AndroidFuture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 640
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    invoke-direct {v0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;-><init>(Landroid/os/Parcel;)V

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

    .line 638
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$2;->createFromParcel(Landroid/os/Parcel;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .param p1, "size"    # I

    .line 644
    new-array v0, p1, [Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

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

    .line 638
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture$2;->newArray(I)[Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method
