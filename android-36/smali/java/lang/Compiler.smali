.class public final Ljava/lang/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api command(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "cmd"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api compileClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 50
    .local p0, "classToCompile":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist test-api compileClasses(Ljava/lang/String;)Z
    .registers 2
    .param p0, "nameRoot"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist test-api disable()V
    .registers 0

    .line 94
    return-void
.end method

.method public static whitelist test-api enable()V
    .registers 0

    .line 87
    return-void
.end method
