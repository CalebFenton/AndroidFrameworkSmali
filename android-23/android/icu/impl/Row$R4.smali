.class public Landroid/icu/impl/Row$R4;
.super Landroid/icu/impl/Row;
.source "Row.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "R4"
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
        ">",
        "Landroid/icu/impl/Row",
        "<TC0;TC1;TC2;TC3;TC3;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;TC2;TC3;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p0, "this":Landroid/icu/impl/Row$R4;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>.R4<TC0;TC1;TC2;TC3;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    .local p3, "c":Ljava/lang/Object;, "TC2;"
    .local p4, "d":Ljava/lang/Object;, "TC3;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x4

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
    iput-object v0, p0, Landroid/icu/impl/Row$R4;->items:[Ljava/lang/Object;

    #@14
    .line 47
    return-void
.end method
