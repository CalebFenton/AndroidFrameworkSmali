.class final Ljava/io/ObjectStreamClass$4;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
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
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "m1"    # Ljava/lang/Object;
    .param p2, "m2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 569
    check-cast p1, Ljava/lang/reflect/Method;

    #@2
    .end local p1    # "m1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Method;

    #@4
    .end local p2    # "m2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectStreamClass$4;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 3
    .param p1, "m1"    # Ljava/lang/reflect/Method;
    .param p2, "m2"    # Ljava/lang/reflect/Method;

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 571
    .local v0, "result":I
    if-nez v0, :cond_0

    #@e
    .line 574
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 575
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 577
    :cond_0
    return v0
.end method
