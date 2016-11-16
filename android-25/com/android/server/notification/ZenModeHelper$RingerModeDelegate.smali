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
    .line 922
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
    .line 1008
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@3
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

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
    .line 1014
    or-int/lit8 p1, p1, 0x26

    #@2
    .line 1019
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@4
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x2

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 1020
    or-int/lit8 p1, p1, 0x18

    #@d
    .line 1026
    :goto_0
    return p1

    #@e
    .line 1023
    :cond_0
    and-int/lit8 p1, p1, -0x19

    #@10
    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 9
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 972
    move v8, p2

    #@2
    .line 973
    .local v8, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    #@4
    const/4 v6, 0x1

    #@5
    .line 974
    .local v6, "isChange":Z
    :goto_0
    const/4 v0, 0x1

    #@6
    if-ne p4, v0, :cond_3

    #@8
    const/4 v7, 0x1

    #@9
    .line 976
    .local v7, "isVibrate":Z
    :goto_1
    const/4 v1, -0x1

    #@a
    .line 977
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    #@d
    .line 996
    :cond_0
    :goto_2
    const/4 v0, -0x1

    #@e
    if-eq v1, v0, :cond_1

    #@10
    .line 997
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@12
    const-string/jumbo v3, "ringerModeExternal"

    #@15
    const/4 v2, 0x0

    #@16
    move-object v4, p3

    #@17
    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    #@1a
    .line 1001
    :cond_1
    invoke-static {p1, p2, p3, p4, v8}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    #@1d
    .line 1003
    return v8

    #@1e
    .line 973
    .end local v1    # "newZen":I
    .end local v6    # "isChange":Z
    .end local v7    # "isVibrate":Z
    :cond_2
    const/4 v6, 0x0

    #@1f
    .restart local v6    # "isChange":Z
    goto :goto_0

    #@20
    .line 974
    :cond_3
    const/4 v7, 0x0

    #@21
    .restart local v7    # "isVibrate":Z
    goto :goto_1

    #@22
    .line 979
    .restart local v1    # "newZen":I
    :pswitch_0
    if-eqz v6, :cond_6

    #@24
    .line 980
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@26
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_4

    #@2c
    .line 981
    const/4 v1, 0x3

    #@2d
    .line 983
    :cond_4
    if-eqz v7, :cond_5

    #@2f
    const/4 v8, 0x1

    #@30
    goto :goto_2

    #@31
    .line 984
    :cond_5
    const/4 v8, 0x0

    #@32
    goto :goto_2

    #@33
    .line 986
    :cond_6
    move v8, p4

    #@34
    goto :goto_2

    #@35
    .line 991
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@37
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_0

    #@3d
    .line 992
    const/4 v1, 0x0

    #@3e
    goto :goto_2

    #@3f
    .line 977
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 9
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x2

    #@3
    const/4 v8, -0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 931
    if-eq p1, p2, :cond_4

    #@7
    const/4 v6, 0x1

    #@8
    .line 933
    .local v6, "isChange":Z
    :goto_0
    move v7, p2

    #@9
    .line 935
    .local v7, "ringerModeExternalOut":I
    const/4 v1, -0x1

    #@a
    .line 936
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    #@d
    .line 957
    :cond_0
    :goto_1
    if-eq v1, v8, :cond_1

    #@f
    .line 958
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@11
    const-string/jumbo v3, "ringerModeInternal"

    #@14
    move-object v4, v2

    #@15
    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    #@18
    .line 962
    :cond_1
    if-nez v6, :cond_2

    #@1a
    if-eq v1, v8, :cond_8

    #@1c
    .line 963
    :cond_2
    :goto_2
    invoke-static {p1, p2, p3, p4, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    #@1f
    .line 966
    :cond_3
    return v7

    #@20
    .line 931
    .end local v1    # "newZen":I
    .end local v6    # "isChange":Z
    .end local v7    # "ringerModeExternalOut":I
    :cond_4
    const/4 v6, 0x0

    #@21
    .restart local v6    # "isChange":Z
    goto :goto_0

    #@22
    .line 938
    .restart local v1    # "newZen":I
    .restart local v7    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v6, :cond_0

    #@24
    iget-boolean v0, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 939
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2a
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@2d
    move-result v0

    #@2e
    if-eq v0, v3, :cond_5

    #@30
    .line 940
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@32
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@35
    move-result v0

    #@36
    if-eq v0, v4, :cond_5

    #@38
    .line 941
    const/4 v1, 0x3

    #@39
    .line 943
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@3b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v0, v3}, Lcom/android/server/notification/ZenModeHelper;->-wrap6(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    #@42
    goto :goto_1

    #@43
    .line 948
    :pswitch_1
    if-eqz v6, :cond_7

    #@45
    if-nez p1, :cond_7

    #@47
    .line 949
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@49
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@4c
    move-result v0

    #@4d
    if-eq v0, v3, :cond_6

    #@4f
    .line 950
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@51
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@54
    move-result v0

    #@55
    if-ne v0, v4, :cond_7

    #@57
    .line 951
    :cond_6
    const/4 v1, 0x0

    #@58
    .line 950
    goto :goto_1

    #@59
    .line 952
    :cond_7
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@5b
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_0

    #@61
    .line 953
    const/4 v7, 0x0

    #@62
    goto :goto_1

    #@63
    .line 962
    :cond_8
    if-eq p4, v7, :cond_3

    #@65
    goto :goto_2

    #@66
    .line 936
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
    .line 925
    const-string/jumbo v0, "ZenModeHelper"

    #@3
    return-object v0
.end method
