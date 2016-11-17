.class Lgov/nist/javax/sip/message/MessageFactoryImpl$1;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/ParseExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov/nist/javax/sip/message/MessageFactoryImpl;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/message/MessageFactoryImpl;

    #@0
    .prologue
    .line 706
    iput-object p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;->this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p3, "headerClass"    # Ljava/lang/Class;
    .param p4, "headerText"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;->this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;

    #@2
    invoke-static {v0}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->-get0(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 716
    const-class v0, Lgov/nist/javax/sip/header/From;

    #@a
    if-eq p3, v0, :cond_0

    #@c
    const-class v0, Lgov/nist/javax/sip/header/To;

    #@e
    if-ne p3, v0, :cond_1

    #@10
    .line 723
    :cond_0
    throw p1

    #@11
    .line 717
    :cond_1
    const-class v0, Lgov/nist/javax/sip/header/CallID;

    #@13
    if-eq p3, v0, :cond_0

    #@15
    .line 718
    const-class v0, Lgov/nist/javax/sip/header/MaxForwards;

    #@17
    if-eq p3, v0, :cond_0

    #@19
    .line 719
    const-class v0, Lgov/nist/javax/sip/header/Via;

    #@1b
    if-eq p3, v0, :cond_0

    #@1d
    .line 720
    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    #@1f
    if-eq p3, v0, :cond_0

    #@21
    .line 721
    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    #@23
    if-eq p3, v0, :cond_0

    #@25
    .line 722
    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    #@27
    if-eq p3, v0, :cond_0

    #@29
    .line 725
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    #@2c
    .line 711
    :cond_2
    return-void
.end method
