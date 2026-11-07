.class interface abstract Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$Natives;
.super Ljava/lang/Object;
.source "CronetUploadDataStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist attachUploadDataToRequest(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;JJ)J
.end method

.method public abstract blacklist createAdapterForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)J
.end method

.method public abstract blacklist createUploadDataStreamForTesting(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;JJ)J
.end method

.method public abstract blacklist destroy(J)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetUploadDataStreamAdapter"
    .end annotation
.end method

.method public abstract blacklist onReadSucceeded(JLandroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;IZ)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetUploadDataStreamAdapter"
    .end annotation
.end method

.method public abstract blacklist onRewindSucceeded(JLandroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetUploadDataStreamAdapter"
    .end annotation
.end method
