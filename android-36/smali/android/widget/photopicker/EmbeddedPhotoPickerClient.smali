.class public interface abstract Landroid/widget/photopicker/EmbeddedPhotoPickerClient;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerClient.java"


# virtual methods
.method public abstract whitelist onSelectionComplete()V
.end method

.method public abstract whitelist onSessionError(Ljava/lang/Throwable;)V
.end method

.method public abstract whitelist onSessionOpened(Landroid/widget/photopicker/EmbeddedPhotoPickerSession;)V
.end method

.method public abstract whitelist onUriPermissionGranted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onUriPermissionRevoked(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method
