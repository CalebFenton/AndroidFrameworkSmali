.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
.super Ljava/lang/Object;
.source "ParsedInstrumentation.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedComponent;


# virtual methods
.method public abstract blacklist getTargetPackage()Ljava/lang/String;
.end method

.method public abstract blacklist getTargetProcesses()Ljava/lang/String;
.end method

.method public abstract blacklist isFunctionalTest()Z
.end method

.method public abstract blacklist isHandleProfiling()Z
.end method
