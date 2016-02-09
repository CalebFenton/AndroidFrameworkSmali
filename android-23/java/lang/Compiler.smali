.class public final Ljava/lang/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static command(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "cmd"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static compileClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p0, "classToCompile":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static compileClasses(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nameRoot"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static disable()V
    .locals 0

    #@0
    .prologue
    .line 78
    return-void
.end method

.method public static enable()V
    .locals 0

    #@0
    .prologue
    .line 84
    return-void
.end method
