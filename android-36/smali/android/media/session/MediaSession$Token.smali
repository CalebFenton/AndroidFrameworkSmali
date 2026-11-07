.class public final Landroid/media/session/MediaSession$Token;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBinder:Landroid/media/session/ISessionController;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 874
    new-instance v0, Landroid/media/session/MediaSession$Token$1;

    invoke-direct {v0}, Landroid/media/session/MediaSession$Token$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/session/ISessionController;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "binder"    # Landroid/media/session/ISessionController;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput p1, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 812
    iput-object p2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    .line 813
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    .line 818
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 841
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 842
    return v0

    .line 843
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 844
    return v1

    .line 845
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 846
    return v1

    .line 847
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/media/session/MediaSession$Token;

    .line 848
    .local v2, "other":Landroid/media/session/MediaSession$Token;
    iget v3, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    iget v4, v2, Landroid/media/session/MediaSession$Token;->mUid:I

    if-eq v3, v4, :cond_1d

    .line 849
    return v1

    .line 851
    :cond_1d
    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-eqz v3, :cond_37

    iget-object v3, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v3, :cond_26

    goto :goto_37

    .line 854
    :cond_26
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 852
    :cond_37
    :goto_37
    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    iget-object v4, v2, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-ne v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    return v0
.end method

.method public greylist-max-o getBinder()Landroid/media/session/ISessionController;
    .registers 2

    .line 871
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 863
    iget v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 833
    const/16 v0, 0x1f

    .line 834
    .local v0, "prime":I
    iget v1, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 835
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_16

    :cond_c
    iget-object v3, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v3}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v2, v3

    .line 836
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 827
    iget v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 829
    return-void
.end method
