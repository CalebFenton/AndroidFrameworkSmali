.class Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;
.super Landroid/service/carrier/ICarrierMessagingService$Stub;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarrierMessagingWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierMessagingService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 926
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingService;Landroid/service/carrier/CarrierMessagingService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;-><init>(Landroid/service/carrier/CarrierMessagingService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 7
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;

    .line 991
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;

    invoke-direct {v1, p0, p4}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$6;-><init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/service/carrier/CarrierMessagingService;->onDownloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 997
    return-void
.end method

.method public greylist-max-o filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 12
    .param p1, "pdu"    # Landroid/service/carrier/MessagePdu;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I
    .param p5, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;

    .line 930
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    new-instance v5, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;

    invoke-direct {v5, p0, p5}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;-><init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "pdu":Landroid/service/carrier/MessagePdu;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "destPort":I
    .end local p4    # "subId":I
    .local v1, "pdu":Landroid/service/carrier/MessagePdu;
    .local v2, "format":Ljava/lang/String;
    .local v3, "destPort":I
    .local v4, "subId":I
    invoke-virtual/range {v0 .. v5}, Landroid/service/carrier/CarrierMessagingService;->onReceiveTextSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 937
    return-void
.end method

.method public greylist-max-o sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 14
    .param p1, "data"    # [B
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sendSmsFlag"    # I
    .param p6, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;

    .line 954
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;

    invoke-direct {v6, p0, p6}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$3;-><init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "data":[B
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "destPort":I
    .end local p5    # "sendSmsFlag":I
    .local v1, "data":[B
    .local v2, "subId":I
    .local v3, "destAddress":Ljava/lang/String;
    .local v4, "destPort":I
    .local v5, "sendSmsFlag":I
    invoke-virtual/range {v0 .. v6}, Landroid/service/carrier/CarrierMessagingService;->onSendDataSms([BILjava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 961
    return-void
.end method

.method public greylist-max-o sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 7
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;

    .line 980
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$5;

    invoke-direct {v1, p0, p4}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$5;-><init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/service/carrier/CarrierMessagingService;->onSendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 986
    return-void
.end method

.method public greylist-max-o sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 12
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .param p5, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/ICarrierMessagingCallback;",
            ")V"
        }
    .end annotation

    .line 966
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    new-instance v5, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;

    invoke-direct {v5, p0, p5}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$4;-><init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "sendSmsFlag":I
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "subId":I
    .local v3, "destAddress":Ljava/lang/String;
    .local v4, "sendSmsFlag":I
    invoke-virtual/range {v0 .. v5}, Landroid/service/carrier/CarrierMessagingService;->onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 975
    return-void
.end method

.method public greylist-max-o sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .param p5, "callback"    # Landroid/service/carrier/ICarrierMessagingCallback;

    .line 942
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->this$0:Landroid/service/carrier/CarrierMessagingService;

    new-instance v5, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$2;

    invoke-direct {v5, p0, p5}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$2;-><init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "sendSmsFlag":I
    .local v1, "text":Ljava/lang/String;
    .local v2, "subId":I
    .local v3, "destAddress":Ljava/lang/String;
    .local v4, "sendSmsFlag":I
    invoke-virtual/range {v0 .. v5}, Landroid/service/carrier/CarrierMessagingService;->onSendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 949
    return-void
.end method
