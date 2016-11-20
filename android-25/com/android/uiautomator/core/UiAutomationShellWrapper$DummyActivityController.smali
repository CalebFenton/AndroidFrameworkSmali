.class Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;
.super Landroid/app/IActivityController$Stub;
.source "UiAutomationShellWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/UiAutomationShellWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/UiAutomationShellWrapper;


# direct methods
.method private constructor <init>(Lcom/android/uiautomator/core/UiAutomationShellWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;->this$0:Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    #@2
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/uiautomator/core/UiAutomationShellWrapper;Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiAutomationShellWrapper$DummyActivityController;-><init>(Lcom/android/uiautomator/core/UiAutomationShellWrapper;)V

    #@3
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 103
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    return v0
.end method
