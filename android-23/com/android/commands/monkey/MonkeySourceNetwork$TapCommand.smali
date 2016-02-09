.class Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;
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
    name = "TapCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 8
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
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 339
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    const/4 v4, 0x3

    #@7
    if-ne v3, v4, :cond_0

    #@9
    .line 340
    const/4 v1, 0x0

    #@a
    .line 341
    .local v1, "x":I
    const/4 v2, 0x0

    #@b
    .line 343
    .local v2, "y":I
    const/4 v3, 0x1

    #@c
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15
    move-result v1

    #@16
    .line 344
    const/4 v3, 0x2

    #@17
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/lang/String;

    #@1d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v2

    #@21
    .line 351
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@23
    invoke-direct {v3, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@26
    .line 352
    int-to-float v4, v1

    #@27
    int-to-float v5, v2

    #@28
    .line 351
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {p2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2f
    .line 353
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@31
    invoke-direct {v3, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@34
    .line 354
    int-to-float v4, v1

    #@35
    int-to-float v5, v2

    #@36
    .line 353
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@39
    move-result-object v3

    #@3a
    invoke-interface {p2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@3d
    .line 355
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3f
    return-object v3

    #@40
    .line 345
    :catch_0
    move-exception v0

    #@41
    .line 347
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MonkeyStub"

    #@44
    const-string/jumbo v4, "Got something that wasn\'t a number"

    #@47
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 348
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@4c
    return-object v3

    #@4d
    .line 357
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@4f
    return-object v3
.end method
