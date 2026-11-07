.class public final Lsun/security/util/SecurityConstants;
.super Ljava/lang/Object;
.source "SecurityConstants.java"


# static fields
.field public static final blacklist ACCESS_PERMISSION:Ljava/lang/reflect/ReflectPermission;

.field public static final blacklist ALL_PERMISSION:Ljava/security/AllPermission;

.field public static final blacklist CHECK_MEMBER_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist CREATE_ACC_PERMISSION:Ljava/security/SecurityPermission;

.field public static final greylist CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist FILE_DELETE_ACTION:Ljava/lang/String; = "delete"

.field public static final blacklist FILE_EXECUTE_ACTION:Ljava/lang/String; = "execute"

.field public static final blacklist FILE_READLINK_ACTION:Ljava/lang/String; = "readlink"

.field public static final blacklist FILE_READ_ACTION:Ljava/lang/String; = "read"

.field public static final blacklist FILE_WRITE_ACTION:Ljava/lang/String; = "write"

.field public static final greylist GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist GET_COMBINER_PERMISSION:Ljava/security/SecurityPermission;

.field public static final blacklist GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist GET_PD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist GET_POLICY_PERMISSION:Ljava/security/SecurityPermission;

.field public static final blacklist GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist GET_STACK_TRACE_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist LOCAL_LISTEN_PERMISSION:Ljava/net/SocketPermission;

.field public static final greylist MODIFY_THREADGROUP_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final greylist MODIFY_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist PROPERTY_READ_ACTION:Ljava/lang/String; = "read"

.field public static final blacklist PROPERTY_RW_ACTION:Ljava/lang/String; = "read,write"

.field public static final blacklist PROPERTY_WRITE_ACTION:Ljava/lang/String; = "write"

.field public static final blacklist PROVIDER_VER:Ljava/lang/String;

.field public static final blacklist REFLECTION_FACTORY_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist SET_SOCKETIMPL_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist SOCKET_ACCEPT_ACTION:Ljava/lang/String; = "accept"

.field public static final blacklist SOCKET_CONNECT_ACCEPT_ACTION:Ljava/lang/String; = "connect,accept"

.field public static final blacklist SOCKET_CONNECT_ACTION:Ljava/lang/String; = "connect"

.field public static final blacklist SOCKET_LISTEN_ACTION:Ljava/lang/String; = "listen"

.field public static final blacklist SOCKET_RESOLVE_ACTION:Ljava/lang/String; = "resolve"

.field public static final blacklist SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final blacklist STOP_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final blacklist SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    sput-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    .line 73
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "specifyStreamHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    .line 77
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setProxySelector"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    .line 81
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getProxySelector"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    .line 85
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setCookieHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    .line 89
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getCookieHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    .line 93
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setResponseCache"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    .line 97
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getResponseCache"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    .line 101
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setSocketImpl"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_SOCKETIMPL_PERMISSION:Ljava/net/NetPermission;

    .line 105
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "createClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    .line 109
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "accessDeclaredMembers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->CHECK_MEMBER_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

    .line 113
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->MODIFY_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

    .line 117
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThreadGroup"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->MODIFY_THREADGROUP_PERMISSION:Ljava/lang/RuntimePermission;

    .line 121
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getProtectionDomain"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_PD_PERMISSION:Ljava/lang/RuntimePermission;

    .line 125
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    .line 129
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "stopThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->STOP_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

    .line 133
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getStackTrace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_STACK_TRACE_PERMISSION:Ljava/lang/RuntimePermission;

    .line 137
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    .line 141
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "createAccessControlContext"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->CREATE_ACC_PERMISSION:Ljava/security/SecurityPermission;

    .line 145
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getDomainCombiner"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_COMBINER_PERMISSION:Ljava/security/SecurityPermission;

    .line 149
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getPolicy"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_POLICY_PERMISSION:Ljava/security/SecurityPermission;

    .line 153
    new-instance v0, Ljava/net/SocketPermission;

    const-string v1, "localhost:0"

    const-string v2, "listen"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->LOCAL_LISTEN_PERMISSION:Ljava/net/SocketPermission;

    .line 156
    nop

    .line 157
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants;->PROVIDER_VER:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/reflect/ReflectPermission;

    const-string v1, "suppressAccessChecks"

    invoke-direct {v0, v1}, Ljava/lang/reflect/ReflectPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->ACCESS_PERMISSION:Ljava/lang/reflect/ReflectPermission;

    .line 164
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "reflectionFactoryAccess"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->REFLECTION_FACTORY_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
