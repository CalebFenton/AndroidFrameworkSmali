.class final Ljava/io/ObjectStreamClass$3;
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
        "Ljava/lang/reflect/Constructor",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "ctr1"    # Ljava/lang/Object;
    .param p2, "ctr2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 533
    check-cast p1, Ljava/lang/reflect/Constructor;

    #@2
    .end local p1    # "ctr1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/reflect/Constructor;

    #@4
    .end local p2    # "ctr2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectStreamClass$3;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 536
    .local p1, "ctr1":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "ctr2":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 537
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
