.class Landroid/companion/CompanionDeviceManager$Transport;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field private final blacklist mAssociationId:I

.field private final blacklist mFlags:I

.field private blacklist mLocalIn:Ljava/io/InputStream;

.field private blacklist mLocalOut:Ljava/io/OutputStream;

.field private final blacklist mRemoteIn:Ljava/io/InputStream;

.field private final blacklist mRemoteOut:Ljava/io/OutputStream;

.field private volatile blacklist mStopped:Z

.field final synthetic blacklist this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$Ik2Uk7LbsVCGgMshiZXnrjTwjhI(Landroid/companion/CompanionDeviceManager$Transport;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Transport;->lambda$start$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wIuKynGG0iWZp4O57nBuiu4AG6I(Landroid/companion/CompanionDeviceManager$Transport;)V
    .registers 1

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager$Transport;->lambda$start$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 11
    .param p2, "associationId"    # I
    .param p3, "remoteIn"    # Ljava/io/InputStream;
    .param p4, "remoteOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2004
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "associationId":I
    .end local p3    # "remoteIn":Ljava/io/InputStream;
    .end local p4    # "remoteOut":Ljava/io/OutputStream;
    .local v2, "associationId":I
    .local v3, "remoteIn":Ljava/io/InputStream;
    .local v4, "remoteOut":Ljava/io/OutputStream;
    invoke-direct/range {v0 .. v5}, Landroid/companion/CompanionDeviceManager$Transport;-><init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 2005
    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 6
    .param p2, "associationId"    # I
    .param p3, "remoteIn"    # Ljava/io/InputStream;
    .param p4, "remoteOut"    # Ljava/io/OutputStream;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2007
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2008
    iput p2, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    .line 2009
    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 2010
    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 2011
    iput p5, p0, Landroid/companion/CompanionDeviceManager$Transport;->mFlags:I

    .line 2012
    return-void
.end method

.method private blacklist copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2082
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2084
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_14

    .line 2085
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2086
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    goto :goto_4

    .line 2088
    :cond_14
    return-void
.end method

.method private synthetic blacklist lambda$start$0()V
    .registers 4

    .line 2035
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$Transport;->copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2041
    goto :goto_17

    .line 2036
    :catch_8
    move-exception v0

    .line 2037
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    if-nez v1, :cond_17

    .line 2038
    const-string v1, "CDM_CompanionDeviceManager"

    const-string v2, "Trouble during outgoing transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2039
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    .line 2042
    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    return-void
.end method

.method private synthetic blacklist lambda$start$1()V
    .registers 4

    .line 2045
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$Transport;->copyWithFlushing(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2051
    goto :goto_17

    .line 2046
    :catch_8
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    if-nez v1, :cond_17

    .line 2048
    const-string v1, "CDM_CompanionDeviceManager"

    const-string v2, "Trouble during incoming transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    .line 2052
    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public blacklist start()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2016
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    return-void

    .line 2020
    :cond_10
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createSocketPair()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2021
    .local v1, "pair":[Landroid/os/ParcelFileDescriptor;
    const/4 v0, 0x0

    aget-object v2, v1, v0

    .line 2022
    .local v2, "localFd":Landroid/os/ParcelFileDescriptor;
    const/4 v0, 0x1

    aget-object v7, v1, v0

    .line 2023
    .local v7, "remoteFd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    .line 2024
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    .line 2027
    :try_start_28
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v3

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v0

    .line 2028
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget v6, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    iget v8, p0, Landroid/companion/CompanionDeviceManager$Transport;->mFlags:I

    .line 2027
    invoke-interface/range {v3 .. v8}, Landroid/companion/ICompanionDeviceManager;->attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_49} :catch_65

    .line 2031
    nop

    .line 2033
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$Transport;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2042
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2043
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/companion/CompanionDeviceManager$Transport$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceManager$Transport;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2052
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2053
    return-void

    .line 2029
    :catch_65
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to configure transport"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist stop()V
    .registers 6

    .line 2056
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManager"

    if-nez v0, :cond_10

    .line 2057
    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return-void

    .line 2061
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mStopped:Z

    .line 2064
    :try_start_13
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v0}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v2}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$Transport;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;

    move-result-object v3

    .line 2065
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget v4, p0, Landroid/companion/CompanionDeviceManager$Transport;->mAssociationId:I

    .line 2064
    invoke-interface {v0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager;->detachSystemDataTransport(Ljava/lang/String;II)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_32} :catch_33

    .line 2068
    goto :goto_39

    .line 2066
    :catch_33
    move-exception v0

    .line 2067
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to detach transport"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2070
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2071
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mRemoteOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2072
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2073
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$Transport;->mLocalOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2074
    return-void
.end method
