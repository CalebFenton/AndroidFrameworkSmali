.class Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantSaver"
.end annotation


# instance fields
.field private final mNetId:I

.field private final mSetterSSID:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "netId"    # I
    .param p3, "setterSSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1274
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1275
    iput p2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mNetId:I

    #@7
    .line 1276
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mSetterSSID:Ljava/lang/String;

    #@9
    .line 1274
    return-void
.end method


# virtual methods
.method public saveValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1281
    const-string/jumbo v0, "password"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1282
    if-eqz p2, :cond_0

    #@c
    const-string/jumbo v0, "*"

    #@f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    .line 1281
    if-eqz v0, :cond_0

    #@15
    .line 1284
    return v2

    #@16
    .line 1286
    :cond_0
    const-string/jumbo v0, "realm"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 1287
    const-string/jumbo v0, "plmn"

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    .line 1286
    if-eqz v0, :cond_2

    #@28
    .line 1289
    :cond_1
    return v2

    #@29
    .line 1293
    :cond_2
    if-nez p2, :cond_3

    #@2b
    .line 1294
    const-string/jumbo p2, "\"\""

    #@2e
    .line 1296
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@30
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/WifiNative;

    #@33
    move-result-object v0

    #@34
    iget v1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mNetId:I

    #@36
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_4

    #@3c
    .line 1297
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mSetterSSID:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, ": failed to set "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    const-string/jumbo v2, ": "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@66
    .line 1298
    const/4 v0, 0x0

    #@67
    return v0

    #@68
    .line 1300
    :cond_4
    return v2
.end method
