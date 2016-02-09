.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListVarCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 7
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->-get0()Ljava/util/Map;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v2

    #@8
    .line 177
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 178
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 179
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, " "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    goto :goto_0

    #@28
    .line 181
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    const/4 v6, 0x1

    #@2f
    invoke-direct {v4, v6, v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@32
    return-object v4
.end method
