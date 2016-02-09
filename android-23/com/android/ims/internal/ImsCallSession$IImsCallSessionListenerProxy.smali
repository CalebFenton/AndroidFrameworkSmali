.class Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsCallSession;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;)V

    #@3
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1127
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1125
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1135
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    .line 1136
    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    #@12
    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@15
    .line 1135
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@18
    .line 1133
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1118
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    .line 1119
    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    #@12
    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@15
    .line 1118
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@18
    .line 1116
    :cond_0
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    #@0
    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1183
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    #@13
    .line 1181
    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1206
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1204
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1219
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1217
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 983
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 981
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 991
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 989
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 999
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 997
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    #@0
    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1147
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    #@13
    .line 1145
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1155
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1153
    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1049
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@3
    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@6
    move-result-object v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 1050
    if-eqz p1, :cond_2

    #@b
    .line 1053
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@d
    .line 1055
    .local v1, "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@f
    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_0

    #@21
    .line 1057
    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    #@23
    invoke-direct {v2, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .end local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    .local v2, "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    move-object v1, v2

    #@27
    .line 1062
    .end local v2    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    .restart local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@29
    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    #@30
    .line 1048
    .end local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_1
    :goto_1
    return-void

    #@31
    .line 1059
    .restart local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :catch_0
    move-exception v0

    #@32
    .line 1060
    .local v0, "rex":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsCallSession"

    #@35
    const-string/jumbo v4, "callSessionMergeComplete: exception for getCallId!"

    #@38
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 1065
    .end local v0    # "rex":Landroid/os/RemoteException;
    .end local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_2
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@3e
    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    #@45
    goto :goto_1
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1080
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1078
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1039
    const-string/jumbo v0, "ImsCallSession"

    #@3
    const-string/jumbo v1, "callSessionMergeStarted"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1036
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiParty"    # Z

    #@0
    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1246
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V

    #@13
    .line 1243
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 948
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    #@13
    .line 946
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1163
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    #@13
    .line 1161
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1171
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1169
    :cond_0
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1015
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1013
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1023
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 1021
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1007
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 1005
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 964
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 962
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 956
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 954
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 972
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 970
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1231
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V

    #@13
    .line 1229
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1099
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@13
    .line 1097
    :cond_0
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1107
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 1105
    :cond_0
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1091
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    #@13
    .line 1089
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1194
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@a
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    #@10
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V

    #@13
    .line 1192
    :cond_0
    return-void
.end method
