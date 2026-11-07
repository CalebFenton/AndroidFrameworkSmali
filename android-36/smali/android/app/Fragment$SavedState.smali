.class public Landroid/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mState:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 467
    new-instance v0, Landroid/app/Fragment$SavedState$1;

    invoke-direct {v0}, Landroid/app/Fragment$SavedState$1;-><init>()V

    sput-object v0, Landroid/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 448
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 452
    if-eqz p2, :cond_14

    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 453
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 455
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 464
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 465
    return-void
.end method
