.class final Ljava/lang/reflect/Proxy$1;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    check-cast p1, Ljava/lang/reflect/Method;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Method;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Proxy$1;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 5
    .param p1, "a"    # Ljava/lang/reflect/Method;
    .param p2, "b"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 51
    sget-object v3, Ljava/lang/reflect/Method;->ORDER_BY_SIGNATURE:Ljava/util/Comparator;

    #@3
    invoke-interface {v3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@6
    move-result v2

    #@7
    .line 52
    .local v2, "comparison":I
    if-eqz v2, :cond_0

    #@9
    .line 53
    return v2

    #@a
    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 56
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@11
    move-result-object v1

    #@12
    .line 57
    .local v1, "bClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_1

    #@14
    .line 58
    return v4

    #@15
    .line 59
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 60
    const/4 v3, 0x1

    #@1c
    return v3

    #@1d
    .line 61
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 62
    const/4 v3, -0x1

    #@24
    return v3

    #@25
    .line 64
    :cond_3
    return v4
.end method
