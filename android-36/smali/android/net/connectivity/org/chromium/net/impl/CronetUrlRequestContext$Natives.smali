.class interface abstract Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$Natives;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist addPkp(JLjava/lang/String;[[BZJ)V
.end method

.method public abstract blacklist addQuicHint(JLjava/lang/String;II)V
.end method

.method public abstract blacklist configureNetworkQualityEstimatorForTesting(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;ZZZ)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist createRequestContextAdapter(J)J
.end method

.method public abstract blacklist createRequestContextConfig([B)J
.end method

.method public abstract blacklist destroy(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist flushWritePropertiesForTesting(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist getHistogramDeltas()[B
.end method

.method public abstract blacklist initRequestContextOnInitThread(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist provideRTTObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist provideThroughputObservations(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Z)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist startNetLogToDisk(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ZI)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist startNetLogToFile(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;Z)Z
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method

.method public abstract blacklist stopNetLog(JLandroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "CronetContextAdapter"
    .end annotation
.end method
