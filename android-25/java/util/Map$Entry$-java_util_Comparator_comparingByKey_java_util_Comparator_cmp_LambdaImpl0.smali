.class final synthetic Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$cmp:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0;->val$cmp:Ljava/util/Comparator;

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Map$Entry$-java_util_Comparator_comparingByKey_java_util_Comparator_cmp_LambdaImpl0;->val$cmp:Ljava/util/Comparator;

    #@2
    check-cast p1, Ljava/util/Map$Entry;

    #@4
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    #@6
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/Map$Entry;->-java_util_Map$Entry_lambda$3(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    #@9
    move-result v0

    #@a
    return v0
.end method
