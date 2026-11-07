.class Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;
.super Ljava/lang/Object;
.source "InternalGroupCallSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalGroupCallSessionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/mbms/MbmsGroupCallSessionCallback;->onMiddlewareReady()V

    .line 105
    return-void
.end method
