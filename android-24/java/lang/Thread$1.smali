.class final Ljava/lang/Thread$1;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subcl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "val$subcl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1667
    iput-object p1, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5

    #@0
    .prologue
    .line 1669
    iget-object v0, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    #@2
    .line 1670
    .local v0, "cl":Ljava/lang/Class;
    :goto_0
    const-class v3, Ljava/lang/Thread;

    #@4
    .line 1669
    if-eq v0, v3, :cond_0

    #@6
    .line 1674
    :try_start_0
    const-string/jumbo v3, "getContextClassLoader"

    #@9
    const/4 v4, 0x0

    #@a
    new-array v4, v4, [Ljava/lang/Class;

    #@c
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@f
    .line 1675
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v3

    #@12
    .line 1676
    :catch_0
    move-exception v1

    #@13
    .line 1679
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x1

    #@14
    :try_start_1
    new-array v2, v3, [Ljava/lang/Class;

    #@16
    const-class v3, Ljava/lang/ClassLoader;

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 1680
    .local v2, "params":[Ljava/lang/Class;
    const-string/jumbo v3, "setContextClassLoader"

    #@1e
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@21
    .line 1681
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@23
    return-object v3

    #@24
    .line 1682
    .end local v2    # "params":[Ljava/lang/Class;
    :catch_1
    move-exception v1

    #@25
    .line 1671
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@28
    move-result-object v0

    #@29
    goto :goto_0

    #@2a
    .line 1685
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2c
    return-object v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1668
    invoke-virtual {p0}, Ljava/lang/Thread$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
