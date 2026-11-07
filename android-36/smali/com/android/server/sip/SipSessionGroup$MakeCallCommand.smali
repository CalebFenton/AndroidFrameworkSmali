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
.field private blacklist mSessionDescription:Ljava/lang/String;

.field private blacklist mTimeout:I

.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .registers 5
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1786
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 1787
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1788
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    .line 1789
    iput p4, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    .line 1790
    return-void
.end method


# virtual methods
.method public blacklist getPeerProfile()Landroid/net/sip/SipProfile;
    .registers 2

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public blacklist getSessionDescription()Ljava/lang/String;
    .registers 2

    .line 1797
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTimeout()I
    .registers 2

    .line 1801
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    return v0
.end method
