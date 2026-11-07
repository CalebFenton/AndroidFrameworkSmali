.class Landroid/window/TaskFragmentOrganizerToken$1;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOrganizerToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/TaskFragmentOrganizerToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/TaskFragmentOrganizerToken;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    nop

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 68
    .local v0, "realToken":Landroid/window/ITaskFragmentOrganizer;
    if-nez v0, :cond_d

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_d
    new-instance v1, Landroid/window/TaskFragmentOrganizerToken;

    invoke-direct {v1, v0}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

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

    .line 61
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentOrganizerToken$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/TaskFragmentOrganizerToken;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/window/TaskFragmentOrganizerToken;
    .registers 3
    .param p1, "size"    # I

    .line 76
    new-array v0, p1, [Landroid/window/TaskFragmentOrganizerToken;

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

    .line 61
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentOrganizerToken$1;->newArray(I)[Landroid/window/TaskFragmentOrganizerToken;

    move-result-object p1

    return-object p1
.end method
