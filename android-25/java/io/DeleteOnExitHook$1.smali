.class final Ljava/io/DeleteOnExitHook$1;
.super Ljava/lang/Object;
.source "DeleteOnExitHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/DeleteOnExitHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-static {}, Ljava/io/DeleteOnExitHook;->runHooks()V

    #@3
    .line 42
    return-void
.end method
