.class public Lcom/android/commands/monkey/MonkeySourceNetwork;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    }
.end annotation


# static fields
.field private static final COMMAND_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final DONE:Ljava/lang/String; = "done"

.field public static final EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field public static final ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private static final ERROR_STR:Ljava/lang/String; = "ERROR"

.field public static final MONKEY_NETWORK_VERSION:I = 0x2

.field public static final OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private static final OK_STR:Ljava/lang/String; = "OK"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final TAG:Ljava/lang/String; = "MonkeyStub"

.field private static deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;


# instance fields
.field private clientSocket:Ljava/net/Socket;

.field private final commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

.field private input:Ljava/io/BufferedReader;

.field private output:Ljava/io/PrintWriter;

.field private serverSocket:Ljava/net/ServerSocket;

.field private started:Z


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    .locals 0

    #@0
    sput-object p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    #@2
    return-object p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    #@0
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .locals 1
    .param p0, "keyName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->getKeyCode(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 87
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    #@8
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@a
    .line 88
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@c
    invoke-direct {v0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    #@f
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@11
    .line 89
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@13
    .line 90
    const-string/jumbo v1, "Invalid Argument"

    #@16
    .line 89
    invoke-direct {v0, v2, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@19
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@1b
    .line 449
    new-instance v0, Ljava/util/HashMap;

    #@1d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@20
    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@22
    .line 453
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@24
    const-string/jumbo v1, "flip"

    #@27
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;

    #@29
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;)V

    #@2c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 454
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@31
    const-string/jumbo v1, "touch"

    #@34
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;

    #@36
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;)V

    #@39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 455
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@3e
    const-string/jumbo v1, "trackball"

    #@41
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;

    #@43
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;)V

    #@46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 456
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@4b
    const-string/jumbo v1, "key"

    #@4e
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;

    #@50
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;)V

    #@53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 457
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@58
    const-string/jumbo v1, "sleep"

    #@5b
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;

    #@5d
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;)V

    #@60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 458
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@65
    const-string/jumbo v1, "wake"

    #@68
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;

    #@6a
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;)V

    #@6d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 459
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@72
    const-string/jumbo v1, "tap"

    #@75
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;

    #@77
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;)V

    #@7a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 460
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@7f
    const-string/jumbo v1, "press"

    #@82
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;

    #@84
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;)V

    #@87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 461
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@8c
    const-string/jumbo v1, "type"

    #@8f
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;

    #@91
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;)V

    #@94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 462
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@99
    const-string/jumbo v1, "listvar"

    #@9c
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;

    #@9e
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;-><init>()V

    #@a1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 463
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@a6
    const-string/jumbo v1, "getvar"

    #@a9
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;

    #@ab
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;-><init>()V

    #@ae
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    .line 464
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@b3
    const-string/jumbo v1, "listviews"

    #@b6
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;

    #@b8
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;-><init>()V

    #@bb
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 465
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@c0
    const-string/jumbo v1, "queryview"

    #@c3
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;

    #@c5
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;-><init>()V

    #@c8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 466
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@cd
    const-string/jumbo v1, "getrootview"

    #@d0
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;

    #@d2
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;-><init>()V

    #@d5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    .line 467
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@da
    const-string/jumbo v1, "getviewswithtext"

    #@dd
    .line 468
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;

    #@df
    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;-><init>()V

    #@e2
    .line 467
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e5
    .line 469
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@e7
    const-string/jumbo v1, "deferreturn"

    #@ea
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;

    #@ec
    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;)V

    #@ef
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f2
    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 547
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;)V

    #@a
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    #@c
    .line 551
    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    #@e
    .line 559
    new-instance v0, Ljava/net/ServerSocket;

    #@10
    .line 561
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@13
    move-result-object v1

    #@14
    .line 559
    invoke-direct {v0, p1, v2, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@17
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    #@19
    .line 556
    return-void
.end method

.method private static commandLineSplit(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 619
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 620
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    #@7
    invoke-direct {v4, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@a
    .line 622
    .local v4, "tok":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    #@b
    .line 623
    .local v1, "insideQuote":Z
    new-instance v2, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    .line 624
    .local v2, "quotedWord":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_3

    #@16
    .line 625
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 626
    .local v0, "cur":Ljava/lang/String;
    if-nez v1, :cond_0

    #@1c
    const-string/jumbo v6, "\""

    #@1f
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    .line 628
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 629
    const/4 v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 630
    :cond_0
    if-eqz v1, :cond_2

    #@30
    .line 632
    const-string/jumbo v6, "\""

    #@33
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_1

    #@39
    .line 633
    const/4 v1, 0x0

    #@3a
    .line 634
    const-string/jumbo v6, " "

    #@3d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v6

    #@41
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    .line 635
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 638
    .local v5, "word":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@4f
    move-result v6

    #@50
    add-int/lit8 v6, v6, -0x1

    #@52
    const/4 v7, 0x1

    #@53
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_0

    #@5b
    .line 640
    .end local v5    # "word":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, " "

    #@5e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    move-result-object v6

    #@62
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    goto :goto_0

    #@6a
    .line 643
    :cond_2
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    goto :goto_0

    #@72
    .line 646
    .end local v0    # "cur":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private static getKeyCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "keyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 243
    const/4 v1, -0x1

    #@1
    .line 245
    .local v1, "keyCode":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result v1

    #@5
    .line 263
    :cond_0
    return v1

    #@6
    .line 246
    :catch_0
    move-exception v0

    #@7
    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    .line 250
    if-nez v1, :cond_0

    #@d
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "KEYCODE_"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    #@28
    move-result v1

    #@29
    .line 257
    if-nez v1, :cond_0

    #@2b
    .line 259
    const/4 v2, -0x1

    #@2c
    return v2
.end method

.method private handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V
    .locals 1
    .param p1, "ret"    # Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@0
    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 668
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 669
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk(Ljava/lang/String;)V

    #@13
    .line 666
    :goto_0
    return-void

    #@14
    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    #@17
    goto :goto_0

    #@18
    .line 674
    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 675
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError(Ljava/lang/String;)V

    #@25
    goto :goto_0

    #@26
    .line 677
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError()V

    #@29
    goto :goto_0
.end method

.method private static replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 605
    const-string/jumbo v0, "\\\""

    #@3
    const-string/jumbo v1, "\""

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private returnError()V
    .locals 2

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "ERROR"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 766
    return-void
.end method

.method private returnError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "ERROR"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 777
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@a
    const-string/jumbo v1, ":"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 778
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@12
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 775
    return-void
.end method

.method private returnOk()V
    .locals 2

    #@0
    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "OK"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 784
    return-void
.end method

.method private returnOk(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "OK"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 795
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@a
    const-string/jumbo v1, ":"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 796
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@12
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 793
    return-void
.end method

.method private startServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    #@2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    #@8
    .line 577
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->setup()V

    #@b
    .line 579
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    #@e
    .line 581
    new-instance v0, Ljava/io/BufferedReader;

    #@10
    new-instance v1, Ljava/io/InputStreamReader;

    #@12
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    #@14
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@1b
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1e
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    #@20
    .line 583
    new-instance v0, Ljava/io/PrintWriter;

    #@22
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    #@24
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x1

    #@29
    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@2c
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@2e
    .line 571
    return-void
.end method

.method private stopServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    #@2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@5
    .line 591
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->teardown()V

    #@8
    .line 592
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    #@a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    #@d
    .line 593
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    #@f
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@12
    .line 594
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    #@15
    .line 589
    return-void
.end method

.method private translateCommand(Ljava/lang/String;)V
    .locals 7
    .param p1, "commandLine"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 655
    const-string/jumbo v3, "MonkeyStub"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "translateCommand: "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 656
    invoke-static {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandLineSplit(Ljava/lang/String;)Ljava/util/List;

    #@1e
    move-result-object v1

    #@1f
    .line 657
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@22
    move-result v3

    #@23
    if-lez v3, :cond_0

    #@25
    .line 658
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    #@27
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    #@31
    .line 659
    .local v0, "command":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v0, :cond_0

    #@33
    .line 660
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    #@35
    invoke-interface {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@38
    move-result-object v2

    #@39
    .line 661
    .local v2, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-direct {p0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    #@3c
    .line 654
    .end local v0    # "command":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v2    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_0
    return-void
.end method

.method private static final wake()Z
    .locals 6

    #@0
    .prologue
    .line 438
    const-string/jumbo v2, "power"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    #@a
    move-result-object v1

    #@b
    .line 440
    .local v1, "pm":Landroid/os/IPowerManager;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@e
    move-result-wide v2

    #@f
    const-string/jumbo v4, "Monkey"

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 445
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 441
    :catch_0
    move-exception v0

    #@19
    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MonkeyStub"

    #@1c
    const-string/jumbo v3, "Got remote exception"

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 443
    const/4 v2, 0x0

    #@23
    return v2
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 684
    iget-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 686
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->startServer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 691
    const/4 v4, 0x1

    #@9
    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    #@b
    .line 700
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    #@d
    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@10
    move-result-object v2

    #@11
    .line 701
    .local v2, "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    if-eqz v2, :cond_1

    #@13
    .line 703
    return-object v2

    #@14
    .line 687
    .end local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :catch_0
    move-exception v1

    #@15
    .line 688
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MonkeyStub"

    #@18
    const-string/jumbo v5, "Got IOException from server"

    #@1b
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 689
    return-object v6

    #@1f
    .line 709
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_1
    :try_start_2
    sget-object v4, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 710
    const-string/jumbo v4, "MonkeyStub"

    #@26
    const-string/jumbo v5, "Waiting for event"

    #@29
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 711
    sget-object v4, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    #@2e
    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@31
    move-result-object v3

    #@32
    .line 712
    .local v3, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    const/4 v4, 0x0

    #@33
    sput-object v4, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    #@35
    .line 713
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    #@38
    .line 716
    .end local v3    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_2
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    #@3a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 717
    .local v0, "command":Ljava/lang/String;
    if-nez v0, :cond_3

    #@40
    .line 718
    const-string/jumbo v4, "MonkeyStub"

    #@43
    const-string/jumbo v5, "Connection dropped."

    #@46
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 721
    const-string/jumbo v0, "done"

    #@4c
    .line 724
    :cond_3
    const-string/jumbo v4, "done"

    #@4f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_4

    #@55
    .line 727
    :try_start_3
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->stopServer()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@58
    .line 734
    :try_start_4
    new-instance v4, Lcom/android/commands/monkey/MonkeyNoopEvent;

    #@5a
    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeyNoopEvent;-><init>()V

    #@5d
    return-object v4

    #@5e
    .line 728
    :catch_1
    move-exception v1

    #@5f
    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "MonkeyStub"

    #@62
    const-string/jumbo v5, "Got IOException shutting down!"

    #@65
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 730
    return-object v6

    #@69
    .line 738
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const-string/jumbo v4, "quit"

    #@6c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v4

    #@70
    if-eqz v4, :cond_5

    #@72
    .line 740
    const-string/jumbo v4, "MonkeyStub"

    #@75
    const-string/jumbo v5, "Quit requested"

    #@78
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 742
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    #@7e
    .line 743
    return-object v6

    #@7f
    .line 749
    :cond_5
    const-string/jumbo v4, "#"

    #@82
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@85
    move-result v4

    #@86
    if-nez v4, :cond_0

    #@88
    .line 755
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->translateCommand(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@8b
    goto :goto_0

    #@8c
    .line 757
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "queuedEvent":Lcom/android/commands/monkey/MonkeyEvent;
    :catch_2
    move-exception v1

    #@8d
    .line 758
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "MonkeyStub"

    #@90
    const-string/jumbo v5, "Exception: "

    #@93
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@96
    .line 759
    return-object v6
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 799
    return-void
.end method

.method public validate()Z
    .locals 1

    #@0
    .prologue
    .line 805
    const/4 v0, 0x1

    #@1
    return v0
.end method
