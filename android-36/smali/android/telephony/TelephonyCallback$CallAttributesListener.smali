.class public interface abstract Landroid/telephony/TelephonyCallback$CallAttributesListener;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallAttributesListener"
.end annotation


# virtual methods
.method public whitelist onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    .registers 4
    .param p1, "callAttributes"    # Landroid/telephony/CallAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1564
    const-string v0, "TelephonyCallback"

    const-string/jumbo v1, "onCallAttributesChanged(List<CallState>) should be overridden."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void
.end method

.method public whitelist onCallStatesChanged(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)V"
        }
    .end annotation

    .line 1595
    .local p1, "callStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CallState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5b

    .line 1596
    const/4 v0, 0x0

    .line 1597
    .local v0, "foregroundCallState":I
    const/4 v2, 0x0

    .line 1598
    .local v2, "backgroundCallState":I
    const/4 v3, 0x0

    .line 1599
    .local v3, "ringingCallState":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v0

    move v8, v2

    move v6, v3

    .end local v0    # "foregroundCallState":I
    .end local v2    # "backgroundCallState":I
    .end local v3    # "ringingCallState":I
    .local v6, "ringingCallState":I
    .local v7, "foregroundCallState":I
    .local v8, "backgroundCallState":I
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallState;

    .line 1600
    .local v0, "cs":Landroid/telephony/CallState;
    invoke-virtual {v0}, Landroid/telephony/CallState;->getCallClassification()I

    move-result v2

    packed-switch v2, :pswitch_data_74

    goto :goto_36

    .line 1605
    :pswitch_25
    invoke-virtual {v0}, Landroid/telephony/CallState;->getCallState()I

    move-result v2

    .line 1606
    .end local v8    # "backgroundCallState":I
    .restart local v2    # "backgroundCallState":I
    move v8, v2

    goto :goto_36

    .line 1602
    .end local v2    # "backgroundCallState":I
    .restart local v8    # "backgroundCallState":I
    :pswitch_2b
    invoke-virtual {v0}, Landroid/telephony/CallState;->getCallState()I

    move-result v2

    .line 1603
    .end local v7    # "foregroundCallState":I
    .local v2, "foregroundCallState":I
    move v7, v2

    goto :goto_36

    .line 1608
    .end local v2    # "foregroundCallState":I
    .restart local v7    # "foregroundCallState":I
    :pswitch_31
    invoke-virtual {v0}, Landroid/telephony/CallState;->getCallState()I

    move-result v2

    .line 1609
    .end local v6    # "ringingCallState":I
    .local v2, "ringingCallState":I
    move v6, v2

    .line 1613
    .end local v0    # "cs":Landroid/telephony/CallState;
    .end local v2    # "ringingCallState":I
    .restart local v6    # "ringingCallState":I
    :goto_36
    goto :goto_11

    .line 1614
    :cond_37
    new-instance v0, Landroid/telephony/CallAttributes;

    new-instance v5, Landroid/telephony/PreciseCallState;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v5 .. v10}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 1618
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallState;

    invoke-virtual {v2}, Landroid/telephony/CallState;->getNetworkType()I

    move-result v2

    .line 1619
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallState;

    invoke-virtual {v1}, Landroid/telephony/CallState;->getCallQuality()Landroid/telephony/CallQuality;

    move-result-object v1

    invoke-direct {v0, v5, v2, v1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    .line 1614
    invoke-interface {p0, v0}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    .line 1620
    .end local v6    # "ringingCallState":I
    .end local v7    # "foregroundCallState":I
    .end local v8    # "backgroundCallState":I
    goto :goto_72

    .line 1621
    :cond_5b
    new-instance v0, Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    new-instance v3, Landroid/telephony/CallQuality;

    invoke-direct {v3}, Landroid/telephony/CallQuality;-><init>()V

    invoke-direct {v0, v2, v1, v3}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    invoke-interface {p0, v0}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    .line 1628
    :goto_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method
