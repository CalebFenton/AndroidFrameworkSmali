.class Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamNetworkMonitor"
.end annotation


# static fields
.field static final EVENT_ON_AVAILABLE:I = 0x1

.field static final EVENT_ON_CAPABILITIES:I = 0x2

.field static final EVENT_ON_LINKPROPERTIES:I = 0x3

.field static final EVENT_ON_LOST:I = 0x4


# instance fields
.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1076
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@c
    .line 1070
    return-void
.end method


# virtual methods
.method lookup(Landroid/net/Network;)Landroid/net/NetworkState;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1111
    if-eqz p1, :cond_0

    #@3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/NetworkState;

    #@b
    :cond_0
    return-object v0
.end method

.method processCallback(ILjava/lang/Object;)Landroid/net/NetworkState;
    .locals 15
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1115
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1194
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    :pswitch_0
    move-object/from16 v4, p2

    #@7
    .line 1117
    check-cast v4, Landroid/net/Network;

    #@9
    .line 1121
    .local v4, "network":Landroid/net/Network;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 1122
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@13
    .line 1123
    new-instance v0, Landroid/net/NetworkState;

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x0

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v5, 0x0

    #@19
    const/4 v6, 0x0

    #@1a
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 1122
    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@22
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@25
    move-result-object v12

    #@26
    .line 1128
    .local v12, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 1129
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@2c
    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->requestNetworkCapabilities(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@2f
    .line 1130
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@31
    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->requestLinkProperties(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@34
    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@36
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/net/NetworkState;

    #@3c
    return-object v0

    #@3d
    .end local v4    # "network":Landroid/net/Network;
    .end local v12    # "cm":Landroid/net/ConnectivityManager;
    :pswitch_1
    move-object/from16 v13, p2

    #@3f
    .line 1149
    check-cast v13, Landroid/net/NetworkState;

    #@41
    .line 1150
    .local v13, "ns":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@43
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@45
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_2

    #@4b
    .line 1154
    const/4 v0, 0x0

    #@4c
    return-object v0

    #@4d
    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@4f
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@51
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v14

    #@55
    check-cast v14, Landroid/net/NetworkState;

    #@57
    .line 1162
    .local v14, "prev":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@59
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@5b
    .line 1163
    new-instance v5, Landroid/net/NetworkState;

    #@5d
    iget-object v7, v14, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@5f
    iget-object v8, v13, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@61
    .line 1164
    iget-object v9, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@63
    .line 1163
    const/4 v6, 0x0

    #@64
    .line 1164
    const/4 v10, 0x0

    #@65
    const/4 v11, 0x0

    #@66
    .line 1163
    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@69
    .line 1162
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 1165
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@6e
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@70
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Landroid/net/NetworkState;

    #@76
    return-object v0

    #@77
    .end local v13    # "ns":Landroid/net/NetworkState;
    .end local v14    # "prev":Landroid/net/NetworkState;
    :pswitch_2
    move-object/from16 v13, p2

    #@79
    .line 1168
    check-cast v13, Landroid/net/NetworkState;

    #@7b
    .line 1169
    .restart local v13    # "ns":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@7d
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@7f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@82
    move-result v0

    #@83
    if-nez v0, :cond_3

    #@85
    .line 1173
    const/4 v0, 0x0

    #@86
    return-object v0

    #@87
    .line 1180
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@89
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@8b
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    move-result-object v14

    #@8f
    check-cast v14, Landroid/net/NetworkState;

    #@91
    .line 1181
    .restart local v14    # "prev":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@93
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@95
    .line 1182
    new-instance v5, Landroid/net/NetworkState;

    #@97
    iget-object v7, v13, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@99
    iget-object v8, v14, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@9b
    .line 1183
    iget-object v9, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@9d
    .line 1182
    const/4 v6, 0x0

    #@9e
    .line 1183
    const/4 v10, 0x0

    #@9f
    const/4 v11, 0x0

    #@a0
    .line 1182
    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@a3
    .line 1181
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    .line 1184
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@a8
    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@aa
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v0

    #@ae
    check-cast v0, Landroid/net/NetworkState;

    #@b0
    return-object v0

    #@b1
    .end local v13    # "ns":Landroid/net/NetworkState;
    .end local v14    # "prev":Landroid/net/NetworkState;
    :pswitch_3
    move-object/from16 v4, p2

    #@b3
    .line 1187
    check-cast v4, Landroid/net/Network;

    #@b5
    .line 1191
    .restart local v4    # "network":Landroid/net/Network;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@b7
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@ba
    move-result-object v0

    #@bb
    check-cast v0, Landroid/net/NetworkState;

    #@bd
    return-object v0

    #@be
    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method start()V
    .locals 3

    #@0
    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->stop()V

    #@3
    .line 1083
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    #@5
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@a
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@c
    .line 1084
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@e
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@14
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@17
    .line 1086
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    #@19
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    #@1c
    .line 1087
    const/4 v2, 0x0

    #@1d
    .line 1086
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    #@20
    move-result-object v1

    #@21
    .line 1088
    const/16 v2, 0xd

    #@23
    .line 1086
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    #@26
    move-result-object v1

    #@27
    .line 1089
    const/4 v2, 0x2

    #@28
    .line 1086
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    #@2f
    move-result-object v0

    #@30
    .line 1091
    .local v0, "dunTetheringRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    #@32
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@34
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@37
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@39
    .line 1092
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3b
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@3e
    move-result-object v1

    #@3f
    .line 1093
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@41
    .line 1092
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@44
    .line 1080
    return-void
.end method

.method stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1097
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1098
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@d
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@10
    .line 1099
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@12
    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1103
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    #@18
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@1e
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    #@21
    .line 1104
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    #@23
    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    #@25
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@28
    .line 1096
    return-void
.end method
