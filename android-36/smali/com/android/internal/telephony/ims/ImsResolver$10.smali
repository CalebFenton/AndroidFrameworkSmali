.class Lcom/android/internal/telephony/ims/ImsResolver$10;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete called for name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$smprintFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mhandleFeaturesChanged(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method public blacklist onError(Landroid/content/ComponentName;)V
    .registers 5

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "returned with an error result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError - dynamic query error for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    const/16 v0, 0x1388

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mscheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public blacklist onPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 6

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPermanentError: component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermanentError - error for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 628
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$10;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    .line 629
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0xa

    .line 628
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 629
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
