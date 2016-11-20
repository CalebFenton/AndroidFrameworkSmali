.class Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;
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
    name = "KeyCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;-><init>()V

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
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x3

    #@7
    if-ne v2, v3, :cond_4

    #@9
    .line 212
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/lang/String;

    #@f
    invoke-static {v2}, Lcom/android/commands/monkey/MonkeySourceNetwork;->-wrap1(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    .line 213
    .local v1, "keyCode":I
    if-gez v1, :cond_0

    #@15
    .line 215
    const-string/jumbo v3, "MonkeyStub"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Can\'t find keyname: "

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;

    #@2a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 216
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@37
    return-object v2

    #@38
    .line 218
    :cond_0
    const-string/jumbo v2, "MonkeyStub"

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "keycode: "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 219
    const/4 v0, -0x1

    #@53
    .line 220
    .local v0, "action":I
    const-string/jumbo v2, "down"

    #@56
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_2

    #@60
    .line 221
    const/4 v0, 0x0

    #@61
    .line 225
    :cond_1
    :goto_0
    const/4 v2, -0x1

    #@62
    if-ne v0, v2, :cond_3

    #@64
    .line 226
    const-string/jumbo v2, "MonkeyStub"

    #@67
    const-string/jumbo v3, "got unknown action."

    #@6a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 227
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@6f
    return-object v2

    #@70
    .line 222
    :cond_2
    const-string/jumbo v2, "up"

    #@73
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v2

    #@7b
    if-eqz v2, :cond_1

    #@7d
    .line 223
    const/4 v0, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 229
    :cond_3
    new-instance v2, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@81
    invoke-direct {v2, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@84
    invoke-interface {p2, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@87
    .line 230
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@89
    return-object v2

    #@8a
    .line 232
    .end local v0    # "action":I
    .end local v1    # "keyCode":I
    :cond_4
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@8c
    return-object v2
.end method
