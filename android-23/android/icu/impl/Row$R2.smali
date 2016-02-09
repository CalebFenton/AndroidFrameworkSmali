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
        "Landroid/icu/impl/Row",
        "<TC0;TC1;TC1;TC1;TC1;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    .local p0, "this":Landroid/icu/impl/Row$R2;, "Landroid/icu/impl/Row<TC0;TC1;TC2;TC3;TC4;>.R2<TC0;TC1;>;"
    .local p1, "a":Ljava/lang/Object;, "TC0;"
    .local p2, "b":Ljava/lang/Object;, "TC1;"
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    #@3
    .line 38
    const/4 v0, 0x2

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
    iput-object v0, p0, Landroid/icu/impl/Row$R2;->items:[Ljava/lang/Object;

    #@e
    .line 37
    return-void
.end method
