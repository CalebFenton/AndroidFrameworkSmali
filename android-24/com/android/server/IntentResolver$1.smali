.class final Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 795
    check-cast p1, Landroid/content/IntentFilter;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    #@5
    move-result v0

    #@6
    .line 796
    .local v0, "q1":I
    check-cast p2, Landroid/content/IntentFilter;

    #@8
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    #@b
    move-result v1

    #@c
    .line 797
    .local v1, "q2":I
    if-le v0, v1, :cond_0

    #@e
    const/4 v2, -0x1

    #@f
    :goto_0
    return v2

    #@10
    :cond_0
    if-ge v0, v1, :cond_1

    #@12
    const/4 v2, 0x1

    #@13
    goto :goto_0

    #@14
    :cond_1
    const/4 v2, 0x0

    #@15
    goto :goto_0
.end method
