.class Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;
.super Ljava/lang/Object;
.source "PackageImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/parsing/pkg/PackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/pm/parsing/pkg/PackageImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 3551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 3554
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;)V

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

    .line 3551
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "size"    # I

    .line 3559
    new-array v0, p1, [Lcom/android/internal/pm/parsing/pkg/PackageImpl;

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

    .line 3551
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;->newArray(I)[Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method
