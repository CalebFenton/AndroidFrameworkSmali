.class public abstract Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;
.super Ljava/lang/Object;
.source "ArtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/ArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SnapshotRuntimeProfileCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onError(I)V
.end method

.method public abstract whitelist onSuccess(Landroid/os/ParcelFileDescriptor;)V
.end method
