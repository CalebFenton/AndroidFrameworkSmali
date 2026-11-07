.class final Ljava/util/logging/LogManager$RootLogger;
.super Ljava/util/logging/Logger;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootLogger"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor blacklist <init>(Ljava/util/logging/LogManager;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1645
    iput-object p1, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    .line 1649
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 1650
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method greylist-max-o accessCheckedHandlers()[Ljava/util/logging/Handler;
    .registers 2

    .line 1673
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$minitializeGlobalHandlers(Ljava/util/logging/LogManager;)V

    .line 1674
    invoke-super {p0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api addHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 1661
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$minitializeGlobalHandlers(Ljava/util/logging/LogManager;)V

    .line 1662
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 1663
    return-void
.end method

.method public whitelist test-api log(Ljava/util/logging/LogRecord;)V
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 1655
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$minitializeGlobalHandlers(Ljava/util/logging/LogManager;)V

    .line 1656
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1657
    return-void
.end method

.method public whitelist test-api removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 1667
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-$$Nest$minitializeGlobalHandlers(Ljava/util/logging/LogManager;)V

    .line 1668
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 1669
    return-void
.end method
