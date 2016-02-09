.class public final Llibcore/io/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/EventLogger$Reporter;,
        Llibcore/io/EventLogger$DefaultReporter;
    }
.end annotation


# static fields
.field private static volatile REPORTER:Llibcore/io/EventLogger$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 24
    new-instance v0, Llibcore/io/EventLogger$DefaultReporter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Llibcore/io/EventLogger$DefaultReporter;-><init>(Llibcore/io/EventLogger$DefaultReporter;)V

    #@6
    sput-object v0, Llibcore/io/EventLogger;->REPORTER:Llibcore/io/EventLogger$Reporter;

    #@8
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getReporter()Llibcore/io/EventLogger$Reporter;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Llibcore/io/EventLogger;->REPORTER:Llibcore/io/EventLogger$Reporter;

    #@2
    return-object v0
.end method

.method public static setReporter(Llibcore/io/EventLogger$Reporter;)V
    .locals 2
    .param p0, "reporter"    # Llibcore/io/EventLogger$Reporter;

    #@0
    .prologue
    .line 30
    if-nez p0, :cond_0

    #@2
    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "reporter == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 33
    :cond_0
    sput-object p0, Llibcore/io/EventLogger;->REPORTER:Llibcore/io/EventLogger$Reporter;

    #@d
    .line 29
    return-void
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "code"    # I
    .param p1, "list"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 67
    invoke-static {}, Llibcore/io/EventLogger;->getReporter()Llibcore/io/EventLogger$Reporter;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0, p1}, Llibcore/io/EventLogger$Reporter;->report(I[Ljava/lang/Object;)V

    #@7
    .line 66
    return-void
.end method
