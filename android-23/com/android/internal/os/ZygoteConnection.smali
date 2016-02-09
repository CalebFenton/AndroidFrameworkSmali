.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3
    filled-new-array {v1, v1}, [I

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [[I

    #@d
    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    #@f
    .line 51
    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 4
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@5
    .line 91
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    #@7
    .line 94
    new-instance v1, Ljava/io/DataOutputStream;

    #@9
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@10
    .line 93
    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    #@12
    .line 96
    new-instance v1, Ljava/io/BufferedReader;

    #@14
    .line 97
    new-instance v2, Ljava/io/InputStreamReader;

    #@16
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@1d
    const/16 v3, 0x100

    #@1f
    .line 96
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@22
    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    #@24
    .line 99
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@26
    const/16 v2, 0x3e8

    #@28
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    #@2b
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@2d
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    #@30
    move-result-object v1

    #@31
    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 89
    return-void

    #@34
    .line 103
    :catch_0
    move-exception v0

    #@35
    .line 104
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "Zygote"

    #@38
    const-string/jumbo v2, "Cannot read peer credentials"

    #@3b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 105
    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    #@0
    .prologue
    .line 651
    const-string/jumbo v0, "1"

    #@3
    const-string/jumbo v1, "ro.debuggable"

    #@6
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 652
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@12
    or-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@16
    .line 650
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    #@3
    move-result v0

    #@4
    .line 673
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 674
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    #@c
    const-string/jumbo v2, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    #@f
    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 670
    :cond_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 7
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    #@0
    .prologue
    const/16 v6, 0x1f

    #@2
    const/16 v5, 0x1e

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    .line 685
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@8
    if-nez v1, :cond_1

    #@a
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "wrap."

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 687
    .local v0, "property":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@27
    move-result v1

    #@28
    if-le v1, v6, :cond_0

    #@2a
    .line 689
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v1

    #@2e
    const/16 v2, 0x2e

    #@30
    if-eq v1, v2, :cond_2

    #@32
    .line 690
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 695
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@3c
    .line 696
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@3e
    if-eqz v1, :cond_1

    #@40
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_1

    #@48
    .line 697
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@4a
    .line 684
    .end local v0    # "property":Ljava/lang/String;
    :cond_1
    return-void

    #@4b
    .line 692
    .restart local v0    # "property":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    goto :goto_0
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x3e8

    #@2
    const/4 v3, 0x1

    #@3
    .line 614
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    #@6
    move-result v2

    #@7
    if-ne v2, v4, :cond_2

    #@9
    .line 615
    const-string/jumbo v2, "ro.factorytest"

    #@c
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 621
    .local v0, "factoryTest":Ljava/lang/String;
    const-string/jumbo v2, "1"

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    const-string/jumbo v2, "2"

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    :cond_0
    const/4 v1, 0x0

    #@23
    .line 623
    .local v1, "uidRestricted":Z
    :goto_0
    if-eqz v1, :cond_2

    #@25
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    #@27
    if-eqz v2, :cond_2

    #@29
    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@2b
    if-ge v2, v4, :cond_2

    #@2d
    .line 624
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    #@2f
    .line 625
    const-string/jumbo v3, "System UID may not launch process with UID < 1000"

    #@32
    .line 624
    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 621
    .end local v1    # "uidRestricted":Z
    :cond_1
    const/4 v1, 0x1

    #@37
    .restart local v1    # "uidRestricted":Z
    goto :goto_0

    #@38
    .line 631
    .end local v0    # "factoryTest":Ljava/lang/String;
    .end local v1    # "uidRestricted":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    #@3a
    if-nez v2, :cond_3

    #@3c
    .line 632
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    #@3f
    move-result v2

    #@40
    iput v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@42
    .line 633
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    #@44
    .line 635
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    #@46
    if-nez v2, :cond_4

    #@48
    .line 636
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    #@4b
    move-result v2

    #@4c
    iput v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    #@4e
    .line 637
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    #@50
    .line 612
    :cond_4
    return-void
.end method

.method private handleAbiListQuery()Z
    .locals 4

    #@0
    .prologue
    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    #@2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@4
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v0

    #@8
    .line 263
    .local v0, "abiListBytes":[B
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    #@a
    array-length v3, v0

    #@b
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@e
    .line 264
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    #@10
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 265
    const/4 v2, 0x0

    #@14
    return v2

    #@15
    .line 266
    .end local v0    # "abiListBytes":[B
    :catch_0
    move-exception v1

    #@16
    .line 267
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "Zygote"

    #@19
    const-string/jumbo v3, "Error writing to command socket"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 268
    const/4 v2, 0x1

    #@20
    return v2
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 8
    .param p1, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "newStderr"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 725
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    #@5
    .line 726
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    #@8
    .line 728
    if-eqz p2, :cond_1

    #@a
    .line 730
    const/4 v1, 0x0

    #@b
    :try_start_0
    aget-object v1, p2, v1

    #@d
    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    #@f
    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    #@12
    .line 731
    const/4 v1, 0x1

    #@13
    aget-object v1, p2, v1

    #@15
    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    #@17
    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    #@1a
    .line 732
    const/4 v1, 0x2

    #@1b
    aget-object v1, p2, v1

    #@1d
    sget v2, Landroid/system/OsConstants;->STDERR_FILENO:I

    #@1f
    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    #@22
    .line 734
    array-length v1, p2

    #@23
    :goto_0
    if-ge v0, v1, :cond_0

    #@25
    aget-object v7, p2, v0

    #@27
    .line 735
    .local v7, "fd":Ljava/io/FileDescriptor;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@2a
    .line 734
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 737
    .end local v7    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 743
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 744
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@35
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@38
    .line 748
    :cond_2
    const-wide/16 v0, 0x40

    #@3a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@3d
    .line 749
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@3f
    if-eqz v0, :cond_3

    #@41
    .line 750
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@43
    .line 751
    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@45
    iget v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@47
    .line 752
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 753
    iget-object v5, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@4d
    move-object v4, p3

    #@4e
    .line 750
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@51
    .line 718
    :goto_2
    return-void

    #@52
    .line 738
    :catch_0
    move-exception v6

    #@53
    .line 739
    .local v6, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v0, "Zygote"

    #@56
    const-string/jumbo v1, "Error reopening stdio"

    #@59
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    goto :goto_1

    #@5d
    .line 755
    .end local v6    # "ex":Landroid/system/ErrnoException;
    :cond_3
    iget v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@5f
    .line 756
    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@61
    .line 755
    invoke-static {v0, v1, v3}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@64
    goto :goto_2
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 10
    .param p1, "pid"    # I
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 775
    if-lez p1, :cond_0

    #@3
    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    #@6
    .line 779
    :cond_0
    if-eqz p2, :cond_1

    #@8
    .line 780
    array-length v8, p2

    #@9
    move v6, v7

    #@a
    :goto_0
    if-ge v6, v8, :cond_1

    #@c
    aget-object v1, p2, v6

    #@e
    .line 781
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@11
    .line 780
    add-int/lit8 v6, v6, 0x1

    #@13
    goto :goto_0

    #@14
    .line 785
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_1
    const/4 v5, 0x0

    #@15
    .line 786
    .local v5, "usingWrapper":Z
    if-eqz p3, :cond_3

    #@17
    if-lez p1, :cond_3

    #@19
    .line 787
    new-instance v3, Ljava/io/DataInputStream;

    #@1b
    new-instance v6, Ljava/io/FileInputStream;

    #@1d
    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@20
    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@23
    .line 788
    .local v3, "is":Ljava/io/DataInputStream;
    const/4 v2, -0x1

    #@24
    .line 790
    .local v2, "innerPid":I
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v2

    #@28
    .line 795
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    .line 802
    :goto_1
    if-lez v2, :cond_3

    #@2d
    .line 803
    move v4, v2

    #@2e
    .line 804
    .local v4, "parentPid":I
    :goto_2
    if-lez v4, :cond_2

    #@30
    if-eq v4, p1, :cond_2

    #@32
    .line 805
    invoke-static {v4}, Landroid/os/Process;->getParentPid(I)I

    #@35
    move-result v4

    #@36
    goto :goto_2

    #@37
    .line 796
    .end local v4    # "parentPid":I
    :catch_0
    move-exception v0

    #@38
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_1

    #@39
    .line 791
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@3a
    .line 792
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "Zygote"

    #@3d
    const-string/jumbo v8, "Error reading pid from wrapped process, child may have died"

    #@40
    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 795
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@46
    goto :goto_1

    #@47
    .line 796
    :catch_2
    move-exception v0

    #@48
    goto :goto_1

    #@49
    .line 793
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@4a
    .line 795
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@4d
    .line 793
    :goto_3
    throw v6

    #@4e
    .line 796
    :catch_3
    move-exception v0

    #@4f
    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_3

    #@50
    .line 807
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v4    # "parentPid":I
    :cond_2
    if-lez v4, :cond_4

    #@52
    .line 808
    const-string/jumbo v6, "Zygote"

    #@55
    new-instance v8, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v9, "Wrapped process has pid "

    #@5d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 809
    move p1, v2

    #@6d
    .line 810
    const/4 v5, 0x1

    #@6e
    .line 820
    .end local v2    # "innerPid":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v4    # "parentPid":I
    :cond_3
    :goto_4
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    #@70
    invoke-virtual {v6, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@73
    .line 821
    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    #@75
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@78
    .line 827
    return v7

    #@79
    .line 812
    .restart local v2    # "innerPid":I
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "parentPid":I
    :cond_4
    const-string/jumbo v6, "Zygote"

    #@7c
    new-instance v8, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v9, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    #@84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v8

    #@8c
    .line 814
    const-string/jumbo v9, " innerPid="

    #@8f
    .line 812
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v8

    #@97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    goto :goto_4

    #@9f
    .line 822
    .end local v2    # "innerPid":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v4    # "parentPid":I
    :catch_4
    move-exception v0

    #@a0
    .line 823
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v6, "Zygote"

    #@a3
    const-string/jumbo v7, "Error writing to command socket"

    #@a6
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a9
    .line 824
    const/4 v6, 0x1

    #@aa
    return v6
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "newStderr"    # Ljava/io/PrintStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 854
    const-string/jumbo v0, "Zygote"

    #@3
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 855
    if-eqz p0, :cond_1

    #@8
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    if-nez p2, :cond_0

    #@13
    const-string/jumbo p2, ""

    #@16
    .end local p2    # "ex":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 853
    :cond_1
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 573
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    #@3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 575
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_0

    #@9
    .line 577
    return-object v6

    #@a
    .line 579
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v0

    #@e
    .line 586
    .local v0, "argc":I
    const/16 v5, 0x400

    #@10
    if-le v0, v5, :cond_1

    #@12
    .line 587
    new-instance v5, Ljava/io/IOException;

    #@14
    const-string/jumbo v6, "max arg count exceeded"

    #@17
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v5

    #@1b
    .line 580
    .end local v0    # "argc":I
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1c
    .line 581
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "Zygote"

    #@1f
    const-string/jumbo v6, "invalid Zygote wire format: non-int at argc"

    #@22
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 582
    new-instance v5, Ljava/io/IOException;

    #@27
    const-string/jumbo v6, "invalid wire format"

    #@2a
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 590
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "argc":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    #@30
    .line 591
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@33
    .line 592
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    #@35
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    aput-object v5, v3, v2

    #@3b
    .line 593
    aget-object v5, v3, v2

    #@3d
    if-nez v5, :cond_2

    #@3f
    .line 595
    new-instance v5, Ljava/io/IOException;

    #@41
    const-string/jumbo v6, "truncated request"

    #@44
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@47
    throw v5

    #@48
    .line 591
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 599
    :cond_3
    return-object v3
.end method

.method private setChildPgid(I)V
    .locals 3
    .param p1, "pid"    # I

    #@0
    .prologue
    .line 833
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    #@2
    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/system/Os;->getpgid(I)I

    #@9
    move-result v1

    #@a
    invoke-static {p1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 830
    :goto_0
    return-void

    #@e
    .line 834
    :catch_0
    move-exception v0

    #@f
    .line 839
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v1, "Zygote"

    #@12
    const-string/jumbo v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    #@0
    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 275
    :goto_0
    return-void

    #@6
    .line 278
    :catch_0
    move-exception v0

    #@7
    .line 279
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "Zygote"

    #@a
    const-string/jumbo v2, "Exception while closing command socket in parent"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method runOnce()Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const/16 v26, 0x0

    #@2
    .line 139
    .local v26, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    #@5
    move-result-object v17

    #@6
    .line 140
    .local v17, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@8
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@a
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v19

    #@e
    .line 147
    .local v19, "descriptors":[Ljava/io/FileDescriptor;
    if-nez v17, :cond_0

    #@10
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    #@13
    .line 150
    const/4 v6, 0x1

    #@14
    return v6

    #@15
    .line 141
    .end local v17    # "args":[Ljava/lang/String;
    .end local v19    # "descriptors":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v22

    #@16
    .line 142
    .local v22, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "Zygote"

    #@19
    new-instance v7, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v8, "IOException on command socket "

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    #@37
    .line 144
    const/4 v6, 0x1

    #@38
    return v6

    #@39
    .line 154
    .end local v22    # "ex":Ljava/io/IOException;
    .restart local v17    # "args":[Ljava/lang/String;
    .restart local v19    # "descriptors":[Ljava/io/FileDescriptor;
    :cond_0
    const/16 v25, 0x0

    #@3b
    .line 156
    .local v25, "newStderr":Ljava/io/PrintStream;
    if-eqz v19, :cond_1

    #@3d
    move-object/from16 v0, v19

    #@3f
    array-length v6, v0

    #@40
    const/4 v7, 0x3

    #@41
    if-lt v6, v7, :cond_1

    #@43
    .line 157
    new-instance v25, Ljava/io/PrintStream;

    #@45
    .line 158
    .end local v25    # "newStderr":Ljava/io/PrintStream;
    new-instance v6, Ljava/io/FileOutputStream;

    #@47
    const/4 v7, 0x2

    #@48
    aget-object v7, v19, v7

    #@4a
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@4d
    .line 157
    move-object/from16 v0, v25

    #@4f
    invoke-direct {v0, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@52
    .line 161
    :cond_1
    const/16 v28, -0x1

    #@54
    .line 162
    .local v28, "pid":I
    const/16 v18, 0x0

    #@56
    .line 163
    .local v18, "childPipeFd":Ljava/io/FileDescriptor;
    const/16 v30, 0x0

    #@58
    .line 166
    .local v30, "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_1
    new-instance v27, Lcom/android/internal/os/ZygoteConnection$Arguments;

    #@5a
    move-object/from16 v0, v27

    #@5c
    move-object/from16 v1, v17

    #@5e
    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    #@61
    .line 168
    .local v27, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    move-object/from16 v0, v27

    #@63
    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    #@65
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    if-eqz v6, :cond_2

    #@67
    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()Z

    #@6a
    move-result v6

    #@6b
    return v6

    #@6c
    .line 172
    :cond_2
    move-object/from16 v0, v27

    #@6e
    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@70
    const-wide/16 v8, 0x0

    #@72
    cmp-long v6, v6, v8

    #@74
    if-nez v6, :cond_3

    #@76
    move-object/from16 v0, v27

    #@78
    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@7a
    const-wide/16 v8, 0x0

    #@7c
    cmp-long v6, v6, v8

    #@7e
    if-eqz v6, :cond_4

    #@80
    .line 173
    :cond_3
    new-instance v6, Lcom/android/internal/os/ZygoteSecurityException;

    #@82
    new-instance v7, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v8, "Client may not specify capabilities: permitted=0x"

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    .line 174
    move-object/from16 v0, v27

    #@90
    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@92
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    .line 175
    const-string/jumbo v8, ", effective=0x"

    #@9d
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v7

    #@a1
    .line 175
    move-object/from16 v0, v27

    #@a3
    iget-wide v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@a5
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    invoke-direct {v6, v7}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v6
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_6

    #@b5
    .line 229
    .end local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v20

    #@b6
    .local v20, "ex":Landroid/system/ErrnoException;
    move-object/from16 v26, v27

    #@b8
    .line 230
    .end local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_0
    const-string/jumbo v6, "Exception creating pipe"

    #@bb
    move-object/from16 v0, v25

    #@bd
    move-object/from16 v1, v20

    #@bf
    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c2
    .line 239
    .end local v20    # "ex":Landroid/system/ErrnoException;
    :goto_1
    if-nez v28, :cond_9

    #@c4
    .line 241
    :try_start_3
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@c7
    .line 242
    const/16 v30, 0x0

    #@c9
    .line 243
    .restart local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v26

    #@cd
    move-object/from16 v2, v19

    #@cf
    move-object/from16 v3, v18

    #@d1
    move-object/from16 v4, v25

    #@d3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d6
    .line 247
    const/4 v6, 0x1

    #@d7
    .line 255
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@da
    .line 256
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@dd
    .line 247
    return v6

    #@de
    .line 178
    .restart local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .restart local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    #@e0
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    #@e2
    move-object/from16 v0, v27

    #@e4
    invoke-static {v0, v6}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    #@e7
    .line 179
    move-object/from16 v0, p0

    #@e9
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    #@eb
    move-object/from16 v0, v27

    #@ed
    invoke-static {v0, v6}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    #@f0
    .line 181
    invoke-static/range {v27 .. v27}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@f3
    .line 182
    invoke-static/range {v27 .. v27}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@f6
    .line 184
    const/4 v10, 0x0

    #@f7
    .line 186
    .local v10, "rlimits":[[I
    move-object/from16 v0, v27

    #@f9
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@fb
    if-eqz v6, :cond_5

    #@fd
    .line 187
    move-object/from16 v0, v27

    #@ff
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    #@101
    sget-object v7, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    #@103
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@106
    move-result-object v10

    #@107
    .end local v10    # "rlimits":[[I
    check-cast v10, [[I

    #@109
    .line 190
    :cond_5
    move-object/from16 v0, v27

    #@10b
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@10d
    if-eqz v6, :cond_6

    #@10f
    .line 191
    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    #@111
    invoke-static {v6}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    #@114
    move-result-object v29

    #@115
    .line 192
    .local v29, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v6, 0x1

    #@116
    aget-object v18, v29, v6

    #@118
    .line 193
    .local v18, "childPipeFd":Ljava/io/FileDescriptor;
    const/4 v6, 0x0

    #@119
    aget-object v30, v29, v6

    #@11b
    .line 194
    .local v30, "serverPipeFd":Ljava/io/FileDescriptor;
    sget v6, Landroid/system/OsConstants;->F_SETFD:I

    #@11d
    const/4 v7, 0x0

    #@11e
    move-object/from16 v0, v18

    #@120
    invoke-static {v0, v6, v7}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    #@123
    .line 209
    .end local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v29    # "pipeFds":[Ljava/io/FileDescriptor;
    .end local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    :cond_6
    const/4 v6, -0x1

    #@124
    const/4 v7, -0x1

    #@125
    filled-new-array {v6, v7}, [I

    #@128
    move-result-object v14

    #@129
    .line 211
    .local v14, "fdsToClose":[I
    move-object/from16 v0, p0

    #@12b
    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    #@12d
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@130
    move-result-object v24

    #@131
    .line 213
    .local v24, "fd":Ljava/io/FileDescriptor;
    if-eqz v24, :cond_7

    #@133
    .line 214
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileDescriptor;->getInt$()I

    #@136
    move-result v6

    #@137
    const/4 v7, 0x0

    #@138
    aput v6, v14, v7

    #@13a
    .line 217
    :cond_7
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    #@13d
    move-result-object v24

    #@13e
    .line 219
    if-eqz v24, :cond_8

    #@140
    .line 220
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileDescriptor;->getInt$()I

    #@143
    move-result v6

    #@144
    const/4 v7, 0x1

    #@145
    aput v6, v14, v7

    #@147
    .line 223
    :cond_8
    const/16 v24, 0x0

    #@149
    .line 225
    .local v24, "fd":Ljava/io/FileDescriptor;
    move-object/from16 v0, v27

    #@14b
    iget v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@14d
    move-object/from16 v0, v27

    #@14f
    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    #@151
    move-object/from16 v0, v27

    #@153
    iget-object v8, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@155
    .line 226
    move-object/from16 v0, v27

    #@157
    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@159
    move-object/from16 v0, v27

    #@15b
    iget v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    #@15d
    move-object/from16 v0, v27

    #@15f
    iget-object v12, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    #@161
    .line 227
    move-object/from16 v0, v27

    #@163
    iget-object v13, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@165
    move-object/from16 v0, v27

    #@167
    iget-object v15, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    #@169
    .line 228
    move-object/from16 v0, v27

    #@16b
    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    #@16d
    move-object/from16 v16, v0

    #@16f
    .line 225
    invoke-static/range {v6 .. v16}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_4 .. :try_end_4} :catch_6

    #@172
    move-result v28

    #@173
    move-object/from16 v26, v27

    #@175
    .end local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v26, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto/16 :goto_1

    #@177
    .line 233
    .end local v14    # "fdsToClose":[I
    .end local v24    # "fd":Ljava/io/FileDescriptor;
    .local v18, "childPipeFd":Ljava/io/FileDescriptor;
    .local v26, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v30, "serverPipeFd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v21

    #@178
    .line 235
    .end local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    .local v21, "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :goto_2
    const-string/jumbo v6, "Zygote security policy prevents request: "

    #@17b
    .line 234
    move-object/from16 v0, v25

    #@17d
    move-object/from16 v1, v21

    #@17f
    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@182
    goto/16 :goto_1

    #@184
    .line 231
    .end local v21    # "ex":Lcom/android/internal/os/ZygoteSecurityException;
    .restart local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    :catch_3
    move-exception v23

    #@185
    .line 232
    .end local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    .local v23, "ex":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string/jumbo v6, "Invalid zygote arguments"

    #@188
    move-object/from16 v0, v25

    #@18a
    move-object/from16 v1, v23

    #@18c
    invoke-static {v0, v6, v1}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18f
    goto/16 :goto_1

    #@191
    .line 250
    .end local v23    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_9
    :try_start_5
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@194
    .line 251
    const/16 v18, 0x0

    #@196
    .line 252
    .restart local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    #@198
    move/from16 v1, v28

    #@19a
    move-object/from16 v2, v19

    #@19c
    move-object/from16 v3, v30

    #@19e
    move-object/from16 v4, v26

    #@1a0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1a3
    move-result v6

    #@1a4
    .line 255
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@1a7
    .line 256
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@1aa
    .line 252
    return v6

    #@1ab
    .line 254
    .end local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v6

    #@1ac
    .line 255
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@1af
    .line 256
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@1b2
    .line 254
    throw v6

    #@1b3
    .line 229
    .restart local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    :catch_4
    move-exception v20

    #@1b4
    .restart local v20    # "ex":Landroid/system/ErrnoException;
    goto/16 :goto_0

    #@1b6
    .line 231
    .end local v18    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v20    # "ex":Landroid/system/ErrnoException;
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v30    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_5
    move-exception v23

    #@1b7
    .restart local v23    # "ex":Ljava/lang/IllegalArgumentException;
    move-object/from16 v26, v27

    #@1b9
    .end local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v26, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_3

    #@1ba
    .line 233
    .end local v23    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_6
    move-exception v21

    #@1bb
    .restart local v21    # "ex":Lcom/android/internal/os/ZygoteSecurityException;
    move-object/from16 v26, v27

    #@1bd
    .end local v27    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v26    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_2
.end method
