.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;
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
    name = "GetVarCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 4
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
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    #@1
    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x2

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 193
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->-get0()Ljava/util/Map;

    #@b
    move-result-object v1

    #@c
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;

    #@16
    .line 194
    .local v0, "getter":Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    if-nez v0, :cond_0

    #@18
    .line 195
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@1a
    const-string/jumbo v2, "unknown var"

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-direct {v1, v3, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@21
    return-object v1

    #@22
    .line 197
    :cond_0
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@24
    invoke-interface {v0}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;->get()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v3, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@2b
    return-object v1

    #@2c
    .line 199
    .end local v0    # "getter":Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    :cond_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@2e
    return-object v1
.end method
