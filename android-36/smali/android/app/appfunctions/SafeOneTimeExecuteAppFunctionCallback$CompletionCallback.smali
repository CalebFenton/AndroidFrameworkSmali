.class public interface abstract Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback$CompletionCallback;
.super Ljava/lang/Object;
.source "SafeOneTimeExecuteAppFunctionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletionCallback"
.end annotation


# virtual methods
.method public abstract blacklist finalizeOnError(Landroid/app/appfunctions/AppFunctionException;J)V
.end method

.method public abstract blacklist finalizeOnSuccess(Landroid/app/appfunctions/ExecuteAppFunctionResponse;J)V
.end method
