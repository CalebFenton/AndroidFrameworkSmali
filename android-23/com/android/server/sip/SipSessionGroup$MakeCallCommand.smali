.class Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeCallCommand"
.end annotation


# instance fields
.field private mSessionDescription:Ljava/lang/String;

.field private mTimeout:I

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionGroup;
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    #@0
    .prologue
    .line 1785
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #@2
    .line 1787
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@5
    .line 1788
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    #@7
    .line 1789
    iput p4, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    #@9
    .line 1786
    return-void
.end method


# virtual methods
.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSource()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/net/sip/SipProfile;

    #@6
    return-object v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1801
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    #@2
    return v0
.end method
