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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$Token$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/media/session/ISessionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 679
    new-instance v0, Landroid/media/session/MediaSession$Token$1;

    #@2
    invoke-direct {v0}, Landroid/media/session/MediaSession$Token$1;-><init>()V

    #@5
    .line 678
    sput-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 628
    return-void
.end method

.method public constructor <init>(Landroid/media/session/ISessionController;)V
    .locals 0
    .param p1, "binder"    # Landroid/media/session/ISessionController;

    #@0
    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 636
    iput-object p1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@5
    .line 635
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 641
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 659
    if-ne p0, p1, :cond_0

    #@4
    .line 660
    return v4

    #@5
    .line 661
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 662
    return v3

    #@8
    .line 663
    :cond_1
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Token;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 664
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 665
    check-cast v0, Landroid/media/session/MediaSession$Token;

    #@16
    .line 666
    .local v0, "other":Landroid/media/session/MediaSession$Token;
    iget-object v1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 667
    iget-object v1, v0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 668
    return v3

    #@1f
    .line 669
    :cond_3
    iget-object v1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@21
    invoke-interface {v1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, v0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@27
    invoke-interface {v2}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_4

    #@31
    .line 670
    return v3

    #@32
    .line 671
    :cond_4
    return v4
.end method

.method getBinder()Landroid/media/session/ISessionController;
    .locals 1

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 651
    const/16 v0, 0x1f

    #@2
    .line 653
    .local v0, "prime":I
    iget-object v2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@4
    if-nez v2, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@9
    .line 654
    .local v1, "result":I
    return v1

    #@a
    .line 653
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@c
    invoke-interface {v2}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@13
    move-result v2

    #@14
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    #@2
    invoke-interface {v0}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@9
    .line 645
    return-void
.end method
