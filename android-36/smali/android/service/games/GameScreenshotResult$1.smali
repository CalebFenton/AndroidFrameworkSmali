.class Landroid/service/games/GameScreenshotResult$1;
.super Ljava/lang/Object;
.source "GameScreenshotResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameScreenshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/games/GameScreenshotResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameScreenshotResult;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Landroid/service/games/GameScreenshotResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/games/GameScreenshotResult;-><init>(ILandroid/service/games/GameScreenshotResult-IA;)V

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

    .line 76
    invoke-virtual {p0, p1}, Landroid/service/games/GameScreenshotResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/games/GameScreenshotResult;
    .registers 3
    .param p1, "size"    # I

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/games/GameScreenshotResult;

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

    .line 76
    invoke-virtual {p0, p1}, Landroid/service/games/GameScreenshotResult$1;->newArray(I)[Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    return-object p1
.end method
