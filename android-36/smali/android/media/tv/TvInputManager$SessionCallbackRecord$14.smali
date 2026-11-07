.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic blacklist val$bottom:I

.field final synthetic blacklist val$left:I

.field final synthetic blacklist val$right:I

.field final synthetic blacklist val$top:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 1324
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$left:I

    iput p3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$top:I

    iput p4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$right:I

    iput p5, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 1327
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$left:I

    iget v4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$top:I

    iget v5, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$right:I

    iget v6, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$bottom:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/tv/TvInputManager$SessionCallback;->onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V

    .line 1328
    return-void
.end method
