.class Landroid/view/MagnificationSpec$1;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MagnificationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/MagnificationSpec;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 131
    new-instance v0, Landroid/view/MagnificationSpec;

    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 132
    .local v0, "spec":Landroid/view/MagnificationSpec;
    invoke-static {v0, p1}, Landroid/view/MagnificationSpec;->-$$Nest$minitFromParcel(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V

    .line 133
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

    .line 123
    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/MagnificationSpec;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/MagnificationSpec;
    .registers 3
    .param p1, "size"    # I

    .line 126
    new-array v0, p1, [Landroid/view/MagnificationSpec;

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

    .line 123
    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec$1;->newArray(I)[Landroid/view/MagnificationSpec;

    move-result-object p1

    return-object p1
.end method
