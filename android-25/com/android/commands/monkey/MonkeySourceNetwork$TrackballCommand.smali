.class Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;
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
    name = "TrackballCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>()V

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
    const/4 v5, 0x2

    #@1
    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v3

    #@5
    const/4 v4, 0x3

    #@6
    if-ne v3, v4, :cond_0

    #@8
    .line 183
    const/4 v0, 0x0

    #@9
    .line 184
    .local v0, "dx":I
    const/4 v1, 0x0

    #@a
    .line 186
    .local v1, "dy":I
    const/4 v3, 0x1

    #@b
    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/lang/String;

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    .line 187
    const/4 v3, 0x2

    #@16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/lang/String;

    #@1c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v1

    #@20
    .line 193
    new-instance v3, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@22
    invoke-direct {v3, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    #@25
    .line 194
    int-to-float v4, v0

    #@26
    int-to-float v5, v1

    #@27
    const/4 v6, 0x0

    #@28
    .line 193
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {p2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2f
    .line 195
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@31
    return-object v3

    #@32
    .line 188
    :catch_0
    move-exception v2

    #@33
    .line 190
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MonkeyStub"

    #@36
    const-string/jumbo v4, "Got something that wasn\'t a number"

    #@39
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    .line 191
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@3e
    return-object v3

    #@3f
    .line 198
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@41
    return-object v3
.end method
