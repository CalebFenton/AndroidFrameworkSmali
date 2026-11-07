.class public abstract Landroid/content/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DATA:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field greylist-max-o mOwner:Landroid/content/UndoOwner;


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/UndoOwner;)V
    .registers 2
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .line 40
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    .line 42
    return-void
.end method

.method protected constructor greylist-max-r <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 48
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public greylist-max-o allowMerge()Z
    .registers 2

    .line 89
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract greylist-max-o commit()V
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 114
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getOwner()Landroid/content/UndoOwner;
    .registers 2

    .line 55
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    iget-object v0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method public greylist-max-o getOwnerData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDATA;"
        }
    .end annotation

    .line 62
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    iget-object v0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {v0}, Landroid/content/UndoOwner;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasData()Z
    .registers 2

    .line 81
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o matchOwner(Landroid/content/UndoOwner;)Z
    .registers 3
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .line 72
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract greylist-max-o redo()V
.end method

.method public abstract greylist-max-o undo()V
.end method
