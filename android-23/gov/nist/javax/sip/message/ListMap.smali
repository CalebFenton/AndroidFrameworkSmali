.class Lgov/nist/javax/sip/message/ListMap;
.super Ljava/lang/Object;
.source "ListMap.java"


# static fields
.field private static headerListTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    #@3
    .line 41
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 6
    .param p0, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ")",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    sget-boolean v5, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    #@2
    if-nez v5, :cond_0

    #@4
    .line 171
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    #@7
    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    .line 174
    .local v2, "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/Class;

    #@13
    .line 175
    .local v3, "listClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@19
    .line 176
    .local v4, "shl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/SIPHeaderList;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 177
    return-object v4

    #@21
    .line 180
    .end local v2    # "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "listClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "shl":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :catch_0
    move-exception v0

    #@22
    .line 181
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@25
    .line 183
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :goto_0
    const/4 v5, 0x0

    #@26
    return-object v5

    #@27
    .line 178
    :catch_1
    move-exception v1

    #@28
    .line 179
    .local v1, "ex":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    #@2b
    goto :goto_0
.end method

.method protected static getListClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    .local p0, "sipHdrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 161
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    #@7
    .line 162
    :cond_0
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Class;

    #@f
    return-object v0
.end method

.method protected static hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 3
    .param p0, "sipHeader"    # Lgov/nist/javax/sip/header/SIPHeader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    instance-of v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 140
    return v1

    #@6
    .line 142
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 143
    .local v0, "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    if-eqz v2, :cond_1

    #@12
    const/4 v1, 0x1

    #@13
    :cond_1
    return v1
.end method

.method protected static hasList(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    .local p0, "sipHdrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 152
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    #@7
    .line 153
    :cond_0
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method private static initializeListMap()V
    .locals 3

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@7
    .line 61
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@9
    const-class v1, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    #@b
    const-class v2, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 63
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@12
    const-class v1, Lgov/nist/javax/sip/header/Contact;

    #@14
    const-class v2, Lgov/nist/javax/sip/header/ContactList;

    #@16
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 65
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@1b
    const-class v1, Lgov/nist/javax/sip/header/ContentEncoding;

    #@1d
    const-class v2, Lgov/nist/javax/sip/header/ContentEncodingList;

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 67
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@24
    const-class v1, Lgov/nist/javax/sip/header/Via;

    #@26
    const-class v2, Lgov/nist/javax/sip/header/ViaList;

    #@28
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 69
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@2d
    const-class v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@2f
    const-class v2, Lgov/nist/javax/sip/header/WWWAuthenticateList;

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 71
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@36
    const-class v1, Lgov/nist/javax/sip/header/Accept;

    #@38
    const-class v2, Lgov/nist/javax/sip/header/AcceptList;

    #@3a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 73
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@3f
    const-class v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    #@41
    const-class v2, Lgov/nist/javax/sip/header/AcceptEncodingList;

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 75
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@48
    const-class v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@4a
    const-class v2, Lgov/nist/javax/sip/header/AcceptLanguageList;

    #@4c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 77
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@51
    const-class v1, Lgov/nist/javax/sip/header/ProxyRequire;

    #@53
    const-class v2, Lgov/nist/javax/sip/header/ProxyRequireList;

    #@55
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 79
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@5a
    const-class v1, Lgov/nist/javax/sip/header/Route;

    #@5c
    const-class v2, Lgov/nist/javax/sip/header/RouteList;

    #@5e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 81
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@63
    const-class v1, Lgov/nist/javax/sip/header/Require;

    #@65
    const-class v2, Lgov/nist/javax/sip/header/RequireList;

    #@67
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 83
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@6c
    const-class v1, Lgov/nist/javax/sip/header/Warning;

    #@6e
    const-class v2, Lgov/nist/javax/sip/header/WarningList;

    #@70
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    .line 85
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@75
    const-class v1, Lgov/nist/javax/sip/header/Unsupported;

    #@77
    const-class v2, Lgov/nist/javax/sip/header/UnsupportedList;

    #@79
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 87
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@7e
    const-class v1, Lgov/nist/javax/sip/header/AlertInfo;

    #@80
    const-class v2, Lgov/nist/javax/sip/header/AlertInfoList;

    #@82
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 89
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@87
    const-class v1, Lgov/nist/javax/sip/header/CallInfo;

    #@89
    const-class v2, Lgov/nist/javax/sip/header/CallInfoList;

    #@8b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 91
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@90
    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@92
    const-class v2, Lgov/nist/javax/sip/header/ProxyAuthenticateList;

    #@94
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 93
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@99
    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthorization;

    #@9b
    const-class v2, Lgov/nist/javax/sip/header/ProxyAuthorizationList;

    #@9d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    .line 95
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@a2
    const-class v1, Lgov/nist/javax/sip/header/Authorization;

    #@a4
    const-class v2, Lgov/nist/javax/sip/header/AuthorizationList;

    #@a6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    .line 97
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@ab
    const-class v1, Lgov/nist/javax/sip/header/Allow;

    #@ad
    const-class v2, Lgov/nist/javax/sip/header/AllowList;

    #@af
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    .line 99
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@b4
    const-class v1, Lgov/nist/javax/sip/header/RecordRoute;

    #@b6
    const-class v2, Lgov/nist/javax/sip/header/RecordRouteList;

    #@b8
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    .line 101
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@bd
    const-class v1, Lgov/nist/javax/sip/header/ContentLanguage;

    #@bf
    const-class v2, Lgov/nist/javax/sip/header/ContentLanguageList;

    #@c1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 103
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@c6
    const-class v1, Lgov/nist/javax/sip/header/ErrorInfo;

    #@c8
    const-class v2, Lgov/nist/javax/sip/header/ErrorInfoList;

    #@ca
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    .line 105
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@cf
    const-class v1, Lgov/nist/javax/sip/header/Supported;

    #@d1
    const-class v2, Lgov/nist/javax/sip/header/SupportedList;

    #@d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    .line 107
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@d8
    const-class v1, Lgov/nist/javax/sip/header/InReplyTo;

    #@da
    const-class v2, Lgov/nist/javax/sip/header/InReplyToList;

    #@dc
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 111
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@e1
    const-class v1, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    #@e3
    const-class v2, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    #@e5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    .line 113
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@ea
    const-class v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    #@ec
    const-class v2, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    #@ee
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    .line 115
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@f3
    const-class v1, Lgov/nist/javax/sip/header/ims/Path;

    #@f5
    const-class v2, Lgov/nist/javax/sip/header/ims/PathList;

    #@f7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fa
    .line 117
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@fc
    const-class v1, Lgov/nist/javax/sip/header/ims/Privacy;

    #@fe
    const-class v2, Lgov/nist/javax/sip/header/ims/PrivacyList;

    #@100
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    .line 119
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@105
    const-class v1, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    #@107
    const-class v2, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    #@109
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10c
    .line 121
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@10e
    const-class v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    #@110
    const-class v2, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    #@112
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    .line 123
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@117
    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    #@119
    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    #@11b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11e
    .line 125
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@120
    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    #@122
    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    #@124
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@127
    .line 127
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@129
    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    #@12b
    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    #@12d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@130
    .line 129
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    #@132
    const-class v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@134
    const-class v2, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    #@136
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@139
    .line 131
    const/4 v0, 0x1

    #@13a
    sput-boolean v0, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    #@13c
    .line 55
    return-void
.end method
