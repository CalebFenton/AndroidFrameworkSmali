.class public interface abstract Lcom/android/internal/protolog/ProtoLogConfigurationService;
.super Ljava/lang/Object;
.source "ProtoLogConfigurationService.java"

# interfaces
.implements Lcom/android/internal/protolog/IProtoLogConfigurationService;


# virtual methods
.method public varargs abstract blacklist disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public varargs abstract blacklist enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract blacklist getGroups()[Ljava/lang/String;
.end method

.method public abstract blacklist isLoggingToLogcat(Ljava/lang/String;)Z
.end method
