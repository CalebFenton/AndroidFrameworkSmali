.class public Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
.super Landroid/service/carrier/ICarrierService$Stub;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICarrierServiceWrapper"
.end annotation


# static fields
.field public static final greylist-max-o KEY_CONFIG_BUNDLE:Ljava/lang/String; = "config_bundle"

.field public static final greylist-max-o RESULT_ERROR:I = 0x1

.field public static final greylist-max-o RESULT_OK:I


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/carrier/CarrierService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/carrier/CarrierService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 250
    iget-object v0, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    # invokes: Landroid/service/carrier/CarrierService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Landroid/service/carrier/CarrierService;->access$000(Landroid/service/carrier/CarrierService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public blacklist getCarrierConfig(ILandroid/service/carrier/CarrierIdentifier;Landroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "id"    # Landroid/service/carrier/CarrierIdentifier;
    .param p3, "result"    # Landroid/os/ResultReceiver;

    .line 238
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 239
    .local v0, "subId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "config_bundle"

    iget-object v3, p0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;->this$0:Landroid/service/carrier/CarrierService;

    invoke-virtual {v3, v0, p2}, Landroid/service/carrier/CarrierService;->onLoadConfig(ILandroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 245
    .end local v0    # "subId":I
    .end local v1    # "data":Landroid/os/Bundle;
    goto :goto_3b

    .line 242
    :catch_19
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in onLoadConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarrierService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method
