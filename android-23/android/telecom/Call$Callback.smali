.class public abstract Landroid/telecom/Call$Callback;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 644
    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 614
    .local p2, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 596
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 654
    .local p2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    #@0
    .prologue
    .line 604
    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "parent"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 588
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    #@0
    .prologue
    .line 625
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 580
    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    #@0
    .prologue
    .line 633
    return-void
.end method
