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
        "Landroid/icu/impl/Row<",
        "TC0;TC1;TC2;TC3;TC4;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;TC2;TC3;TC4;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroid/icu/impl/Row$R5;, "Landroid/icu/impl/Row$R5<TC0;TC1;TC2;TC3;TC4;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    .local p3, "c":Ljava/lang/Object;, "TC2;"
    .local p4, "d":Ljava/lang/Object;, "TC3;"
    .local p5, "e":Ljava/lang/Object;, "TC4;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    .line 73
    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Row$R5;->items:[Ljava/lang/Object;

    .line 74
    return-void
.end method
