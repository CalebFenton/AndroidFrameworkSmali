.class Landroid/media/tv/ad/TvAdService$Session$9;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdService$Session;->notifySessionStateChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$err:I

.field final synthetic blacklist val$state:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdService$Session;II)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdService$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 672
    iput p2, p0, Landroid/media/tv/ad/TvAdService$Session$9;->val$state:I

    iput p3, p0, Landroid/media/tv/ad/TvAdService$Session$9;->val$err:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 681
    return-void
.end method
