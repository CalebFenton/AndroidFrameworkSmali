.class Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
.super Ljava/lang/Object;
.source "CallbackFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/base/CallbackFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackRunnable"
.end annotation


# instance fields
.field private mFilter:Landroid/filterfw/core/Filter;

.field private mFrame:Landroid/filterfw/core/Frame;

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mUserData:Ljava/lang/Object;

.field final synthetic this$0:Landroid/filterpacks/base/CallbackFilter;


# direct methods
.method public constructor <init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterpacks/base/CallbackFilter;
    .param p2, "listener"    # Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .param p3, "filter"    # Landroid/filterfw/core/Filter;
    .param p4, "frame"    # Landroid/filterfw/core/Frame;
    .param p5, "userData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->this$0:Landroid/filterpacks/base/CallbackFilter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 53
    iput-object p2, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@7
    .line 54
    iput-object p3, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFilter:Landroid/filterfw/core/Filter;

    #@9
    .line 55
    iput-object p4, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    #@b
    .line 56
    iput-object p5, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mUserData:Ljava/lang/Object;

    #@d
    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@2
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFilter:Landroid/filterfw/core/Filter;

    #@4
    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    #@6
    iget-object v3, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mUserData:Ljava/lang/Object;

    #@8
    invoke-interface {v0, v1, v2, v3}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    #@b
    .line 61
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;->mFrame:Landroid/filterfw/core/Frame;

    #@d
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@10
    .line 59
    return-void
.end method
