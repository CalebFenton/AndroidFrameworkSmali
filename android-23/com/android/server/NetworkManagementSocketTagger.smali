.class public final Lcom/android/server/NetworkManagementSocketTagger;
.super Ldalvik/system/SocketTagger;
.source "NetworkManagementSocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementSocketTagger$SocketTags;,
        Lcom/android/server/NetworkManagementSocketTagger$1;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field public static final PROP_QTAGUID_ENABLED:Ljava/lang/String; = "net.qtaguid_enabled"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementSocketTagger"

.field private static threadSocketTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/server/NetworkManagementSocketTagger$SocketTags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger$1;

    #@2
    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ldalvik/system/SocketTagger;-><init>()V

    #@3
    return-void
.end method

.method public static getThreadSocketStatsTag()I
    .locals 1

    #@0
    .prologue
    .line 58
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    #@8
    iget v0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    #@a
    return v0
.end method

.method public static install()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger;

    #@2
    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger;-><init>()V

    #@5
    invoke-static {v0}, Ldalvik/system/SocketTagger;->set(Ldalvik/system/SocketTagger;)V

    #@8
    .line 49
    return-void
.end method

.method public static kernelToTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 139
    .local v0, "length":I
    const/16 v1, 0xa

    #@7
    if-le v0, v1, :cond_0

    #@9
    .line 140
    add-int/lit8 v1, v0, -0x8

    #@b
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 142
    :cond_0
    return v2
.end method

.method private static native native_deleteTagData(II)I
.end method

.method private static native native_setCounterSet(II)I
.end method

.method private static native native_tagSocketFd(Ljava/io/FileDescriptor;II)I
.end method

.method private static native native_untagSocketFd(Ljava/io/FileDescriptor;)I
.end method

.method public static resetKernelUidStats(I)V
    .locals 4
    .param p0, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 125
    const-string/jumbo v1, "net.qtaguid_enabled"

    #@4
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 126
    invoke-static {v2, p0}, Lcom/android/server/NetworkManagementSocketTagger;->native_deleteTagData(II)I

    #@d
    move-result v0

    #@e
    .line 127
    .local v0, "errno":I
    if-gez v0, :cond_0

    #@10
    .line 128
    const-string/jumbo v1, "NetworkManagementSocketTagger"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "problem clearing counters for uid "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, " : errno "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 124
    .end local v0    # "errno":I
    :cond_0
    return-void
.end method

.method public static setKernelCounterSet(II)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "counterSet"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    const-string/jumbo v1, "net.qtaguid_enabled"

    #@4
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 116
    invoke-static {p1, p0}, Lcom/android/server/NetworkManagementSocketTagger;->native_setCounterSet(II)I

    #@d
    move-result v0

    #@e
    .line 117
    .local v0, "errno":I
    if-gez v0, :cond_0

    #@10
    .line 118
    const-string/jumbo v1, "NetworkManagementSocketTagger"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "setKernelCountSet("

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, ", "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, ") failed with errno "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 114
    .end local v0    # "errno":I
    :cond_0
    return-void
.end method

.method public static setThreadSocketStatsTag(I)V
    .locals 1
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 54
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    #@8
    iput p0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    #@a
    .line 53
    return-void
.end method

.method public static setThreadSocketStatsUid(I)V
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 62
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    #@8
    iput p0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    #@a
    .line 61
    return-void
.end method

.method private tagSocketFd(Ljava/io/FileDescriptor;II)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "tag"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 77
    if-ne p2, v1, :cond_0

    #@4
    if-ne p3, v1, :cond_0

    #@6
    return-void

    #@7
    .line 79
    :cond_0
    const-string/jumbo v1, "net.qtaguid_enabled"

    #@a
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 80
    invoke-static {p1, p2, p3}, Lcom/android/server/NetworkManagementSocketTagger;->native_tagSocketFd(Ljava/io/FileDescriptor;II)I

    #@13
    move-result v0

    #@14
    .line 81
    .local v0, "errno":I
    if-gez v0, :cond_1

    #@16
    .line 82
    const-string/jumbo v1, "NetworkManagementSocketTagger"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "tagSocketFd("

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    #@28
    move-result v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, ", "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 83
    const-string/jumbo v3, ", "

    #@3b
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 84
    const-string/jumbo v3, ") failed with errno"

    #@46
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 76
    .end local v0    # "errno":I
    :cond_1
    return-void
.end method

.method private unTagSocketFd(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 98
    sget-object v2, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    #@4
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    #@a
    .line 99
    .local v1, "options":Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    iget v2, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    iget v2, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    #@10
    if-ne v2, v3, :cond_0

    #@12
    return-void

    #@13
    .line 101
    :cond_0
    const-string/jumbo v2, "net.qtaguid_enabled"

    #@16
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 102
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->native_untagSocketFd(Ljava/io/FileDescriptor;)I

    #@1f
    move-result v0

    #@20
    .line 103
    .local v0, "errno":I
    if-gez v0, :cond_1

    #@22
    .line 104
    const-string/jumbo v2, "NetworkManagementSocketTagger"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "untagSocket("

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    #@34
    move-result v4

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, ") failed with errno "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 97
    .end local v0    # "errno":I
    :cond_1
    return-void
.end method


# virtual methods
.method public tag(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    #@8
    .line 73
    .local v0, "options":Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    iget v1, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    #@a
    iget v2, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    #@c
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/NetworkManagementSocketTagger;->tagSocketFd(Ljava/io/FileDescriptor;II)V

    #@f
    .line 66
    return-void
.end method

.method public untag(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementSocketTagger;->unTagSocketFd(Ljava/io/FileDescriptor;)V

    #@3
    .line 90
    return-void
.end method
