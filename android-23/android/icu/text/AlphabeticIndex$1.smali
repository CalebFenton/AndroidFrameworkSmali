.class Landroid/icu/text/AlphabeticIndex$1;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Record",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/AlphabeticIndex;


# direct methods
.method constructor <init>(Landroid/icu/text/AlphabeticIndex;)V
    .locals 0

    #@0
    .prologue
    .line 140
    .local p1, "this$0":Landroid/icu/text/AlphabeticIndex;, "Lcom/ibm/icu/text/AlphabeticIndex<TV;>;"
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$1;->this$0:Landroid/icu/text/AlphabeticIndex;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/AlphabeticIndex$Record;Landroid/icu/text/AlphabeticIndex$Record;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    .local p1, "o1":Landroid/icu/text/AlphabeticIndex$Record;, "Lcom/ibm/icu/text/AlphabeticIndex$Record<TV;>;"
    .local p2, "o2":Landroid/icu/text/AlphabeticIndex$Record;, "Lcom/ibm/icu/text/AlphabeticIndex$Record<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$1;->this$0:Landroid/icu/text/AlphabeticIndex;

    #@2
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex;->-get0(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Landroid/icu/text/AlphabeticIndex$Record;->-get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    invoke-static {p2}, Landroid/icu/text/AlphabeticIndex$Record;->-get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 141
    check-cast p1, Landroid/icu/text/AlphabeticIndex$Record;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/icu/text/AlphabeticIndex$Record;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$1;->compare(Landroid/icu/text/AlphabeticIndex$Record;Landroid/icu/text/AlphabeticIndex$Record;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
