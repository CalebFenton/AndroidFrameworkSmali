.class Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;
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
    name = "TouchCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 9
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
    .line 138
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x4

    #@5
    if-ne v5, v6, :cond_4

    #@7
    .line 139
    const/4 v5, 0x1

    #@8
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 140
    .local v1, "actionName":Ljava/lang/String;
    const/4 v3, 0x0

    #@f
    .line 141
    .local v3, "x":I
    const/4 v4, 0x0

    #@10
    .line 143
    .local v4, "y":I
    const/4 v5, 0x2

    #@11
    :try_start_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Ljava/lang/String;

    #@17
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v3

    #@1b
    .line 144
    const/4 v5, 0x3

    #@1c
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Ljava/lang/String;

    #@22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v4

    #@26
    .line 152
    const/4 v0, -0x1

    #@27
    .line 153
    .local v0, "action":I
    const-string/jumbo v5, "down"

    #@2a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 154
    const/4 v0, 0x0

    #@31
    .line 160
    :cond_0
    :goto_0
    const/4 v5, -0x1

    #@32
    if-ne v0, v5, :cond_3

    #@34
    .line 161
    const-string/jumbo v5, "MonkeyStub"

    #@37
    new-instance v6, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v7, "Got a bad action: "

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 162
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@50
    return-object v5

    #@51
    .line 145
    .end local v0    # "action":I
    :catch_0
    move-exception v2

    #@52
    .line 147
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "MonkeyStub"

    #@55
    const-string/jumbo v6, "Got something that wasn\'t a number"

    #@58
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 148
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@5d
    return-object v5

    #@5e
    .line 155
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "action":I
    :cond_1
    const-string/jumbo v5, "up"

    #@61
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_2

    #@67
    .line 156
    const/4 v0, 0x1

    #@68
    goto :goto_0

    #@69
    .line 157
    :cond_2
    const-string/jumbo v5, "move"

    #@6c
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_0

    #@72
    .line 158
    const/4 v0, 0x2

    #@73
    goto :goto_0

    #@74
    .line 165
    :cond_3
    new-instance v5, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@76
    invoke-direct {v5, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@79
    .line 166
    int-to-float v6, v3

    #@7a
    int-to-float v7, v4

    #@7b
    const/4 v8, 0x0

    #@7c
    .line 165
    invoke-virtual {v5, v8, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7f
    move-result-object v5

    #@80
    invoke-interface {p2, v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@83
    .line 167
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@85
    return-object v5

    #@86
    .line 169
    .end local v0    # "action":I
    .end local v1    # "actionName":Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_4
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@88
    return-object v5
.end method
