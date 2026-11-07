.class public abstract Landroid/mtp/MtpStorageManager$MtpNotifier;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MtpNotifier"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o sendObjectAdded(I)V
.end method

.method public abstract blacklist sendObjectInfoChanged(I)V
.end method

.method public abstract greylist-max-o sendObjectRemoved(I)V
.end method
