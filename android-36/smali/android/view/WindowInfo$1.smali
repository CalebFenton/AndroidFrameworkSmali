.class Landroid/view/WindowInfo$1;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/WindowInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowInfo;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 227
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 228
    .local v0, "window":Landroid/view/WindowInfo;
    invoke-static {v0, p1}, Landroid/view/WindowInfo;->-$$Nest$minitFromParcel(Landroid/view/WindowInfo;Landroid/os/Parcel;)V

    .line 229
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

    .line 224
    invoke-virtual {p0, p1}, Landroid/view/WindowInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/WindowInfo;
    .registers 3
    .param p1, "size"    # I

    .line 234
    new-array v0, p1, [Landroid/view/WindowInfo;

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

    .line 224
    invoke-virtual {p0, p1}, Landroid/view/WindowInfo$1;->newArray(I)[Landroid/view/WindowInfo;

    move-result-object p1

    return-object p1
.end method
