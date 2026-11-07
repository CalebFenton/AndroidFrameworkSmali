.class Landroid/window/RemoteTransition$1;
.super Ljava/lang/Object;
.source "RemoteTransition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/RemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/RemoteTransition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/RemoteTransition;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    new-instance v0, Landroid/window/RemoteTransition;

    invoke-direct {v0, p1}, Landroid/window/RemoteTransition;-><init>(Landroid/os/Parcel;)V

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

    .line 186
    invoke-virtual {p0, p1}, Landroid/window/RemoteTransition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/RemoteTransition;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/RemoteTransition;
    .registers 3
    .param p1, "size"    # I

    .line 189
    new-array v0, p1, [Landroid/window/RemoteTransition;

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

    .line 186
    invoke-virtual {p0, p1}, Landroid/window/RemoteTransition$1;->newArray(I)[Landroid/window/RemoteTransition;

    move-result-object p1

    return-object p1
.end method
