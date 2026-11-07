.class public final Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;
.super Ljdk/internal/ref/PhantomCleanable;
.source "CleanerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/ref/CleanerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhantomCleanableRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljdk/internal/ref/PhantomCleanable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist action:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 206
    invoke-direct {p0}, Ljdk/internal/ref/PhantomCleanable;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;->action:Ljava/lang/Runnable;

    .line 208
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/ref/Cleaner;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cleaner"    # Ljava/lang/ref/Cleaner;
    .param p3, "action"    # Ljava/lang/Runnable;

    .line 198
    invoke-direct {p0, p1, p2}, Ljdk/internal/ref/PhantomCleanable;-><init>(Ljava/lang/Object;Ljava/lang/ref/Cleaner;)V

    .line 199
    iput-object p3, p0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;->action:Ljava/lang/Runnable;

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clear"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist performCleanup()V
    .registers 2

    .line 212
    iget-object v0, p0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 213
    return-void
.end method
