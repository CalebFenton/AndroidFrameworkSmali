.class final Ljava/lang/reflect/Method$1;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Method;
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
    .line 53
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
    .line 54
    check-cast p1, Ljava/lang/reflect/Method;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Method;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method$1;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

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
    const/4 v3, 0x0

    #@1
    .line 55
    if-ne p1, p2, :cond_0

    #@3
    .line 56
    return v3

    #@4
    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    .line 59
    .local v2, "comparison":I
    if-nez v2, :cond_1

    #@12
    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->compareParameters([Ljava/lang/Class;)I

    #@19
    move-result v2

    #@1a
    .line 61
    if-nez v2, :cond_1

    #@1c
    .line 63
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1f
    move-result-object v0

    #@20
    .line 64
    .local v0, "aReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@23
    move-result-object v1

    #@24
    .line 65
    .local v1, "bReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_2

    #@26
    .line 66
    const/4 v2, 0x0

    #@27
    .line 72
    .end local v0    # "aReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "bReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return v2

    #@28
    .line 68
    .restart local v0    # "aReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "bReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@33
    move-result v2

    #@34
    goto :goto_0
.end method
