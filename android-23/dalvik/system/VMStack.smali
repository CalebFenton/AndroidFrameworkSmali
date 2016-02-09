.class public final Ldalvik/system/VMStack;
.super Ljava/lang/Object;
.source "VMStack.java"


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

.method public static native fillStackTraceElements(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)I
.end method

.method public static native getCallingClassLoader()Ljava/lang/ClassLoader;
.end method

.method public static native getClosestUserClassLoader()Ljava/lang/ClassLoader;
.end method

.method public static getStackClass1()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static native getStackClass2()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
.end method
