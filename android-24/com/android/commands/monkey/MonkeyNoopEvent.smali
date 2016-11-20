.class public Lcom/android/commands/monkey/MonkeyNoopEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyNoopEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@5
    .line 30
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 3
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 37
    if-le p3, v2, :cond_0

    #@3
    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    const-string/jumbo v1, "NOOP"

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b
    .line 40
    :cond_0
    return v2
.end method
