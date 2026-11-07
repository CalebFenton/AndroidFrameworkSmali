.class public Lcom/android/internal/net/NetworkUtilsInternal;
.super Ljava/lang/Object;
.source "NetworkUtilsInternal.java"


# static fields
.field private static final blacklist ADDRESS_FAMILIES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .registers 8
    .param p0, "hostname"    # Ljava/lang/String;

    .line 64
    const-string v0, "^[a-zA-Z0-9_.-]+$"

    .line 65
    .local v0, "weakHostnameRegex":Ljava/lang/String;
    const-string v1, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 66
    return v2

    .line 69
    :cond_c
    sget-object v1, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    array-length v3, v1

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_1e

    aget v5, v1, v4

    .line 70
    .local v5, "address_family":I
    invoke-static {v5, p0}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 71
    return v2

    .line 69
    .end local v5    # "address_family":I
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 75
    :cond_1e
    const/4 v1, 0x1

    return v1
.end method

.method public static native blacklist protectFromVpn(I)Z
.end method

.method public static native blacklist protectFromVpn(Ljava/io/FileDescriptor;)Z
.end method

.method public static native blacklist setAllowNetworkingForProcess(Z)V
.end method
