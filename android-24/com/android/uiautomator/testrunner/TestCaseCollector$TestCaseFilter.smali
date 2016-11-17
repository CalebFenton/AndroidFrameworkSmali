.class public interface abstract Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;
.super Ljava/lang/Object;
.source "TestCaseCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/TestCaseCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TestCaseFilter"
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract accept(Ljava/lang/reflect/Method;)Z
.end method
