.class Lcom/google/android/media/effect/effects/FaceliftEffect$1;
.super Ljava/lang/Object;
.source "FaceliftEffect.java"

# interfaces
.implements Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/media/effect/effects/FaceliftEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/media/effect/effects/FaceliftEffect;


# direct methods
.method constructor <init>(Lcom/google/android/media/effect/effects/FaceliftEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/media/effect/effects/FaceliftEffect;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceliftEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceliftEffect;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "result"    # Landroid/filterfw/core/Frame;
    .param p3, "userData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceliftEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceliftEffect;

    #@2
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Lcom/google/android/media/effect/effects/FaceliftEffect;->-set0(Lcom/google/android/media/effect/effects/FaceliftEffect;Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@9
    .line 175
    return-void
.end method
