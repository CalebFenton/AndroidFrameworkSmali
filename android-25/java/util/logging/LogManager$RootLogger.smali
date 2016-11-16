.class Ljava/util/logging/LogManager$RootLogger;
.super Ljava/util/logging/Logger;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootLogger"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    .line 1402
    iput-object p1, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    #@2
    .line 1403
    const-string/jumbo v0, ""

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1404
    invoke-static {}, Ljava/util/logging/LogManager;->-get0()Ljava/util/logging/Level;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$RootLogger;->setLevel(Ljava/util/logging/Level;)V

    #@10
    .line 1402
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 1414
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    #@5
    .line 1415
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    #@8
    .line 1413
    return-void
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .locals 1

    #@0
    .prologue
    .line 1424
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    #@5
    .line 1425
    invoke-super {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 1409
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    #@5
    .line 1410
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@8
    .line 1407
    return-void
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 1419
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    #@2
    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    #@5
    .line 1420
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    #@8
    .line 1418
    return-void
.end method
