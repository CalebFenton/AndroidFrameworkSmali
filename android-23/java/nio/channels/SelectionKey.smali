.class public abstract Ljava/nio/channels/SelectionKey;
.super Ljava/lang/Object;
.source "SelectionKey.java"


# static fields
.field public static final OP_ACCEPT:I = 0x10

.field public static final OP_CONNECT:I = 0x8

.field public static final OP_READ:I = 0x1

.field public static final OP_WRITE:I = 0x4


# instance fields
.field private volatile attachment:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    #@6
    .line 61
    return-void
.end method


# virtual methods
.method public final attach(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "anObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    #@2
    .line 76
    .local v0, "oldAttachment":Ljava/lang/Object;
    iput-object p1, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    #@4
    .line 77
    return-object v0
.end method

.method public final attachment()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public abstract cancel()V
.end method

.method public abstract channel()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract interestOps()I
.end method

.method public abstract interestOps(I)Ljava/nio/channels/SelectionKey;
.end method

.method public final isAcceptable()Z
    .locals 2

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x10

    #@6
    const/16 v1, 0x10

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public final isConnectable()Z
    .locals 2

    #@0
    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x8

    #@6
    const/16 v1, 0x8

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public final isReadable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 176
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public abstract isValid()Z
.end method

.method public final isWritable()Z
    .locals 2

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x4

    #@6
    const/4 v1, 0x4

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public abstract readyOps()I
.end method

.method public abstract selector()Ljava/nio/channels/Selector;
.end method
