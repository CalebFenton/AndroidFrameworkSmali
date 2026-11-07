.class Landroid/net/CaptivePortal$1;
.super Ljava/lang/Object;
.source "CaptivePortal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/CaptivePortal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/CaptivePortal;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    new-instance v0, Landroid/net/CaptivePortal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

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

    .line 108
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/CaptivePortal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/CaptivePortal;
    .registers 3
    .param p1, "size"    # I

    .line 116
    new-array v0, p1, [Landroid/net/CaptivePortal;

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

    .line 108
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortal$1;->newArray(I)[Landroid/net/CaptivePortal;

    move-result-object p1

    return-object p1
.end method
