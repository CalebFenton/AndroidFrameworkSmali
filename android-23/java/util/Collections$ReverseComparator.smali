.class final Ljava/util/Collections$ReverseComparator;
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
    accessFlags = 0x1a
    name = "ReverseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Collections$ReverseComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$ReverseComparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x64048af0534e4ad0L


# direct methods
.method static synthetic -get0()Ljava/util/Collections$ReverseComparator;
    .locals 1

    #@0
    sget-object v0, Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/util/Collections$ReverseComparator;

    #@2
    invoke-direct {v0}, Ljava/util/Collections$ReverseComparator;-><init>()V

    #@5
    sput-object v0, Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;

    #@7
    .line 189
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 189
    .local p0, "this":Ljava/util/Collections$ReverseComparator;, "Ljava/util/Collections$ReverseComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p0, "this":Ljava/util/Collections$ReverseComparator;, "Ljava/util/Collections$ReverseComparator<TT;>;"
    sget-object v0, Ljava/util/Collections$ReverseComparator;->INSTANCE:Ljava/util/Collections$ReverseComparator;

    #@2
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$ReverseComparator;, "Ljava/util/Collections$ReverseComparator<TT;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    move-object v0, p2

    #@1
    .line 196
    check-cast v0, Ljava/lang/Comparable;

    #@3
    .line 197
    .local v0, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    return v1
.end method
