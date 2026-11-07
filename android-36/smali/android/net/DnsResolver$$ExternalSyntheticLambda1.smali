.class public final synthetic Landroid/net/DnsResolver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/MessageQueue;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$2:Ljava/lang/Object;

.field public final synthetic blacklist f$3:Landroid/os/CancellationSignal;

.field public final synthetic blacklist f$4:Landroid/net/DnsResolver$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/MessageQueue;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$0:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$3:Landroid/os/CancellationSignal;

    iput-object p5, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$4:Landroid/net/DnsResolver$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .registers 10

    .line 0
    iget-object v0, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$0:Landroid/os/MessageQueue;

    iget-object v1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$3:Landroid/os/CancellationSignal;

    iget-object v4, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;->f$4:Landroid/net/DnsResolver$Callback;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/net/DnsResolver;->lambda$registerFDListener$9(Landroid/os/MessageQueue;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;Ljava/io/FileDescriptor;I)I

    move-result p1

    return p1
.end method
