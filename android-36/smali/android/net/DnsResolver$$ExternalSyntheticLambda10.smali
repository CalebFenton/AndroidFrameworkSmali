.class public final synthetic Landroid/net/DnsResolver$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/DnsResolver;

.field public final synthetic blacklist f$1:Ljava/lang/Object;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Ljava/io/FileDescriptor;

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/DnsResolver;Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$0:Landroid/net/DnsResolver;

    iput-object p2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$2:Z

    iput-object p4, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$3:Ljava/io/FileDescriptor;

    iput-boolean p5, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$4:Z

    iput-object p6, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$5:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$0:Landroid/net/DnsResolver;

    iget-object v1, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$2:Z

    iget-object v3, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$3:Ljava/io/FileDescriptor;

    iget-boolean v4, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$4:Z

    iget-object v5, p0, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;->f$5:Ljava/io/FileDescriptor;

    invoke-static/range {v0 .. v5}, Landroid/net/DnsResolver;->$r8$lambda$SOFEQnfUhmun0vSVmrdOqBklkZY(Landroid/net/DnsResolver;Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V

    return-void
.end method
