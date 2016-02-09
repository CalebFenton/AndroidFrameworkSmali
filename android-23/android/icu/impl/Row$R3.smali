.class public Landroid/icu/impl/Row$R3;
.super Landroid/icu/impl/Row;
.source "Row.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "R3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        "C2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/Row",
        "<TC0;TC1;TC2;TC2;TC2;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;TC2;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p0, "this":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>.R3<TC0;TC1;TC2;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    .local p3, "c":Ljava/lang/Object;, "TC2;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x3

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
    iput-object v0, p0, Landroid/icu/impl/Row$R3;->items:[Ljava/lang/Object;

    #@11
    .line 42
    return-void
.end method
