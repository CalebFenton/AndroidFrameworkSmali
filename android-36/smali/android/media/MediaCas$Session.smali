.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field blacklist mIsClosed:Z

.field final blacklist mSessionId:[B

.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;[B)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaCas;
    .param p2, "sessionId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 605
    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    .line 606
    iput-object p2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 607
    return-void
.end method

.method private blacklist validateSessionInternalStates()V
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 611
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 613
    :cond_17
    :goto_17
    iget-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    if-eqz v0, :cond_1f

    .line 614
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 616
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 772
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 774
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 775
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1}, Landroid/hardware/cas/ICas;->closeSession([B)V

    goto :goto_2c

    .line 777
    :cond_17
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 778
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    move-result v0

    .line 777
    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 780
    :goto_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    .line 781
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0, p0}, Landroid/media/MediaCas;->-$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_34} :catch_35

    .line 784
    goto :goto_3b

    .line 782
    :catch_35
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 785
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3b
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 626
    instance-of v0, p1, Landroid/media/MediaCas$Session;

    if-eqz v0, :cond_10

    .line 627
    iget-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    move-object v1, p1

    check-cast v1, Landroid/media/MediaCas$Session;

    iget-object v1, v1, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 629
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()[B
    .registers 2

    .line 760
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 761
    iget-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    return-object v0
.end method

.method public whitelist processEcm([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    .line 709
    return-void
.end method

.method public whitelist processEcm([BII)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 679
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_40

    if-eqz v0, :cond_24

    .line 681
    :try_start_b
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    add-int v2, p3, p2

    .line 682
    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 681
    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/ICas;->processEcm([B[B)V
    :try_end_1c
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1c} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_40

    goto :goto_23

    .line 683
    :catch_1d
    move-exception v0

    .line 684
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :try_start_1e
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 685
    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    :goto_23
    goto :goto_3f

    .line 687
    :cond_24
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 689
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p1, p2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    .line 688
    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 687
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3f} :catch_40

    .line 693
    :goto_3f
    goto :goto_46

    .line 691
    :catch_40
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 694
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_46
    return-void
.end method

.method public whitelist sendSessionEvent(II[B)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 725
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 726
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 728
    if-nez p3, :cond_11

    .line 729
    const/4 v0, 0x0

    :try_start_e
    new-array v0, v0, [B

    move-object p3, v0

    .line 731
    :cond_11
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/cas/ICas;->sendSessionEvent([BII[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_23

    .line 732
    :catch_1d
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    goto :goto_4e

    .line 736
    :cond_24
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 742
    :try_start_2c
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 744
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v2

    .line 743
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/hardware/cas/V1_1/ICas;->sendSessionEvent(Ljava/util/ArrayList;IILjava/util/ArrayList;)I

    move-result v0

    .line 742
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_47} :catch_48

    .line 747
    goto :goto_4e

    .line 745
    :catch_48
    move-exception v0

    .line 746
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void

    .line 737
    :cond_4f
    const-string v0, "MediaCas"

    const-string v1, "Send Session Event isn\'t supported by cas@1.0 interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string v1, "Send Session Event is not supported"

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPrivateData([B)V
    .registers 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 646
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_3c

    if-eqz v0, :cond_1e

    .line 648
    :try_start_b
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/ICas;->setSessionPrivateData([B[B)V
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_3c

    goto :goto_1d

    .line 649
    :catch_17
    move-exception v0

    .line 650
    .local v0, "se":Landroid/os/ServiceSpecificException;
    :try_start_18
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 651
    .end local v0    # "se":Landroid/os/ServiceSpecificException;
    :goto_1d
    goto :goto_3b

    .line 653
    :cond_1e
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->mSessionId:[B

    .line 655
    invoke-static {v1, v2}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, v3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    .line 654
    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 653
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3b} :catch_3c

    .line 659
    :goto_3b
    goto :goto_42

    .line 657
    :catch_3c
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 660
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_42
    return-void
.end method
