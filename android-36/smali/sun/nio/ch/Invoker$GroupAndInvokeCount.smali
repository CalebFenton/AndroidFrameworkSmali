.class Lsun/nio/ch/Invoker$GroupAndInvokeCount;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Invoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupAndInvokeCount"
.end annotation


# instance fields
.field private final blacklist group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

.field private blacklist handlerInvokeCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetgroup(Lsun/nio/ch/Invoker$GroupAndInvokeCount;)Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    return-object p0
.end method

.method constructor blacklist <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 2
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 54
    return-void
.end method


# virtual methods
.method blacklist group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .registers 2

    .line 56
    iget-object v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    return-object v0
.end method

.method blacklist incrementInvokeCount()V
    .registers 2

    .line 68
    iget v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    .line 69
    return-void
.end method

.method blacklist invokeCount()I
    .registers 2

    .line 59
    iget v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    return v0
.end method

.method blacklist resetInvokeCount()V
    .registers 2

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    .line 66
    return-void
.end method

.method blacklist setInvokeCount(I)V
    .registers 2
    .param p1, "value"    # I

    .line 62
    iput p1, p0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->handlerInvokeCount:I

    .line 63
    return-void
.end method
