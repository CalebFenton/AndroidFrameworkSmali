.class public Landroid/icu/impl/Row$R5;
.super Landroid/icu/impl/Row;
.source "Row.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "R5"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        "C2:",
        "Ljava/lang/Object;",
        "C3:",
        "Ljava/lang/Object;",
        "C4:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/Row",
        "<TC0;TC1;TC2;TC3;TC4;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;TC2;TC3;TC4;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p0, "this":Landroid/icu/impl/Row$R5;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>.R5<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    .local p3, "c":Ljava/lang/Object;, "TC2;"
    .local p4, "d":Ljava/lang/Object;, "TC3;"
    .local p5, "e":Ljava/lang/Object;, "TC4;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    #@3
    .line 53
    const/4 v0, 0x5

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    const/4 v1, 0x0

    #@7
    aput-object p1, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    aput-object p2, v0, v1

    #@c
    const/4 v1, 0x2

    #@d
    aput-object p3, v0, v1

    #@f
    const/4 v1, 0x3

    #@10
    aput-object p4, v0, v1

    #@12
    const/4 v1, 0x4

    #@13
    aput-object p5, v0, v1

    #@15
    iput-object v0, p0, Landroid/icu/impl/Row$R5;->items:[Ljava/lang/Object;

    #@17
    .line 52
    return-void
.end method
