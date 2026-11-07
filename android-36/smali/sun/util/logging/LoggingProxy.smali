.class public interface abstract Lsun/util/logging/LoggingProxy;
.super Ljava/lang/Object;
.source "LoggingProxy.java"


# virtual methods
.method public abstract blacklist getLevel(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract blacklist getLevelName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract blacklist getLevelValue(Ljava/lang/Object;)I
.end method

.method public abstract blacklist getLogger(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract blacklist getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getLoggerNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs abstract blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract blacklist parseLevel(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract blacklist setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
.end method
