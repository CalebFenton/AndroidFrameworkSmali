.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    #@0
    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    #@3
    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 667
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@3
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    #@0
    .prologue
    .line 673
    or-int/lit8 p1, p1, 0x26

    #@2
    .line 678
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@4
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x2

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 679
    or-int/lit8 p1, p1, 0x18

    #@d
    .line 685
    :goto_0
    return p1

    #@e
    .line 682
    :cond_0
    and-int/lit8 p1, p1, -0x19

    #@10
    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 632
    move v3, p2

    #@2
    .line 633
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    #@4
    const/4 v0, 0x1

    #@5
    .line 634
    .local v0, "isChange":Z
    :goto_0
    const/4 v4, 0x1

    #@6
    if-ne p4, v4, :cond_3

    #@8
    const/4 v1, 0x1

    #@9
    .line 636
    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    #@a
    .line 637
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    #@d
    .line 656
    :cond_0
    :goto_2
    const/4 v4, -0x1

    #@e
    if-eq v2, v4, :cond_1

    #@10
    .line 657
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@12
    const-string/jumbo v5, "ringerModeExternal"

    #@15
    const/4 v6, 0x0

    #@16
    invoke-static {v4, v2, v6, v5, v7}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    #@19
    .line 660
    :cond_1
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    #@1c
    .line 662
    return v3

    #@1d
    .line 633
    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_2
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "isChange":Z
    goto :goto_0

    #@1f
    .line 634
    :cond_3
    const/4 v1, 0x0

    #@20
    .restart local v1    # "isVibrate":Z
    goto :goto_1

    #@21
    .line 639
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_6

    #@23
    .line 640
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@25
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_4

    #@2b
    .line 641
    const/4 v2, 0x3

    #@2c
    .line 643
    :cond_4
    if-eqz v1, :cond_5

    #@2e
    const/4 v3, 0x1

    #@2f
    goto :goto_2

    #@30
    .line 644
    :cond_5
    const/4 v3, 0x0

    #@31
    goto :goto_2

    #@32
    .line 646
    :cond_6
    move v3, p4

    #@33
    goto :goto_2

    #@34
    .line 651
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@36
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_0

    #@3c
    .line 652
    const/4 v2, 0x0

    #@3d
    goto :goto_2

    #@3e
    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v7, -0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 592
    if-eq p1, p2, :cond_4

    #@6
    const/4 v0, 0x1

    #@7
    .line 594
    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    #@8
    .line 596
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    #@9
    .line 597
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    #@c
    .line 618
    :cond_0
    :goto_1
    if-eq v1, v7, :cond_1

    #@e
    .line 619
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@10
    const-string/jumbo v4, "ringerModeInternal"

    #@13
    const/4 v5, 0x0

    #@14
    invoke-static {v3, v1, v5, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    #@17
    .line 622
    :cond_1
    if-nez v0, :cond_2

    #@19
    if-eq v1, v7, :cond_8

    #@1b
    .line 623
    :cond_2
    :goto_2
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    #@1e
    .line 626
    :cond_3
    return v2

    #@1f
    .line 592
    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_4
    const/4 v0, 0x0

    #@20
    .restart local v0    # "isChange":Z
    goto :goto_0

    #@21
    .line 599
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_0

    #@23
    iget-boolean v3, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 600
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@29
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@2c
    move-result v3

    #@2d
    if-eq v3, v4, :cond_5

    #@2f
    .line 601
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@31
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@34
    move-result v3

    #@35
    if-eq v3, v5, :cond_5

    #@37
    .line 602
    const/4 v1, 0x3

    #@38
    .line 604
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@3a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    #@41
    goto :goto_1

    #@42
    .line 609
    :pswitch_1
    if-eqz v0, :cond_7

    #@44
    if-nez p1, :cond_7

    #@46
    .line 610
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@48
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@4b
    move-result v3

    #@4c
    if-eq v3, v4, :cond_6

    #@4e
    .line 611
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@50
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@53
    move-result v3

    #@54
    if-ne v3, v5, :cond_7

    #@56
    .line 612
    :cond_6
    const/4 v1, 0x0

    #@57
    .line 611
    goto :goto_1

    #@58
    .line 613
    :cond_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@5a
    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_0

    #@60
    .line 614
    const/4 v2, 0x0

    #@61
    goto :goto_1

    #@62
    .line 622
    :cond_8
    if-eq p4, v2, :cond_3

    #@64
    goto :goto_2

    #@65
    .line 597
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 586
    const-string/jumbo v0, "ZenModeHelper"

    #@3
    return-object v0
.end method
