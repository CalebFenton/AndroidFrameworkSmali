.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;
.super Ljava/lang/Object;
.source "MbmsGroupCallServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;II)V
    .registers 4
    .param p1, "this$1"    # Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;
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

    .line 167
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;->val$uid:I

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 170
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object v0, v0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;->val$uid:I

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$4;->val$subscriptionId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    .line 171
    return-void
.end method
