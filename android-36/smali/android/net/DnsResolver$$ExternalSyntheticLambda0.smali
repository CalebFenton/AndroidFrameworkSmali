.class public final synthetic Landroid/net/DnsResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/DnsResolver;

.field public final synthetic blacklist f$1:Ljava/lang/Object;

.field public final synthetic blacklist f$2:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/DnsResolver;Ljava/lang/Object;Ljava/io/FileDescriptor;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;->f$0:Landroid/net/DnsResolver;

    iput-object p2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;->f$2:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;->f$0:Landroid/net/DnsResolver;

    iget-object v1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;->f$2:Ljava/io/FileDescriptor;

    invoke-static {v0, v1, v2}, Landroid/net/DnsResolver;->$r8$lambda$uKMoOkUSGZAS_MKzC0uK8ANpXgA(Landroid/net/DnsResolver;Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    return-void
.end method
