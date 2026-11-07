.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 598
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 599
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 600
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "message"    # Landroid/os/Message;

    .line 605
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 606
    .local v3, "slotIndex":I
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 608
    .local v4, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_24a

    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v16, "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    goto/16 :goto_246

    .line 739
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_1d
    if-nez v4, :cond_23

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 740
    :cond_23
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$ValidationRequest;

    .line 741
    .local v0, "validationRequest":Landroid/telephony/data/DataService$ValidationRequest;
    iget v5, v0, Landroid/telephony/data/DataService$ValidationRequest;->cid:I

    iget-object v6, v0, Landroid/telephony/data/DataService$ValidationRequest;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Landroid/telephony/data/DataService$ValidationRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 745
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-static {v8}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v7

    .line 741
    invoke-virtual {v4, v5, v6, v7}, Landroid/telephony/data/DataService$DataServiceProvider;->requestNetworkValidation(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 723
    .end local v0    # "validationRequest":Landroid/telephony/data/DataService$ValidationRequest;
    :pswitch_40
    if-nez v4, :cond_46

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 724
    :cond_46
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    .line 727
    .local v5, "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :try_start_4b
    iget-object v0, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_57

    .line 728
    iget-object v0, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v6, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 729
    invoke-interface {v0, v6}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto :goto_5e

    .line 731
    :cond_57
    iget-object v0, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v6, v5, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 732
    invoke-interface {v0, v6}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5e} :catch_62

    .line 736
    :goto_5e
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 734
    :catch_62
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to call onApnUnthrottled. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 718
    .end local v5    # "apnUnthrottledIndication":Landroid/telephony/data/DataService$ApnUnthrottledIndication;
    :pswitch_7f
    if-nez v4, :cond_85

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 719
    :cond_85
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 720
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 721
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 714
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_90
    if-nez v4, :cond_96

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 715
    :cond_96
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 716
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 707
    :pswitch_a1
    if-nez v4, :cond_a7

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 708
    :cond_a7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 709
    .local v0, "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 710
    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_b9

    .line 711
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_ba

    :cond_b9
    nop

    .line 709
    :goto_ba
    invoke-virtual {v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 712
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 700
    .end local v0    # "cReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_c1
    if-nez v4, :cond_c7

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 701
    :cond_c7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;

    .line 702
    .local v0, "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    iget v6, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->cid:I

    .line 703
    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v7, :cond_d9

    .line 704
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v7, v0, Landroid/telephony/data/DataService$BeginCancelHandoverRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v7}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_da

    :cond_d9
    nop

    .line 702
    :goto_da
    invoke-virtual {v4, v6, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->startHandover(ILandroid/telephony/data/DataServiceCallback;)V

    .line 705
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 690
    .end local v0    # "bReq":Landroid/telephony/data/DataService$BeginCancelHandoverRequest;
    :pswitch_e1
    if-nez v4, :cond_e7

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 691
    :cond_e7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 694
    .local v5, "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :try_start_ec
    iget-object v0, v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object v6, v5, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, v6}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_f3} :catch_f7

    .line 697
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 695
    :catch_f7
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to call onDataCallListChanged. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/data/DataService;->-$$Nest$mloge(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    .line 698
    .end local v0    # "e":Landroid/os/RemoteException;
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 685
    .end local v5    # "indication":Landroid/telephony/data/DataService$DataCallListChangedIndication;
    :pswitch_114
    if-nez v4, :cond_11a

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 686
    :cond_11a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    .line 687
    .local v0, "callback":Landroid/telephony/data/IDataServiceCallback;
    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 688
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 681
    .end local v0    # "callback":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_125
    if-nez v4, :cond_12b

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 682
    :cond_12b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->-$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    .line 683
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 675
    :pswitch_136
    if-nez v4, :cond_13c

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 677
    :cond_13c
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, v5}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v4, v0}, Landroid/telephony/data/DataService$DataServiceProvider;->requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    .line 679
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 665
    :pswitch_14c
    if-nez v4, :cond_152

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 666
    :cond_152
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 668
    .local v0, "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    iget-object v6, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 670
    iget-object v8, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v8, :cond_166

    .line 671
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v8, v0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v8}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_167

    .line 672
    :cond_166
    nop

    .line 668
    :goto_167
    invoke-virtual {v4, v6, v7, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 673
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 655
    .end local v0    # "setDataProfileRequest":Landroid/telephony/data/DataService$SetDataProfileRequest;
    :pswitch_16e
    if-nez v4, :cond_174

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 656
    :cond_174
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 658
    .local v0, "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    iget-object v6, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 660
    iget-object v8, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v8, :cond_188

    .line 661
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v8, v0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v8}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_189

    .line 662
    :cond_188
    nop

    .line 658
    :goto_189
    invoke-virtual {v4, v6, v7, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 663
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 645
    .end local v0    # "setInitialAttachApnRequest":Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
    :pswitch_190
    if-nez v4, :cond_196

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 646
    :cond_196
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 648
    .local v0, "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    iget v6, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v7, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 650
    iget-object v8, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v8, :cond_1aa

    .line 651
    new-instance v5, Landroid/telephony/data/DataServiceCallback;

    iget-object v8, v0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v5, v8}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1ab

    .line 652
    :cond_1aa
    nop

    .line 648
    :goto_1ab
    invoke-virtual {v4, v6, v7, v5}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    .line 653
    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 631
    .end local v0    # "deactivateDataCallRequest":Landroid/telephony/data/DataService$DeactivateDataCallRequest;
    :pswitch_1b2
    if-nez v4, :cond_1b8

    move-object/from16 v16, v4

    goto/16 :goto_246

    .line 632
    :cond_1b8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 633
    .local v0, "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    move-object v6, v5

    iget v5, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    move-object v7, v6

    iget-object v6, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    move-object v8, v7

    iget-boolean v7, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    move-object v9, v8

    iget-boolean v8, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    move-object v10, v9

    iget v9, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    move-object v11, v10

    iget-object v10, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    move-object v12, v11

    iget v11, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    move-object v13, v12

    iget-object v12, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object v14, v13

    iget-object v13, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    move-object v15, v14

    iget-boolean v14, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    .line 639
    iget-object v15, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v15, :cond_1e8

    .line 640
    new-instance v15, Landroid/telephony/data/DataServiceCallback;

    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget-object v4, v0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v15, v4}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1eb

    .line 641
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_1e8
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    const/4 v15, 0x0

    .line 633
    :goto_1eb
    move-object/from16 v4, v16

    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    invoke-virtual/range {v4 .. v15}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V

    .line 643
    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    goto :goto_246

    .line 622
    .end local v0    # "setupDataCallRequest":Landroid/telephony/data/DataService$SetupDataCallRequest;
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_1f1
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    const/4 v0, 0x0

    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .local v0, "i":I
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :goto_1f4
    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v5}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_215

    .line 623
    iget-object v5, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v5}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 624
    if-eqz v4, :cond_212

    .line 625
    invoke-virtual {v4}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 622
    :cond_212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f4

    .line 628
    .end local v0    # "i":I
    :cond_215
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 629
    goto :goto_248

    .line 616
    :pswitch_21f
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v16, :cond_246

    .line 617
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/data/DataService$DataServiceProvider;->close()V

    .line 618
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_246

    .line 610
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :pswitch_230
    move-object/from16 v16, v4

    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataService;->onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object v4

    .line 611
    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    if-eqz v4, :cond_248

    .line 612
    iget-object v0, v1, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->-$$Nest$fgetmServiceMap(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_248

    .line 748
    .end local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_246
    :goto_246
    move-object/from16 v4, v16

    .end local v16    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    .restart local v4    # "serviceProvider":Landroid/telephony/data/DataService$DataServiceProvider;
    :cond_248
    :goto_248
    return-void

    nop

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_230
        :pswitch_21f
        :pswitch_1f1
        :pswitch_1b2
        :pswitch_190
        :pswitch_16e
        :pswitch_14c
        :pswitch_136
        :pswitch_125
        :pswitch_114
        :pswitch_e1
        :pswitch_c1
        :pswitch_a1
        :pswitch_90
        :pswitch_7f
        :pswitch_40
        :pswitch_1d
    .end packed-switch
.end method
