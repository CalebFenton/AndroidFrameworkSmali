.class Ljava/lang/reflect/Method$1;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 67
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method$1;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .registers 8
    .param p1, "a"    # Ljava/lang/reflect/Method;
    .param p2, "b"    # Ljava/lang/reflect/Method;

    .line 69
    if-ne p1, p2, :cond_4

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "comparison":I
    if-nez v0, :cond_30

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->compareMethodParametersInternal(Ljava/lang/reflect/Method;)I

    move-result v0

    .line 75
    if-nez v0, :cond_30

    .line 77
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "aReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 79
    .local v2, "bReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, v2, :cond_24

    .line 80
    const/4 v0, 0x0

    goto :goto_30

    .line 82
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 86
    .end local v1    # "aReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "bReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    :goto_30
    return v0
.end method
