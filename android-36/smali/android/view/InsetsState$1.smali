.class Landroid/view/InsetsState$1;
.super Ljava/lang/Object;
.source "InsetsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/InsetsState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/InsetsState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 817
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0, p1}, Landroid/view/InsetsState;-><init>(Landroid/os/Parcel;)V

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

    .line 814
    invoke-virtual {p0, p1}, Landroid/view/InsetsState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InsetsState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/InsetsState;
    .registers 3
    .param p1, "size"    # I

    .line 821
    new-array v0, p1, [Landroid/view/InsetsState;

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

    .line 814
    invoke-virtual {p0, p1}, Landroid/view/InsetsState$1;->newArray(I)[Landroid/view/InsetsState;

    move-result-object p1

    return-object p1
.end method
