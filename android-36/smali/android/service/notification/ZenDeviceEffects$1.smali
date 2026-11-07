.class Landroid/service/notification/ZenDeviceEffects$1;
.super Ljava/lang/Object;
.source "ZenDeviceEffects.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenDeviceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/ZenDeviceEffects;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenDeviceEffects;
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 391
    new-instance v0, Landroid/service/notification/ZenDeviceEffects;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    const-class v12, Ljava/lang/String;

    .line 403
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    invoke-virtual {p1, v12, v13}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/service/notification/ZenDeviceEffects;-><init>(ZZZZZZZZZZZLjava/util/Set;Landroid/service/notification/ZenDeviceEffects-IA;)V

    .line 391
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

    .line 388
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenDeviceEffects$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenDeviceEffects;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/notification/ZenDeviceEffects;
    .registers 3
    .param p1, "size"    # I

    .line 408
    new-array v0, p1, [Landroid/service/notification/ZenDeviceEffects;

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

    .line 388
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenDeviceEffects$1;->newArray(I)[Landroid/service/notification/ZenDeviceEffects;

    move-result-object p1

    return-object p1
.end method
