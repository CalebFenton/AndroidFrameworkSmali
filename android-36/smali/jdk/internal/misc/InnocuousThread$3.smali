.class Ljdk/internal/misc/InnocuousThread$3;
.super Ljava/lang/Object;
.source "InnocuousThread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/misc/InnocuousThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ThreadGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$root:Ljava/lang/ThreadGroup;


# direct methods
.method constructor blacklist <init>(Ljava/lang/ThreadGroup;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Ljdk/internal/misc/InnocuousThread$3;->val$root:Ljava/lang/ThreadGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 171
    invoke-virtual {p0}, Ljdk/internal/misc/InnocuousThread$3;->run()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/ThreadGroup;
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/ThreadGroup;

    iget-object v1, p0, Ljdk/internal/misc/InnocuousThread$3;->val$root:Ljava/lang/ThreadGroup;

    const-string v2, "InnocuousThreadGroup"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-object v0
.end method
