.class public interface abstract Landroid/widget/photopicker/EmbeddedPhotoPickerSession;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerSession.java"


# virtual methods
.method public abstract whitelist close()V
.end method

.method public abstract whitelist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
.end method

.method public abstract whitelist notifyConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract whitelist notifyPhotoPickerExpanded(Z)V
.end method

.method public abstract whitelist notifyResized(II)V
.end method

.method public abstract whitelist notifyVisibilityChanged(Z)V
.end method

.method public abstract whitelist requestRevokeUriPermission(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method
