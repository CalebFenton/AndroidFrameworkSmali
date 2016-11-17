.class Lcom/android/server/net/NetworkStatsObservers$1;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsObservers;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsObservers;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 153
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    #@a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    #@e
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsObservers;->-wrap0(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    #@11
    .line 142
    return v3

    #@12
    .line 145
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    #@14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v0, Landroid/net/DataUsageRequest;

    #@18
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-static {v1, v0, v2}, Lcom/android/server/net/NetworkStatsObservers;->-wrap1(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V

    #@1d
    .line 146
    return v3

    #@1e
    .line 149
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$1;->this$0:Lcom/android/server/net/NetworkStatsObservers;

    #@20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    #@24
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsObservers;->-wrap2(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    #@27
    .line 150
    return v3

    #@28
    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
