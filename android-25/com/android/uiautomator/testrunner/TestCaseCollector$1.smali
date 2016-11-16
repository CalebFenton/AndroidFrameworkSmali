.class Lcom/android/uiautomator/testrunner/TestCaseCollector$1;
.super Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.source "TestCaseCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/testrunner/TestCaseCollector;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/testrunner/TestCaseCollector;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .param p2, "val$message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->this$0:Lcom/android/uiautomator/testrunner/TestCaseCollector;

    #@2
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->val$message:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected runTest()V
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->val$message:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;->fail(Ljava/lang/String;)V

    #@5
    .line 124
    return-void
.end method
