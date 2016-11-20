.class Ljava/util/Collections$ReverseComparator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

.field private static final serialVersionUID:J = 0x64048af0534e4ad0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 4313
    new-instance v0, Ljava/util/Collections$ReverseComparator;

    #@2
    invoke-direct {v0}, Ljava/util/Collections$ReverseComparator;-><init>()V

    #@5
    .line 4312
    sput-object v0, Ljava/util/Collections$ReverseComparator;->REVERSE_ORDER:Ljava/util/Collections$ReverseComparator;

    #@7
    .line 4307
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4319
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
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
    .line 4316
    .local p1, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .local p2, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

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
    .line 4315
    check-cast p1, Ljava/lang/Comparable;

    #@2
    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    #@4
    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$ReverseComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

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
    .line 4323
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
