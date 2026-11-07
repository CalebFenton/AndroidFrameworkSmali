.class interface abstract Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$Natives;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist createBidirectionalStream(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;JZZIZIJ)J
.end method

.method public abstract blacklist destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Z)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract blacklist readData(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;II)Z
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract blacklist sendRequestHeaders(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract blacklist start(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method

.method public abstract blacklist writevData(JLandroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;[Ljava/nio/ByteBuffer;[I[IZ)Z
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetBidirectionalStreamAdapter"
    .end annotation
.end method
