.class Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"

# interfaces
.implements Landroid/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrieFoldingFunc"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .locals 2
    .param p1, "data"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 149
    const v0, 0x8000

    #@4
    and-int/2addr v0, p1

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 150
    and-int/lit16 v0, p1, 0x7fff

    #@9
    return v0

    #@a
    .line 152
    :cond_0
    return v1
.end method
