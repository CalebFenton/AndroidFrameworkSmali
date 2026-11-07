.class public Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdmapInvocation"
.end annotation


# instance fields
.field public final blacklist enforceOverlayable:Z

.field public final blacklist overlayPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist policy:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 4
    .param p1, "enforceOverlayable"    # Z
    .param p2, "policy"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    .line 475
    iput-boolean p1, p0, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    .line 476
    iput-object p2, p0, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    .line 477
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    .line 482
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    .line 483
    const-string v4, ", "

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 481
    const-string/jumbo v2, "{enforceOverlayable=%s, policy=%s, overlayPaths=[%s]}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
