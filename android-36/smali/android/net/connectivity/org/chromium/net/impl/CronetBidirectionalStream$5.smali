.class Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->failWithException(Landroid/net/connectivity/org/chromium/net/CronetException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

.field final synthetic blacklist val$exception:Landroid/net/connectivity/org/chromium/net/CronetException;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1168
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;->val$exception:Landroid/net/connectivity/org/chromium/net/CronetException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1171
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream$5;->val$exception:Landroid/net/connectivity/org/chromium/net/CronetException;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;->-$$Nest$mfailWithExceptionOnExecutor(Landroid/net/connectivity/org/chromium/net/impl/CronetBidirectionalStream;Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 1172
    return-void
.end method
