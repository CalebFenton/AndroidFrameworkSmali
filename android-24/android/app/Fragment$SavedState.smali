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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 543
    new-instance v0, Landroid/app/Fragment$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/app/Fragment$SavedState$1;-><init>()V

    #@5
    .line 542
    sput-object v0, Landroid/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@7
    .line 518
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 522
    iput-object p1, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@5
    .line 521
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@9
    .line 527
    if-eqz p2, :cond_0

    #@b
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 528
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@11
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@14
    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 534
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5
    .line 538
    return-void
.end method
