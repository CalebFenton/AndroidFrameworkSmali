.class public final synthetic Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0}, Landroid/view/PixelCopy$Request;->lambda$request$0(Ljava/util/function/Consumer;)V

    return-void
.end method
