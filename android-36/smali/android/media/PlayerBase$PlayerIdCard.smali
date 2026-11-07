.class public Landroid/media/PlayerBase$PlayerIdCard;
.super Ljava/lang/Object;
.source "PlayerBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerIdCard"
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_ATTRIBUTES_DEFINED:I = 0x1

.field public static final greylist-max-o AUDIO_ATTRIBUTES_NONE:I

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlayerBase$PlayerIdCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field public final greylist-max-o mIPlayer:Landroid/media/IPlayer;

.field public final greylist-max-o mPlayerType:I

.field public final blacklist mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 483
    new-instance v0, Landroid/media/PlayerBase$PlayerIdCard$1;

    invoke-direct {v0}, Landroid/media/PlayerBase$PlayerIdCard$1;-><init>()V

    sput-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;I)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .param p3, "iplayer"    # Landroid/media/IPlayer;
    .param p4, "sessionId"    # I

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput p1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    .line 460
    iput-object p2, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    .line 461
    iput-object p3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    .line 462
    iput p4, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    .line 463
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    .line 500
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 503
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v1

    :goto_1f
    iput-object v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    .line 505
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/PlayerBase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 509
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 510
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    instance-of v2, p1, Landroid/media/PlayerBase$PlayerIdCard;

    if-nez v2, :cond_c

    goto :goto_28

    .line 512
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/media/PlayerBase$PlayerIdCard;

    .line 515
    .local v2, "that":Landroid/media/PlayerBase$PlayerIdCard;
    iget v3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iget v4, v2, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    iget v4, v2, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 510
    .end local v2    # "that":Landroid/media/PlayerBase$PlayerIdCard;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 467
    iget v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 477
    iget v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    iget-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-interface {v0}, Landroid/media/IPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 480
    iget v0, p0, Landroid/media/PlayerBase$PlayerIdCard;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    return-void
.end method
