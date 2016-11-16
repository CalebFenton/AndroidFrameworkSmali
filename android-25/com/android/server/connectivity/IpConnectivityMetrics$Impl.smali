.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# static fields
.field static final CMD_DEFAULT:Ljava/lang/String; = "stats"

.field static final CMD_FLUSH:Ljava/lang/String; = "flush"

.field static final CMD_LIST:Ljava/lang/String; = "list"

.field static final CMD_STATS:Ljava/lang/String; = "stats"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@0
    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@2
    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    #@5
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 1

    #@0
    .prologue
    .line 218
    const-string/jumbo v0, "android.permission.CONNECTIVITY_INTERNAL"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 217
    return-void
.end method

.method private enforceDumpPermission()V
    .locals 1

    #@0
    .prologue
    .line 222
    const-string/jumbo v0, "android.permission.DUMP"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 221
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@2
    invoke-virtual {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "IpConnectivityMetrics"

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 225
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 199
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    #@4
    .line 201
    array-length v1, p3

    #@5
    if-lez v1, :cond_0

    #@7
    aget-object v0, p3, v2

    #@9
    .line 202
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "flush"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 204
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@14
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap2(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@17
    .line 205
    return-void

    #@18
    .line 201
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "stats"

    #@1b
    goto :goto_0

    #@1c
    .line 202
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "list"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 207
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@27
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap3(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2a
    .line 208
    return-void

    #@2b
    .line 202
    :cond_2
    const-string/jumbo v1, "stats"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 210
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@36
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap4(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@39
    .line 211
    return-void

    #@3a
    .line 213
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@3c
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap1(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3f
    .line 198
    return-void
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceConnectivityInternalPermission()V

    #@3
    .line 194
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@5
    invoke-static {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-wrap0(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    #@8
    move-result v0

    #@9
    return v0
.end method
