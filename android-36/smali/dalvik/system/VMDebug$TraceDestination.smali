.class public Ldalvik/system/VMDebug$TraceDestination;
.super Ljava/lang/Object;
.source "VMDebug.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/VMDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDestination"
.end annotation


# instance fields
.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private final blacklist traceFileName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "traceFileName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Ldalvik/system/VMDebug$TraceDestination;->traceFileName:Ljava/lang/String;

    .line 837
    iput-object p2, p0, Ldalvik/system/VMDebug$TraceDestination;->fd:Ljava/io/FileDescriptor;

    .line 838
    return-void
.end method

.method public static blacklist fromFileDescriptor(Ljava/io/FileDescriptor;)Ldalvik/system/VMDebug$TraceDestination;
    .registers 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 873
    new-instance v0, Ldalvik/system/VMDebug$TraceDestination;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ldalvik/system/VMDebug$TraceDestination;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static blacklist fromFileName(Ljava/lang/String;)Ldalvik/system/VMDebug$TraceDestination;
    .registers 3
    .param p0, "traceFileName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 862
    new-instance v0, Ldalvik/system/VMDebug$TraceDestination;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldalvik/system/VMDebug$TraceDestination;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getFd()I
    .registers 2

    .line 842
    iget-object v0, p0, Ldalvik/system/VMDebug$TraceDestination;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_b

    .line 843
    iget-object v0, p0, Ldalvik/system/VMDebug$TraceDestination;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0

    .line 845
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getFileName()Ljava/lang/String;
    .registers 2

    .line 851
    iget-object v0, p0, Ldalvik/system/VMDebug$TraceDestination;->traceFileName:Ljava/lang/String;

    return-object v0
.end method
