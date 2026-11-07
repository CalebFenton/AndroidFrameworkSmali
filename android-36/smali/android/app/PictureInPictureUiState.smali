.class public final Landroid/app/PictureInPictureUiState;
.super Ljava/lang/Object;
.source "PictureInPictureUiState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureUiState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureUiState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsStashed:Z

.field private final blacklist mIsTransitioningToPip:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/app/PictureInPictureUiState$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureUiState$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "isStashed"    # Z

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/PictureInPictureUiState;-><init>(ZZ)V

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(ZZ)V
    .registers 3
    .param p1, "isStashed"    # Z
    .param p2, "isTransitioningToPip"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    .line 50
    iput-boolean p2, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/app/PictureInPictureUiState-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/PictureInPictureUiState;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 102
    :cond_4
    instance-of v1, p1, Landroid/app/PictureInPictureUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 103
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/PictureInPictureUiState;

    .line 104
    .local v1, "that":Landroid/app/PictureInPictureUiState;
    iget-boolean v3, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    iget-boolean v4, v1, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    if-ne v3, v4, :cond_1a

    iget-boolean v3, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    iget-boolean v4, v1, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 110
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isStashed()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    return v0
.end method

.method public whitelist isTransitioningToPip()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsStashed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    iget-boolean v0, p0, Landroid/app/PictureInPictureUiState;->mIsTransitioningToPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    return-void
.end method
