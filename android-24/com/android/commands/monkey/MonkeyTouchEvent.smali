.class public Lcom/android/commands/monkey/MonkeyTouchEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTouchEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 27
    const/4 v0, 0x1

    #@1
    const/16 v1, 0x1002

    #@3
    invoke-direct {p0, v0, v1, p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(III)V

    #@6
    .line 26
    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 32
    const-string/jumbo v0, "Touch"

    #@3
    return-object v0
.end method
