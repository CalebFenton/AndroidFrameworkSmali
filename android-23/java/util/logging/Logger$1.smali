.class final Ljava/util/logging/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ldalvik/system/DalvikLogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/util/logging/Logger;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/util/logging/Level;
    .param p4, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/util/logging/LogRecord;

    #@2
    invoke-direct {v0, p3, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@5
    .line 79
    .local v0, "record":Ljava/util/logging/LogRecord;
    invoke-static {p1}, Ljava/util/logging/Logger;->-get0(Ljava/util/logging/Logger;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    #@c
    .line 80
    invoke-static {p1, v0}, Ljava/util/logging/Logger;->-wrap0(Ljava/util/logging/Logger;Ljava/util/logging/LogRecord;)V

    #@f
    .line 81
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    #@12
    .line 77
    return-void
.end method
