.class Landroid/app/PendingIntent$1;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1496
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1497
    .local v0, "target":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 1498
    new-instance v1, Landroid/app/PendingIntent;

    const-class v2, Landroid/app/PendingIntent;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;Ljava/lang/Object;)V

    goto :goto_13

    .line 1499
    :cond_12
    const/4 v1, 0x0

    .line 1497
    :goto_13
    return-object v1
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

    .line 1494
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/PendingIntent;
    .registers 3
    .param p1, "size"    # I

    .line 1503
    new-array v0, p1, [Landroid/app/PendingIntent;

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

    .line 1494
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent$1;->newArray(I)[Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
