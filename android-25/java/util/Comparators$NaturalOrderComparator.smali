.class final enum Ljava/util/Comparators$NaturalOrderComparator;
.super Ljava/lang/Enum;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NaturalOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/Comparators$NaturalOrderComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/Comparators$NaturalOrderComparator;

.field public static final enum INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 48
    new-instance v0, Ljava/util/Comparators$NaturalOrderComparator;

    #@3
    const-string/jumbo v1, "INSTANCE"

    #@6
    invoke-direct {v0, v1, v2}, Ljava/util/Comparators$NaturalOrderComparator;-><init>(Ljava/lang/String;I)V

    #@9
    sput-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    #@b
    .line 47
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [Ljava/util/Comparators$NaturalOrderComparator;

    #@e
    sget-object v1, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    #@10
    aput-object v1, v0, v2

    #@12
    sput-object v0, Ljava/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljava/util/Comparators$NaturalOrderComparator;

    #@14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/Comparators$NaturalOrderComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Ljava/util/Comparators$NaturalOrderComparator;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Comparators$NaturalOrderComparator;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/Comparators$NaturalOrderComparator;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->$VALUES:[Ljava/util/Comparators$NaturalOrderComparator;

    #@2
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .local p2, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    check-cast p1, Ljava/lang/Comparable;

    #@2
    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    #@4
    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/Comparators$NaturalOrderComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
