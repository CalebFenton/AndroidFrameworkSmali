.class Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;
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
    name = "TypeCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>()V

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
    .line 296
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x2

    #@5
    if-ne v5, v6, :cond_1

    #@7
    .line 297
    const/4 v5, 0x1

    #@8
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Ljava/lang/String;

    #@e
    .line 299
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    #@15
    move-result-object v0

    #@16
    .line 304
    .local v0, "chars":[C
    const/4 v5, -0x1

    #@17
    .line 303
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@1a
    move-result-object v3

    #@1b
    .line 305
    .local v3, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v3, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@1e
    move-result-object v2

    #@1f
    .line 308
    .local v2, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    #@20
    array-length v6, v2

    #@21
    :goto_0
    if-ge v5, v6, :cond_0

    #@23
    aget-object v1, v2, v5

    #@25
    .line 309
    .local v1, "event":Landroid/view/KeyEvent;
    new-instance v7, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@27
    invoke-direct {v7, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    #@2a
    invoke-interface {p2, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2d
    .line 308
    add-int/lit8 v5, v5, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 311
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@32
    return-object v5

    #@33
    .line 313
    .end local v0    # "chars":[C
    .end local v2    # "events":[Landroid/view/KeyEvent;
    .end local v3    # "keyCharacterMap":Landroid/view/KeyCharacterMap;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@35
    return-object v5
.end method
