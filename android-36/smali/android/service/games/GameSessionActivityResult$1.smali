.class Landroid/service/games/GameSessionActivityResult$1;
.super Ljava/lang/Object;
.source "GameSessionActivityResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSessionActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/games/GameSessionActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameSessionActivityResult;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    .local v0, "resultCode":I
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 38
    .local v1, "data":Landroid/content/Intent;
    new-instance v2, Landroid/service/games/GameSessionActivityResult;

    invoke-direct {v2, v0, v1}, Landroid/service/games/GameSessionActivityResult;-><init>(ILandroid/content/Intent;)V

    return-object v2
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

    .line 33
    invoke-virtual {p0, p1}, Landroid/service/games/GameSessionActivityResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameSessionActivityResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/games/GameSessionActivityResult;
    .registers 3
    .param p1, "size"    # I

    .line 43
    new-array v0, p1, [Landroid/service/games/GameSessionActivityResult;

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

    .line 33
    invoke-virtual {p0, p1}, Landroid/service/games/GameSessionActivityResult$1;->newArray(I)[Landroid/service/games/GameSessionActivityResult;

    move-result-object p1

    return-object p1
.end method
