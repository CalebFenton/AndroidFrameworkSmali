.class Lcom/android/internal/telephony/CarrierServiceBindHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-$$Nest$mlogdWithLocalLog(Lcom/android/internal/telephony/CarrierServiceBindHelper;Ljava/lang/String;)V

    .line 92
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p1, 0x0

    .line 95
    :goto_23
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object p2, p2, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_3d

    .line 96
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object p2, p2, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-virtual {p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->rebind()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_3d
    return-void
.end method
