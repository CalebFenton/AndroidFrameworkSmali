.class interface abstract Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest$Natives;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist addRequestHeader(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method

.method public abstract blacklist createRequestAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;JLjava/lang/String;IZZZIZII[BLjava/nio/ByteBuffer;IILjava/lang/String;J)J
.end method

.method public abstract blacklist destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Z)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method

.method public abstract blacklist followDeferredRedirect(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method

.method public abstract blacklist getStatus(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method

.method public abstract blacklist readData(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/nio/ByteBuffer;II)Z
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method

.method public abstract blacklist setHttpMethod(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;)Z
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method

.method public abstract blacklist start(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequest;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetURLRequestAdapter"
    .end annotation
.end method
