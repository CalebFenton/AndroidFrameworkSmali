.class public Landroid/net/connectivity/com/android/net/module/util/BpfUtils;
.super Ljava/lang/Object;
.source "BpfUtils.java"


# static fields
.field public static final blacklist BPF_CGROUP_GETSOCKOPT:I = 0x15

.field public static final blacklist BPF_CGROUP_INET4_BIND:I = 0x8

.field public static final blacklist BPF_CGROUP_INET4_CONNECT:I = 0xa

.field public static final blacklist BPF_CGROUP_INET6_BIND:I = 0x9

.field public static final blacklist BPF_CGROUP_INET6_CONNECT:I = 0xb

.field public static final blacklist BPF_CGROUP_INET_EGRESS:I = 0x1

.field public static final blacklist BPF_CGROUP_INET_INGRESS:I = 0x0

.field public static final blacklist BPF_CGROUP_INET_SOCK_CREATE:I = 0x2

.field public static final blacklist BPF_CGROUP_INET_SOCK_RELEASE:I = 0x22

.field public static final blacklist BPF_CGROUP_SETSOCKOPT:I = 0x16

.field public static final blacklist BPF_CGROUP_UDP4_RECVMSG:I = 0x13

.field public static final blacklist BPF_CGROUP_UDP4_SENDMSG:I = 0xe

.field public static final blacklist BPF_CGROUP_UDP6_RECVMSG:I = 0x14

.field public static final blacklist BPF_CGROUP_UDP6_SENDMSG:I = 0xf

.field public static final blacklist CGROUP_PATH:Ljava/lang/String; = "/sys/fs/cgroup/"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroid/net/connectivity/com/android/net/module/util/BpfUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/JniUtil;->getJniLibraryName(Ljava/lang/Package;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getProgramId(I)I
    .registers 2
    .param p0, "attachType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const-string v0, "/sys/fs/cgroup/"

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfUtils;->native_getProgramIdFromCgroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native blacklist native_getProgramIdFromCgroup(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
