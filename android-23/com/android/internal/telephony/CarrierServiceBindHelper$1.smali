.class Lcom/android/internal/telephony/CarrierServiceBindHelper$1;
.super Landroid/os/Handler;
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
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "mHandler: "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget v4, p1, Landroid/os/Message;->what:I

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@19
    .line 69
    iget v3, p1, Landroid/os/Message;->what:I

    #@1b
    packed-switch v3, :pswitch_data_0

    #@1e
    .line 63
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 71
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@23
    .line 72
    .local v1, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Binding to phoneId: "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    #@32
    move-result v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@3e
    .line 73
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bind()Z

    #@41
    goto :goto_0

    #@42
    .line 76
    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@44
    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@46
    .line 77
    .restart local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "Bind timeout for phoneId: "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    #@55
    move-result v4

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@61
    .line 78
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@64
    goto :goto_0

    #@65
    .line 81
    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@67
    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@69
    .line 82
    .restart local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "Unbinding for phoneId: "

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    #@78
    move-result v4

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@84
    .line 83
    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    #@87
    goto :goto_0

    #@88
    .line 86
    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8a
    check-cast v2, Ljava/lang/String;

    #@8c
    .line 87
    .local v2, "carrierPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@8e
    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get0(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@91
    move-result-object v4

    #@92
    const/4 v3, 0x0

    #@93
    array-length v5, v4

    #@94
    :goto_1
    if-ge v3, v5, :cond_0

    #@96
    aget-object v0, v4, v3

    #@98
    .line 88
    .local v0, "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v6

    #@a0
    if-eqz v6, :cond_1

    #@a2
    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    const-string/jumbo v7, " changed and corresponds to a phone. Rebinding."

    #@ae
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v6

    #@b2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@b9
    .line 90
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bind()Z

    #@bc
    .line 87
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@be
    goto :goto_1

    #@bf
    .line 69
    nop

    #@c0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
