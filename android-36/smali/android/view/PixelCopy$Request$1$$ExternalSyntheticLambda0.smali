.class public final synthetic Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/PixelCopy$Request$1;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/PixelCopy$Request$1;Ljava/util/function/Consumer;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/PixelCopy$Request$1;

    iput-object p2, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput p3, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/PixelCopy$Request$1;

    iget-object v1, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iget v2, p0, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/PixelCopy$Request$1;->$r8$lambda$5DmwqFXzt2CBo7efPY-K2Q7rKyc(Landroid/view/PixelCopy$Request$1;Ljava/util/function/Consumer;I)V

    return-void
.end method
