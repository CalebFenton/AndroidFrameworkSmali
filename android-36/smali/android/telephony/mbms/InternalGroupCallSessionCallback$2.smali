.class Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;
.super Ljava/lang/Object;
.source "InternalGroupCallSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

.field final synthetic blacklist val$availableSais:Ljava/util/List;

.field final synthetic blacklist val$currentSais:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalGroupCallSessionCallback;
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

    .line 63
    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;->val$currentSais:Ljava/util/List;

    iput-object p3, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;->val$availableSais:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 66
    iget-object v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;->val$currentSais:Ljava/util/List;

    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;->val$availableSais:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroid/telephony/mbms/MbmsGroupCallSessionCallback;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V

    .line 67
    return-void
.end method
