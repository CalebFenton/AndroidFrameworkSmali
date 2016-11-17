.class public interface abstract Lsun/util/logging/LoggingProxy;
.super Ljava/lang/Object;
.source "LoggingProxy.java"


# virtual methods
.method public abstract getLevel(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getLevelName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getLevelValue(Ljava/lang/Object;)I
.end method

.method public abstract getLogger(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLoggerNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract parseLevel(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
.end method
