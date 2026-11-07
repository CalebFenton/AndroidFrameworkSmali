.class Ljava/net/NetworkInterface$1checkedAddresses;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkedAddresses"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist count:I

.field private blacklist i:I

.field private blacklist local_addrs:[Ljava/net/InetAddress;


# direct methods
.method constructor blacklist <init>(Ljava/net/NetworkInterface;)V
    .registers 8
    .param p1, "this$0"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iput v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    .line 171
    invoke-static {p1}, Ljava/net/NetworkInterface;->-$$Nest$fgetaddrs(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    .line 172
    const/4 v0, 0x1

    .line 174
    .local v0, "trusted":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 175
    .local v1, "sec":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_25

    .line 177
    :try_start_18
    new-instance v2, Ljava/net/NetPermission;

    const-string v3, "getNetworkInformation"

    invoke-direct {v2, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_22} :catch_23

    .line 180
    goto :goto_25

    .line 178
    :catch_23
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    .line 182
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_26
    invoke-static {p1}, Ljava/net/NetworkInterface;->-$$Nest$fgetaddrs(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_55

    .line 184
    if-eqz v1, :cond_3f

    if-nez v0, :cond_3f

    .line 185
    :try_start_31
    invoke-static {p1}, Ljava/net/NetworkInterface;->-$$Nest$fgetaddrs(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 187
    :cond_3f
    iget-object v3, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    invoke-static {p1}, Ljava/net/NetworkInterface;->-$$Nest$fgetaddrs(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v5

    aget-object v5, v5, v2

    aput-object v5, v3, v4
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_4f} :catch_50

    goto :goto_51

    .line 188
    :catch_50
    move-exception v3

    :goto_51
    nop

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 191
    .end local v2    # "j":I
    :cond_55
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 3

    .line 202
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 165
    invoke-virtual {p0}, Ljava/net/NetworkInterface$1checkedAddresses;->nextElement()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/net/InetAddress;
    .registers 4

    .line 194
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_11

    .line 195
    iget-object v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    aget-object v0, v0, v1

    return-object v0

    .line 197
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
