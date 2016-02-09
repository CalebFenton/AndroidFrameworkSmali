.class final Ljava/lang/reflect/Field$1;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Field;
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
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
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
    .line 56
    check-cast p1, Ljava/lang/reflect/Field;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Field;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field$1;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 6
    .param p1, "a"    # Ljava/lang/reflect/Field;
    .param p2, "b"    # Ljava/lang/reflect/Field;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 57
    if-ne p1, p2, :cond_0

    #@3
    .line 58
    return v5

    #@4
    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    .line 61
    .local v2, "comparison":I
    if-eqz v2, :cond_1

    #@12
    .line 62
    return v2

    #@13
    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    .line 65
    .local v0, "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@1a
    move-result-object v1

    #@1b
    .line 66
    .local v1, "bType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_2

    #@1d
    .line 67
    return v5

    #@1e
    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@29
    move-result v3

    #@2a
    return v3
.end method
