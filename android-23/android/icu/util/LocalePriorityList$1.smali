.class final Landroid/icu/util/LocalePriorityList$1;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocalePriorityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Double;Ljava/lang/Double;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Double;
    .param p2, "o2"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 353
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    #@3
    move-result v0

    #@4
    neg-int v0, v0

    #@5
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 352
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Double;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/LocalePriorityList$1;->compare(Ljava/lang/Double;Ljava/lang/Double;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
