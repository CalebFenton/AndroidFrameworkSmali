.class public final Ldalvik/system/VMStack;
.super Ljava/lang/Object;
.source "VMStack.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static native greylist fillStackTraceElements(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist-max-o test-api getAnnotatedThreadStackTrace(Ljava/lang/Thread;)[Ldalvik/system/AnnotatedStackTraceElement;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist getCallingClassLoader()Ljava/lang/ClassLoader;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native greylist-max-o getClosestUserClassLoader()Ljava/lang/ClassLoader;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist-max-o getStackClass1()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist getStackClass2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native greylist getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
