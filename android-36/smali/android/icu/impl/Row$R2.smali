.class public Landroid/icu/impl/Row$R2;
.super Landroid/icu/impl/Row;
.source "Row.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "R2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/Row<",
        "TC0;TC1;TC1;TC1;TC1;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/icu/impl/Row$R2;, "Landroid/icu/impl/Row$R2<TC0;TC1;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    .line 49
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Row$R2;->items:[Ljava/lang/Object;

    .line 50
    return-void
.end method
