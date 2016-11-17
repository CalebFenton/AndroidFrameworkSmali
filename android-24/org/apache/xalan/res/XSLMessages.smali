.class public Lorg/apache/xalan/res/XSLMessages;
.super Lorg/apache/xpath/res/XPATHMessages;
.source "XSLMessages.java"


# static fields
.field private static XSLTBundle:Ljava/util/ListResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Lorg/apache/xalan/res/XSLTErrorResources;

    #@2
    invoke-direct {v0}, Lorg/apache/xalan/res/XSLTErrorResources;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xalan/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/res/XPATHMessages;-><init>()V

    #@3
    return-void
.end method

.method public static final createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msgKey"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    sget-object v0, Lorg/apache/xalan/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    #@2
    invoke-static {v0, p0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msgKey"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 70
    sget-object v0, Lorg/apache/xalan/res/XSLMessages;->XSLTBundle:Ljava/util/ListResourceBundle;

    #@2
    invoke-static {v0, p0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
