.class public final synthetic Landroid/net/NetworkStats$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(II[Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;->f$0:I

    iput p2, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget v0, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;->f$0:I

    iget v1, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Landroid/net/NetworkStats$$ExternalSyntheticLambda5;->f$2:[Ljava/lang/String;

    check-cast p1, Landroid/net/NetworkStats$Entry;

    invoke-static {v0, v1, v2, p1}, Landroid/net/NetworkStats;->lambda$filter$5(II[Ljava/lang/String;Landroid/net/NetworkStats$Entry;)Z

    move-result p1

    return p1
.end method
