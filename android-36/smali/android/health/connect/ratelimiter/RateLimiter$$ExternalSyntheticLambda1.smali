.class public final synthetic Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/ratelimiter/RateLimiter;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/ratelimiter/RateLimiter;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;->f$0:Landroid/health/connect/ratelimiter/RateLimiter;

    iput p2, p0, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;->f$0:Landroid/health/connect/ratelimiter/RateLimiter;

    iget v1, p0, Landroid/health/connect/ratelimiter/RateLimiter$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/health/connect/ratelimiter/RateLimiter;->$r8$lambda$w06uzCC0cQeqUjoLUeDqtVPgjQk(Landroid/health/connect/ratelimiter/RateLimiter;ILjava/lang/Integer;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
