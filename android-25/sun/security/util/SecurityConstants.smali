.class public final Lsun/security/util/SecurityConstants;
.super Ljava/lang/Object;
.source "SecurityConstants.java"


# static fields
.field public static final ALL_PERMISSION:Ljava/security/AllPermission;

.field public static final CHECK_MEMBER_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final CREATE_ACC_PERMISSION:Ljava/security/SecurityPermission;

.field public static final CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final FILE_DELETE_ACTION:Ljava/lang/String; = "delete"

.field public static final FILE_EXECUTE_ACTION:Ljava/lang/String; = "execute"

.field public static final FILE_READLINK_ACTION:Ljava/lang/String; = "readlink"

.field public static final FILE_READ_ACTION:Ljava/lang/String; = "read"

.field public static final FILE_WRITE_ACTION:Ljava/lang/String; = "write"

.field public static final GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final GET_COMBINER_PERMISSION:Ljava/security/SecurityPermission;

.field public static final GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final GET_PD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final GET_POLICY_PERMISSION:Ljava/security/SecurityPermission;

.field public static final GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

.field public static final GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

.field public static final GET_STACK_TRACE_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final LOCAL_LISTEN_PERMISSION:Ljava/net/SocketPermission;

.field public static final MODIFY_THREADGROUP_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final MODIFY_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final PROPERTY_READ_ACTION:Ljava/lang/String; = "read"

.field public static final PROPERTY_RW_ACTION:Ljava/lang/String; = "read,write"

.field public static final PROPERTY_WRITE_ACTION:Ljava/lang/String; = "write"

.field public static final SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

.field public static final SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

.field public static final SOCKET_ACCEPT_ACTION:Ljava/lang/String; = "accept"

.field public static final SOCKET_CONNECT_ACCEPT_ACTION:Ljava/lang/String; = "connect,accept"

.field public static final SOCKET_CONNECT_ACTION:Ljava/lang/String; = "connect"

.field public static final SOCKET_LISTEN_ACTION:Ljava/lang/String; = "listen"

.field public static final SOCKET_RESOLVE_ACTION:Ljava/lang/String; = "resolve"

.field public static final SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final STOP_THREAD_PERMISSION:Ljava/lang/RuntimePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/security/AllPermission;

    #@2
    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    #@5
    sput-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    #@7
    .line 190
    new-instance v0, Ljava/net/NetPermission;

    #@9
    const-string/jumbo v1, "specifyStreamHandler"

    #@c
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@f
    .line 189
    sput-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    #@11
    .line 194
    new-instance v0, Ljava/net/NetPermission;

    #@13
    const-string/jumbo v1, "setProxySelector"

    #@16
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@19
    .line 193
    sput-object v0, Lsun/security/util/SecurityConstants;->SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    #@1b
    .line 198
    new-instance v0, Ljava/net/NetPermission;

    #@1d
    const-string/jumbo v1, "getProxySelector"

    #@20
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@23
    .line 197
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    #@25
    .line 202
    new-instance v0, Ljava/net/NetPermission;

    #@27
    const-string/jumbo v1, "setCookieHandler"

    #@2a
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@2d
    .line 201
    sput-object v0, Lsun/security/util/SecurityConstants;->SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    #@2f
    .line 206
    new-instance v0, Ljava/net/NetPermission;

    #@31
    const-string/jumbo v1, "getCookieHandler"

    #@34
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@37
    .line 205
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    #@39
    .line 210
    new-instance v0, Ljava/net/NetPermission;

    #@3b
    const-string/jumbo v1, "setResponseCache"

    #@3e
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@41
    .line 209
    sput-object v0, Lsun/security/util/SecurityConstants;->SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    #@43
    .line 214
    new-instance v0, Ljava/net/NetPermission;

    #@45
    const-string/jumbo v1, "getResponseCache"

    #@48
    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    #@4b
    .line 213
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    #@4d
    .line 218
    new-instance v0, Ljava/lang/RuntimePermission;

    #@4f
    const-string/jumbo v1, "createClassLoader"

    #@52
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@55
    .line 217
    sput-object v0, Lsun/security/util/SecurityConstants;->CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    #@57
    .line 222
    new-instance v0, Ljava/lang/RuntimePermission;

    #@59
    const-string/jumbo v1, "accessDeclaredMembers"

    #@5c
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@5f
    .line 221
    sput-object v0, Lsun/security/util/SecurityConstants;->CHECK_MEMBER_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

    #@61
    .line 226
    new-instance v0, Ljava/lang/RuntimePermission;

    #@63
    const-string/jumbo v1, "modifyThread"

    #@66
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@69
    .line 225
    sput-object v0, Lsun/security/util/SecurityConstants;->MODIFY_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

    #@6b
    .line 230
    new-instance v0, Ljava/lang/RuntimePermission;

    #@6d
    const-string/jumbo v1, "modifyThreadGroup"

    #@70
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@73
    .line 229
    sput-object v0, Lsun/security/util/SecurityConstants;->MODIFY_THREADGROUP_PERMISSION:Ljava/lang/RuntimePermission;

    #@75
    .line 234
    new-instance v0, Ljava/lang/RuntimePermission;

    #@77
    const-string/jumbo v1, "getProtectionDomain"

    #@7a
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@7d
    .line 233
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_PD_PERMISSION:Ljava/lang/RuntimePermission;

    #@7f
    .line 238
    new-instance v0, Ljava/lang/RuntimePermission;

    #@81
    const-string/jumbo v1, "getClassLoader"

    #@84
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@87
    .line 237
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    #@89
    .line 242
    new-instance v0, Ljava/lang/RuntimePermission;

    #@8b
    const-string/jumbo v1, "stopThread"

    #@8e
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@91
    .line 241
    sput-object v0, Lsun/security/util/SecurityConstants;->STOP_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

    #@93
    .line 246
    new-instance v0, Ljava/lang/RuntimePermission;

    #@95
    const-string/jumbo v1, "getStackTrace"

    #@98
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@9b
    .line 245
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_STACK_TRACE_PERMISSION:Ljava/lang/RuntimePermission;

    #@9d
    .line 250
    new-instance v0, Ljava/security/SecurityPermission;

    #@9f
    const-string/jumbo v1, "createAccessControlContext"

    #@a2
    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    #@a5
    .line 249
    sput-object v0, Lsun/security/util/SecurityConstants;->CREATE_ACC_PERMISSION:Ljava/security/SecurityPermission;

    #@a7
    .line 254
    new-instance v0, Ljava/security/SecurityPermission;

    #@a9
    const-string/jumbo v1, "getDomainCombiner"

    #@ac
    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    #@af
    .line 253
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_COMBINER_PERMISSION:Ljava/security/SecurityPermission;

    #@b1
    .line 258
    new-instance v0, Ljava/security/SecurityPermission;

    #@b3
    const-string/jumbo v1, "getPolicy"

    #@b6
    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    #@b9
    .line 257
    sput-object v0, Lsun/security/util/SecurityConstants;->GET_POLICY_PERMISSION:Ljava/security/SecurityPermission;

    #@bb
    .line 262
    new-instance v0, Ljava/net/SocketPermission;

    #@bd
    const-string/jumbo v1, "localhost:1024-"

    #@c0
    const-string/jumbo v2, "listen"

    #@c3
    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c6
    .line 261
    sput-object v0, Lsun/security/util/SecurityConstants;->LOCAL_LISTEN_PERMISSION:Ljava/net/SocketPermission;

    #@c8
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
