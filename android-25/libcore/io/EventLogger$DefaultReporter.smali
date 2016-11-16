.class final Llibcore/io/EventLogger$DefaultReporter;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Llibcore/io/EventLogger$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/EventLogger$DefaultReporter;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Llibcore/io/EventLogger$DefaultReporter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public varargs report(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "list"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 57
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8
    .line 58
    const/4 v2, 0x0

    #@9
    array-length v3, p2

    #@a
    :goto_0
    if-ge v2, v3, :cond_0

    #@c
    aget-object v0, p2, v2

    #@e
    .line 59
    .local v0, "o":Ljava/lang/Object;
    const-string/jumbo v4, ","

    #@11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 58
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 62
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@23
    .line 55
    return-void
.end method
