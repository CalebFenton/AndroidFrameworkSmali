.class Ljava/awt/font/NumericShaper$1;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V
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
        "Ljava/awt/font/NumericShaper$Range;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/awt/font/NumericShaper;


# direct methods
.method constructor <init>(Ljava/awt/font/NumericShaper;)V
    .locals 0
    .param p1, "this$0"    # Ljava/awt/font/NumericShaper;

    #@0
    .prologue
    .line 1062
    iput-object p1, p0, Ljava/awt/font/NumericShaper$1;->this$0:Ljava/awt/font/NumericShaper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/awt/font/NumericShaper$Range;Ljava/awt/font/NumericShaper$Range;)I
    .locals 2
    .param p1, "s1"    # Ljava/awt/font/NumericShaper$Range;
    .param p2, "s2"    # Ljava/awt/font/NumericShaper$Range;

    #@0
    .prologue
    .line 1064
    invoke-static {p1}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    #@3
    move-result v0

    #@4
    invoke-static {p2}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    #@7
    move-result v1

    #@8
    if-le v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    invoke-static {p1}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    #@f
    move-result v0

    #@10
    invoke-static {p2}, Ljava/awt/font/NumericShaper$Range;->-get0(Ljava/awt/font/NumericShaper$Range;)I

    #@13
    move-result v1

    #@14
    if-ne v0, v1, :cond_1

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0

    #@18
    :cond_1
    const/4 v0, -0x1

    #@19
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1063
    check-cast p1, Ljava/awt/font/NumericShaper$Range;

    #@2
    .end local p1    # "s1":Ljava/lang/Object;
    check-cast p2, Ljava/awt/font/NumericShaper$Range;

    #@4
    .end local p2    # "s2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/awt/font/NumericShaper$1;->compare(Ljava/awt/font/NumericShaper$Range;Ljava/awt/font/NumericShaper$Range;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
