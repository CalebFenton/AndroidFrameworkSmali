.class Landroid/view/WindowContentFrameStats$1;
.super Ljava/lang/Object;
.source "WindowContentFrameStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowContentFrameStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/WindowContentFrameStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowContentFrameStats;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 147
    new-instance v0, Landroid/view/WindowContentFrameStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/WindowContentFrameStats;-><init>(Landroid/os/Parcel;Landroid/view/WindowContentFrameStats-IA;)V

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

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/WindowContentFrameStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowContentFrameStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/WindowContentFrameStats;
    .registers 3
    .param p1, "size"    # I

    .line 152
    new-array v0, p1, [Landroid/view/WindowContentFrameStats;

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

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/WindowContentFrameStats$1;->newArray(I)[Landroid/view/WindowContentFrameStats;

    move-result-object p1

    return-object p1
.end method
