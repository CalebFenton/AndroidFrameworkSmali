.class Ljava/io/DeleteOnExitHook$1;
.super Ljava/lang/Thread;
.source "DeleteOnExitHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/DeleteOnExitHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 42
    invoke-static {}, Ljava/io/DeleteOnExitHook;->runHooks()V

    .line 43
    return-void
.end method
