.class Landroid/icu/impl/LocaleIDParser$1;
.super Ljava/lang/Object;
.source "LocaleIDParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/LocaleIDParser;


# direct methods
.method constructor <init>(Landroid/icu/impl/LocaleIDParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/LocaleIDParser;

    #@0
    .prologue
    .line 591
    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser$1;->this$0:Landroid/icu/impl/LocaleIDParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 592
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/LocaleIDParser$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method
