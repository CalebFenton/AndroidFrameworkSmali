.class public Landroid/view/WindowManager$BadTokenException;
.super Ljava/lang/RuntimeException;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadTokenException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 62
    return-void
.end method
