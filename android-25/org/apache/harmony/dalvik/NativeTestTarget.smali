.class public final Lorg/apache/harmony/dalvik/NativeTestTarget;
.super Ljava/lang/Object;
.source "NativeTestTarget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static emptyInlineMethod()V
    .locals 0

    #@0
    .prologue
    .line 55
    return-void
.end method

.method public static native emptyInternalStaticMethod()V
.end method

.method public static native emptyJniStaticMethod0()V
.end method

.method public static native emptyJniStaticMethod6(IIIIII)V
.end method

.method public static native emptyJniStaticMethod6L(Ljava/lang/String;[Ljava/lang/String;[[ILjava/lang/Object;[Ljava/lang/Object;[[[[Ljava/lang/Object;)V
.end method

.method public static synchronized native declared-synchronized emptyJniStaticSynchronizedMethod0()V
.end method


# virtual methods
.method public native emptyJniMethod0()V
.end method

.method public native emptyJniMethod6(IIIIII)V
.end method

.method public native emptyJniMethod6L(Ljava/lang/String;[Ljava/lang/String;[[ILjava/lang/Object;[Ljava/lang/Object;[[[[Ljava/lang/Object;)V
.end method

.method public synchronized native declared-synchronized emptyJniSynchronizedMethod0()V
.end method
