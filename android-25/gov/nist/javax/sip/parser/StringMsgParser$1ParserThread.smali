.class Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;
.super Ljava/lang/Object;
.source "StringMsgParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov/nist/javax/sip/parser/StringMsgParser;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserThread"
.end annotation


# instance fields
.field messages:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "messagesToParse"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 675
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;->messages:[Ljava/lang/String;

    #@5
    .line 674
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 679
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;->messages:[Ljava/lang/String;

    #@3
    array-length v4, v4

    #@4
    if-ge v1, v4, :cond_0

    #@6
    .line 680
    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@8
    invoke-direct {v3}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@b
    .line 683
    .local v3, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StringMsgParser$1ParserThread;->messages:[Ljava/lang/String;

    #@d
    aget-object v4, v4, v1

    #@f
    .line 682
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    #@12
    move-result-object v2

    #@13
    .line 684
    .local v2, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, " i = "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, " branchId = "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 685
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 684
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 679
    .end local v2    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 678
    .end local v3    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :cond_0
    return-void

    #@43
    .line 688
    .restart local v3    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catch_0
    move-exception v0

    #@44
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_1
.end method
