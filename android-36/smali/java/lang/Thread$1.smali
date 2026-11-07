.class Ljava/lang/Thread$1;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$subcl:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 2080
    iput-object p1, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 5

    .line 2082
    iget-object v0, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    .line 2083
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v1, Ljava/lang/Thread;

    if-eq v0, v1, :cond_27

    .line 2087
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "getContextClassLoader"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2088
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v1

    .line 2089
    :catch_11
    move-exception v2

    .line 2092
    const/4 v2, 0x1

    :try_start_13
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/ClassLoader;

    aput-object v3, v2, v1

    .line 2093
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v1, "setContextClassLoader"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2094
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_20} :catch_21

    return-object v1

    .line 2095
    .end local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_21
    move-exception v1

    .line 2084
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 2098
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 2080
    invoke-virtual {p0}, Ljava/lang/Thread$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
