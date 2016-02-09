.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;
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
    name = "DeferReturnCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 10
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
    const/4 v9, 0x3

    #@1
    .line 409
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v5

    #@5
    if-le v5, v9, :cond_1

    #@7
    .line 410
    const/4 v5, 0x1

    #@8
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/String;

    #@e
    .line 412
    .local v1, "event":Ljava/lang/String;
    const-string/jumbo v5, "screenchange"

    #@11
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 413
    const/4 v2, 0x1

    #@18
    .line 417
    .local v2, "eventId":I
    const/4 v5, 0x2

    #@19
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Ljava/lang/String;

    #@1f
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@22
    move-result-wide v6

    #@23
    .line 418
    .local v6, "timeout":J
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->-get0()Ljava/util/Map;

    #@26
    move-result-object v5

    #@27
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v8

    #@2b
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    #@31
    .line 419
    .local v0, "deferredCommand":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v0, :cond_1

    #@33
    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@36
    move-result v5

    #@37
    invoke-interface {p1, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@3a
    move-result-object v3

    #@3b
    .line 421
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v3, p2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3e
    move-result-object v4

    #@3f
    .line 422
    .local v4, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    new-instance v5, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    #@41
    invoke-direct {v5, v2, v4, v6, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;-><init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V

    #@44
    invoke-static {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork;->-set0(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    #@47
    .line 423
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@49
    return-object v5

    #@4a
    .line 415
    .end local v0    # "deferredCommand":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v2    # "eventId":I
    .end local v3    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .end local v6    # "timeout":J
    :cond_0
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@4c
    return-object v5

    #@4d
    .line 426
    .end local v1    # "event":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@4f
    return-object v5
.end method
