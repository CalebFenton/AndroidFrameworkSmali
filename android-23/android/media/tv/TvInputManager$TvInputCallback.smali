.class public abstract Landroid/media/tv/TvInputManager$TvInputCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 596
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 607
    return-void
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 585
    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 620
    return-void
.end method
