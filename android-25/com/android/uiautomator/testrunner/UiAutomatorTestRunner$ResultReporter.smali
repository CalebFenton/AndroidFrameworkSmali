.class interface abstract Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResultReporter"
.end annotation


# virtual methods
.method public abstract print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
.end method

.method public abstract printUnexpectedError(Ljava/lang/Throwable;)V
.end method
