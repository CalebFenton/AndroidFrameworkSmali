.class public interface abstract Lcom/android/internal/logging/UiEventLogger;
.super Ljava/lang/Object;
.source "UiEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    }
.end annotation


# virtual methods
.method public abstract blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
.end method

.method public abstract blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
.end method

.method public abstract blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
.end method

.method public abstract blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
.end method

.method public abstract blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
.end method

.method public abstract blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
.end method
