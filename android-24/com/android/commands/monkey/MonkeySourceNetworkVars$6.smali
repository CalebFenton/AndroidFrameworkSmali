.class final Lcom/android/commands/monkey/MonkeySourceNetworkVars$6;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
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
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 135
    sget-object v3, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 136
    return-object v4

    #@6
    .line 138
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 139
    .local v2, "sb":Ljava/lang/StringBuffer;
    sget-object v3, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    #@d
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "cat$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 140
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, " "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    goto :goto_0

    #@2c
    .line 142
    .end local v0    # "cat":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method
