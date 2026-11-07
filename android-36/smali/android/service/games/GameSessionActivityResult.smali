.class public final Landroid/service/games/GameSessionActivityResult;
.super Ljava/lang/Object;
.source "GameSessionActivityResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameSessionActivityResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mData:Landroid/content/Intent;

.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/service/games/GameSessionActivityResult$1;

    invoke-direct {v0}, Landroid/service/games/GameSessionActivityResult$1;-><init>()V

    sput-object v0, Landroid/service/games/GameSessionActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/Intent;)V
    .registers 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    .line 53
    iput-object p2, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getData()Landroid/content/Intent;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget v0, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
