.class public final Landroid/window/TaskFragmentOrganizerToken;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentOrganizerToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRealToken:Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/window/TaskFragmentOrganizerToken$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentOrganizerToken$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentOrganizerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 2
    .param p1, "realToken"    # Landroid/window/ITaskFragmentOrganizer;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizerToken;->mRealToken:Landroid/window/ITaskFragmentOrganizer;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizerToken;->mRealToken:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Landroid/window/TaskFragmentOrganizerToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 93
    return v1

    .line 95
    :cond_6
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizerToken;->mRealToken:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/window/TaskFragmentOrganizerToken;

    invoke-virtual {v2}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizerToken;->mRealToken:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentOrganizerToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizerToken;->mRealToken:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizerToken;->mRealToken:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 51
    return-void
.end method
