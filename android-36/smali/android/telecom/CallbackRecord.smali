.class Landroid/telecom/CallbackRecord;
.super Ljava/lang/Object;
.source "CallbackRecord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "this":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<TT;>;"
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/telecom/CallbackRecord;->mCallback:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Landroid/telecom/CallbackRecord;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public greylist-max-o getCallback()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<TT;>;"
    iget-object v0, p0, Landroid/telecom/CallbackRecord;->mCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 42
    .local p0, "this":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<TT;>;"
    iget-object v0, p0, Landroid/telecom/CallbackRecord;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
