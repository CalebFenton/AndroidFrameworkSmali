.class public final Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;
.super Ljava/lang/Object;
.source "DdmVmInternal.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native greylist getStackTraceById(I)[Ljava/lang/StackTraceElement;
.end method

.method public static native greylist getThreadStats()[B
.end method

.method public static native blacklist test-api setRecentAllocationsTrackingEnabled(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public static native blacklist test-api setThreadNotifyEnabled(Z)V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method
