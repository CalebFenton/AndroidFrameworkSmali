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
.field final synthetic greylist this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;


# direct methods
.method constructor greylist <init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V
    .registers 2
    .param p1, "this$0"    # Lgov/nist/javax/sip/message/MessageFactoryImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 706
    iput-object p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;->this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
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

    .line 715
    iget-object v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;->this$0:Lgov/nist/javax/sip/message/MessageFactoryImpl;

    invoke-static {v0}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->-$$Nest$fgettesting(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 716
    const-class v0, Lgov/nist/javax/sip/header/From;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/To;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/MaxForwards;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/Via;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    if-eq p3, v0, :cond_2c

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    if-eq p3, v0, :cond_2c

    .line 725
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    goto :goto_2d

    .line 723
    :cond_2c
    throw p1

    .line 728
    :cond_2d
    :goto_2d
    return-void
.end method
