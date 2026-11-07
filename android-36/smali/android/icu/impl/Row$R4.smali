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
        "Landroid/icu/impl/Row<",
        "TC0;TC1;TC2;TC3;TC3;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;TC2;TC3;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Landroid/icu/impl/Row$R4;, "Landroid/icu/impl/Row$R4<TC0;TC1;TC2;TC3;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    .local p3, "c":Ljava/lang/Object;, "TC2;"
    .local p4, "d":Ljava/lang/Object;, "TC3;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    .line 65
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Row$R4;->items:[Ljava/lang/Object;

    .line 66
    return-void
.end method
