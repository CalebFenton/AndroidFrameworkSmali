.class Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;
.super Landroid/os/AsyncTask;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncUpdateProvisionedValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;

    #@0
    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;-><init>(Lcom/android/ims/ImsManager;)V

    #@3
    return-void
.end method

.method private getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z
    .locals 2
    .param p1, "config"    # Lcom/android/ims/ImsConfig;
    .param p2, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 698
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 668
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 670
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@4
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->-wrap4(Lcom/android/ims/ImsManager;Z)V

    #@7
    .line 671
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@9
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->-wrap6(Lcom/android/ims/ImsManager;Z)V

    #@c
    .line 672
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@e
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->-wrap5(Lcom/android/ims/ImsManager;Z)V

    #@11
    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@13
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@16
    move-result-object v0

    #@17
    .line 676
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    #@19
    .line 677
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@1b
    .line 678
    const/16 v3, 0xa

    #@1d
    .line 677
    invoke-direct {p0, v0, v3}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z

    #@20
    move-result v3

    #@21
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->-wrap4(Lcom/android/ims/ImsManager;Z)V

    #@24
    .line 679
    const-string/jumbo v2, "ImsManager"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "isVoLteProvisioned = "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    iget-object v4, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@35
    invoke-static {v4}, Lcom/android/ims/ImsManager;->-wrap0(Lcom/android/ims/ImsManager;)Z

    #@38
    move-result v4

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 681
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@46
    .line 682
    const/16 v3, 0x1c

    #@48
    .line 681
    invoke-direct {p0, v0, v3}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z

    #@4b
    move-result v3

    #@4c
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->-wrap6(Lcom/android/ims/ImsManager;Z)V

    #@4f
    .line 683
    const-string/jumbo v2, "ImsManager"

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "isWfcProvisioned = "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    iget-object v4, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@60
    invoke-static {v4}, Lcom/android/ims/ImsManager;->-wrap2(Lcom/android/ims/ImsManager;)Z

    #@63
    move-result v4

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 685
    iget-object v2, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@71
    .line 686
    const/16 v3, 0xb

    #@73
    .line 685
    invoke-direct {p0, v0, v3}, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->getProvisionedBool(Lcom/android/ims/ImsConfig;I)Z

    #@76
    move-result v3

    #@77
    invoke-static {v2, v3}, Lcom/android/ims/ImsManager;->-wrap5(Lcom/android/ims/ImsManager;Z)V

    #@7a
    .line 687
    const-string/jumbo v2, "ImsManager"

    #@7d
    new-instance v3, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v4, "isVtProvisioned = "

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    iget-object v4, p0, Lcom/android/ims/ImsManager$AsyncUpdateProvisionedValues;->this$0:Lcom/android/ims/ImsManager;

    #@8b
    invoke-static {v4}, Lcom/android/ims/ImsManager;->-wrap1(Lcom/android/ims/ImsManager;)Z

    #@8e
    move-result v4

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9a
    .line 694
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    :cond_0
    :goto_0
    return-object v5

    #@9b
    .line 690
    :catch_0
    move-exception v1

    #@9c
    .line 691
    .local v1, "ie":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsManager"

    #@9f
    const-string/jumbo v3, "AsyncUpdateProvisionedValues error: "

    #@a2
    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a5
    goto :goto_0
.end method
