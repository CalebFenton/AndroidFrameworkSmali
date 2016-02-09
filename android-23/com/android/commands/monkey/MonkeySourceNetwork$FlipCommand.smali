.class Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlipCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 3
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
    const/4 v2, 0x1

    #@1
    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v1

    #@5
    if-le v1, v2, :cond_1

    #@7
    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    .line 116
    .local v0, "direction":Ljava/lang/String;
    const-string/jumbo v1, "open"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 117
    new-instance v1, Lcom/android/commands/monkey/MonkeyFlipEvent;

    #@18
    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    #@1b
    invoke-interface {p2, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@1e
    .line 118
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@20
    return-object v1

    #@21
    .line 119
    :cond_0
    const-string/jumbo v1, "close"

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 120
    new-instance v1, Lcom/android/commands/monkey/MonkeyFlipEvent;

    #@2c
    const/4 v2, 0x0

    #@2d
    invoke-direct {v1, v2}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    #@30
    invoke-interface {p2, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@33
    .line 121
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@35
    return-object v1

    #@36
    .line 124
    .end local v0    # "direction":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@38
    return-object v1
.end method
