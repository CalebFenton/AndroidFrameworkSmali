.class final Lcom/android/server/print/UserState$UserStateHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserStateHandler"
.end annotation


# static fields
.field public static final MSG_DISPATCH_PRINT_JOB_STATE_CHANGED:I = 0x1

.field public static final MSG_DISPATCH_PRINT_SERVICES_CHANGED:I = 0x2

.field public static final MSG_DISPATCH_PRINT_SERVICES_RECOMMENDATIONS_UPDATED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    #@2
    .line 1199
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1204
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 1203
    :goto_0
    return-void

    #@6
    .line 1206
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v1, Landroid/print/PrintJobId;

    #@a
    .line 1207
    .local v1, "printJobId":Landroid/print/PrintJobId;
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@c
    .line 1208
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    #@e
    invoke-static {v2, v1, v0}, Lcom/android/server/print/UserState;->-wrap1(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V

    #@11
    goto :goto_0

    #@12
    .line 1211
    .end local v0    # "appId":I
    .end local v1    # "printJobId":Landroid/print/PrintJobId;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    #@14
    invoke-static {v2}, Lcom/android/server/print/UserState;->-wrap3(Lcom/android/server/print/UserState;)V

    #@17
    goto :goto_0

    #@18
    .line 1214
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    #@1a
    .line 1215
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v2, Ljava/util/List;

    #@1e
    .line 1214
    invoke-static {v3, v2}, Lcom/android/server/print/UserState;->-wrap2(Lcom/android/server/print/UserState;Ljava/util/List;)V

    #@21
    goto :goto_0

    #@22
    .line 1204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
