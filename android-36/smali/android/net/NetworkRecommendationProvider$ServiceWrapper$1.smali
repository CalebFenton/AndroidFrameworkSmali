.class Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;
.super Ljava/lang/Object;
.source "NetworkRecommendationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->requestScores([Landroid/net/NetworkKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

.field final synthetic blacklist val$networks:[Landroid/net/NetworkKey;


# direct methods
.method constructor blacklist <init>(Landroid/net/NetworkRecommendationProvider$ServiceWrapper;[Landroid/net/NetworkKey;)V
    .registers 3
    .param p1, "this$1"    # Landroid/net/NetworkRecommendationProvider$ServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->this$1:Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

    iput-object p2, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->val$networks:[Landroid/net/NetworkKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->this$1:Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

    iget-object v0, v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->this$0:Landroid/net/NetworkRecommendationProvider;

    iget-object v1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->val$networks:[Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRecommendationProvider;->onRequestScores([Landroid/net/NetworkKey;)V

    .line 106
    return-void
.end method
