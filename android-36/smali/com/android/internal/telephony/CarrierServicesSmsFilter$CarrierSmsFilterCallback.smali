.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilterCallback"
.end annotation


# instance fields
.field private final blacklist mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

.field private final blacklist mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

.field private blacklist mIsOnFilterCompleteCalled:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Landroid/service/carrier/CarrierMessagingServiceWrapper;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    .line 294
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mIsOnFilterCompleteCalled:Z

    .line 296
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist onDownloadMmsComplete(I)V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadMmsComplete: Unexpected call from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with result: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onReceiveSmsComplete(I)V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierSmsFilterCallback::onFilterComplete: Called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 308
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mIsOnFilterCompleteCalled:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mIsOnFilterCompleteCalled:Z

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mCarrierMessagingServiceWrapper:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-virtual {v0}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->onFilterComplete(ILcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    :cond_31
    return-void
.end method

.method public whitelist onSendMmsComplete(I[B)V
    .registers 5

    .line 329
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendMmsComplete: Unexpected call from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with result: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onSendMultipartSmsComplete(I[I)V
    .registers 5

    .line 323
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendMultipartSmsComplete: Unexpected call from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with result: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onSendSmsComplete(II)V
    .registers 5

    .line 317
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSmsComplete: Unexpected call from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with result: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mloge(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method
