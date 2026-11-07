.class Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

.field final synthetic blacklist val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

.field final synthetic blacklist val$token:I


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;I)V
    .registers 4
    .param p1, "this$1"    # Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
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

    .line 376
    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iput-object p2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    iput p3, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 382
    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v0, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$token:I

    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->val$cw:Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v2, v2, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v3}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fgetmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/telecom/CallerInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Landroid/telecom/CallerInfo;)V

    .line 383
    return-void
.end method
