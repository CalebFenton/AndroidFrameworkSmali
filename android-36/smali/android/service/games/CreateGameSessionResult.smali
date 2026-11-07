.class public final Landroid/service/games/CreateGameSessionResult;
.super Ljava/lang/Object;
.source "CreateGameSessionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/CreateGameSessionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGameSession:Landroid/service/games/IGameSession;

.field private final blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/service/games/CreateGameSessionResult$1;

    invoke-direct {v0}, Landroid/service/games/CreateGameSessionResult$1;-><init>()V

    sput-object v0, Landroid/service/games/CreateGameSessionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3
    .param p1, "gameSession"    # Landroid/service/games/IGameSession;
    .param p2, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/service/games/CreateGameSessionResult;->mGameSession:Landroid/service/games/IGameSession;

    .line 61
    iput-object p2, p0, Landroid/service/games/CreateGameSessionResult;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGameSession()Landroid/service/games/IGameSession;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mGameSession:Landroid/service/games/IGameSession;

    return-object v0
.end method

.method public blacklist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mGameSession:Landroid/service/games/IGameSession;

    invoke-interface {v0}, Landroid/service/games/IGameSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 82
    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
