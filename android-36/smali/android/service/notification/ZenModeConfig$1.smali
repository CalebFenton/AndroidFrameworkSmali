.class Landroid/service/notification/ZenModeConfig$1;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/ZenModeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenModeConfig;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1652
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0, p1}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V

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

    .line 1649
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/notification/ZenModeConfig;
    .registers 3
    .param p1, "size"    # I

    .line 1657
    new-array v0, p1, [Landroid/service/notification/ZenModeConfig;

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

    .line 1649
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenModeConfig$1;->newArray(I)[Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    return-object p1
.end method
