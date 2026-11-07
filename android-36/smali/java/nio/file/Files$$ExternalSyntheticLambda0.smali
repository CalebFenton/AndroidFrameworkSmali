.class public final synthetic Ljava/nio/file/Files$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/Closeable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/Files$$ExternalSyntheticLambda0;->f$0:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/nio/file/Files$$ExternalSyntheticLambda0;->f$0:Ljava/io/Closeable;

    invoke-static {v0}, Ljava/nio/file/Files;->lambda$asUncheckedRunnable$0(Ljava/io/Closeable;)V

    return-void
.end method
