.class Lcom/android/internal/telephony/data/DataServiceManager$1;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataServiceManager;->requestNetworkValidation(ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataServiceManager;

.field final synthetic blacklist val$onCompleteMessage:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;)V
    .registers 3
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

    .line 914
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$1;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager$1;->val$onCompleteMessage:Landroid/os/Message;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$1;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$1;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$1;->val$onCompleteMessage:Landroid/os/Message;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method
