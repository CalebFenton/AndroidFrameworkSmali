.class Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortByFullyQualifiedName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljunit/framework/TestCase;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/TestCase;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    .local p1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    .local p2, "class2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "class1"    # Ljava/lang/Object;
    .param p2, "class2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 207
    check-cast p1, Ljava/lang/Class;

    #@2
    .end local p1    # "class1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Class;

    #@4
    .end local p2    # "class2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/test/suitebuilder/TestGrouping$SortByFullyQualifiedName;->compare(Ljava/lang/Class;Ljava/lang/Class;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
