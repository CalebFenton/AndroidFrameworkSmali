.class Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantLoader"
.end annotation


# instance fields
.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 1308
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1309
    iput p2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->mNetId:I

    #@7
    .line 1308
    return-void
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1329
    const-string/jumbo v0, "eap"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1332
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1329
    :cond_1
    const-string/jumbo v0, "engine"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1334
    const/4 v0, 0x1

    #@15
    return v0
.end method


# virtual methods
.method public loadValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1314
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/WifiNative;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->mNetId:I

    #@8
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1315
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 1316
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1317
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 1319
    :cond_0
    return-object v0

    #@1d
    .line 1321
    :cond_1
    const/4 v1, 0x0

    #@1e
    return-object v1
.end method
