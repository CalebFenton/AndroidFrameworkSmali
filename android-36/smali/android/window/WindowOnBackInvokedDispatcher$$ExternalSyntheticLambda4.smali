.class public final synthetic Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/PrintWriter;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;)V

    return-void
.end method
