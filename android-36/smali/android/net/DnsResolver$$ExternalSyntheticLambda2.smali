.class public final synthetic Landroid/net/DnsResolver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Object;

.field public final synthetic blacklist f$1:Landroid/os/CancellationSignal;

.field public final synthetic blacklist f$2:Ljava/io/FileDescriptor;

.field public final synthetic blacklist f$3:Landroid/net/DnsResolver$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Object;Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$1:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$2:Ljava/io/FileDescriptor;

    iput-object p4, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$3:Landroid/net/DnsResolver$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$1:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$2:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;->f$3:Landroid/net/DnsResolver$Callback;

    invoke-static {v0, v1, v2, v3}, Landroid/net/DnsResolver;->lambda$registerFDListener$8(Ljava/lang/Object;Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;)V

    return-void
.end method
