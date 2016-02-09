.class Lcom/android/commands/pm/Pm$2;
.super Ljava/lang/Object;
.source "Pm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/pm/Pm;->runListLibraries()I
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
.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/pm/Pm;

    #@0
    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/commands/pm/Pm$2;->this$0:Lcom/android/commands/pm/Pm;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 469
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/commands/pm/Pm$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/String;
    .param p2, "o2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    if-ne p1, p2, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 471
    :cond_0
    if-nez p1, :cond_1

    #@6
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 472
    :cond_1
    if-nez p2, :cond_2

    #@a
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 473
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0
.end method
