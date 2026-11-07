.class public final synthetic Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Ljava/util/List;

.field public final synthetic blacklist f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    iput-object p2, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    iput-object p3, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$2:Ljava/util/List;

    iput-object p4, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    iget-object v2, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$2:Ljava/util/List;

    iget-object v3, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;->f$3:Ljava/util/List;

    check-cast p1, [Ljava/lang/invoke/MethodHandle;

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/invoke/MethodHandles;->lambda$loop$1(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[Ljava/lang/invoke/MethodHandle;)V

    return-void
.end method
