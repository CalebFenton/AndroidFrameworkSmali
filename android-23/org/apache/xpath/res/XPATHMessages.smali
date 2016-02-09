.class public Lorg/apache/xpath/res/XPATHMessages;
.super Lorg/apache/xml/res/XMLMessages;
.source "XPATHMessages.java"


# static fields
.field private static XPATHBundle:Ljava/util/ListResourceBundle; = null

.field private static final XPATH_ERROR_RESOURCES:Ljava/lang/String; = "org.apache.xpath.res.XPATHErrorResources"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Lorg/apache/xpath/res/XPATHErrorResources;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/res/XPATHErrorResources;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xml/res/XMLMessages;-><init>()V

    #@3
    return-void
.end method

.method public static final createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msgKey"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    sget-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    #@2
    invoke-static {v0, p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "fResourceBundle"    # Ljava/util/ListResourceBundle;
    .param p1, "msgKey"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    const/4 v1, 0x0

    #@1
    .line 92
    .local v1, "fmsg":Ljava/lang/String;
    const/4 v5, 0x0

    #@2
    .line 93
    .local v5, "throwex":Z
    const/4 v3, 0x0

    #@3
    .line 95
    .local v3, "msg":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@5
    .line 96
    invoke-virtual {p0, p1}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 98
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    #@b
    .line 100
    const-string/jumbo v6, "BAD_CODE"

    #@e
    invoke-virtual {p0, v6}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 101
    .local v3, "msg":Ljava/lang/String;
    const/4 v5, 0x1

    #@13
    .line 104
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_4

    #@15
    .line 112
    :try_start_0
    array-length v4, p2

    #@16
    .line 114
    .local v4, "n":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@19
    .line 116
    aget-object v6, p2, v2

    #@1b
    if-nez v6, :cond_2

    #@1d
    .line 117
    const-string/jumbo v6, ""

    #@20
    aput-object v6, p2, v2

    #@22
    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 120
    :cond_3
    invoke-static {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v1

    #@29
    .line 131
    .end local v2    # "i":I
    .end local v4    # "n":I
    .local v1, "fmsg":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_5

    #@2b
    .line 133
    new-instance v6, Ljava/lang/RuntimeException;

    #@2d
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v6

    #@31
    .line 123
    .local v1, "fmsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@32
    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "FORMAT_FAILED"

    #@35
    invoke-virtual {p0, v6}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 125
    .local v1, "fmsg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    const-string/jumbo v7, " "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    goto :goto_1

    #@52
    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "fmsg":Ljava/lang/String;
    :cond_4
    move-object v1, v3

    #@53
    .local v1, "fmsg":Ljava/lang/String;
    goto :goto_1

    #@54
    .line 136
    :cond_5
    return-object v1
.end method

.method public static final createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "msgKey"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    sget-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    #@2
    invoke-static {v0, p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
