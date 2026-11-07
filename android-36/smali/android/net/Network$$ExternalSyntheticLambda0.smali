.class public final synthetic Landroid/net/Network$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Llibcore/net/http/Dns;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/Network;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/Network;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/Network$$ExternalSyntheticLambda0;->f$0:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final blacklist test-api lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/Network$$ExternalSyntheticLambda0;->f$0:Landroid/net/Network;

    invoke-static {v0, p1}, Landroid/net/Network;->$r8$lambda$U1YT_z1oIOJtcwHwLnzqGLPyBqU(Landroid/net/Network;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
