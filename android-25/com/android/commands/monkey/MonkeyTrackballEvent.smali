.class public Lcom/android/commands/monkey/MonkeyTrackballEvent;
.super Lcom/android/commands/monkey/MonkeyMotionEvent;
.source "MonkeyTrackballEvent.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    .line 26
    const/4 v0, 0x2

    #@1
    const v1, 0x10004

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(III)V

    #@7
    .line 25
    return-void
.end method


# virtual methods
.method protected getTypeLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "Trackball"

    #@3
    return-object v0
.end method
