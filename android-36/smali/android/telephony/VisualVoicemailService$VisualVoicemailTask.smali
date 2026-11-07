.class public Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
.super Ljava/lang/Object;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualVoicemailTask"
.end annotation


# instance fields
.field private final greylist-max-o mReplyTo:Landroid/os/Messenger;

.field private final greylist-max-o mTaskId:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/os/Messenger;I)V
    .registers 3
    .param p1, "replyTo"    # Landroid/os/Messenger;
    .param p2, "taskId"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p2, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    .line 121
    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mReplyTo:Landroid/os/Messenger;

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    instance-of v0, p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 142
    return v1

    .line 144
    :cond_6
    iget v0, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    move-object v2, p1

    check-cast v2, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    iget v2, v2, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    if-ne v0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public final whitelist finish()V
    .registers 5

    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    :try_start_5
    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iget v1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 132
    iget-object v1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mReplyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 136
    goto :goto_19

    .line 133
    :catch_11
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "VvmService"

    const-string v3, "Cannot send MSG_TASK_ENDED, remote handler no longer exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    return v0
.end method
