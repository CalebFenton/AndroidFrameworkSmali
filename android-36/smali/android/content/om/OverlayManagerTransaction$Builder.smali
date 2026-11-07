.class public final Landroid/content/om/OverlayManagerTransaction$Builder;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSelfTargeting:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mSelfTargeting:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/om/OverlayManagerTransaction;
    .registers 5

    .line 353
    new-instance v0, Landroid/content/om/OverlayManagerTransaction;

    iget-object v1, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    iget-boolean v2, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mSelfTargeting:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/om/OverlayManagerTransaction;-><init>(Ljava/util/List;ZLandroid/content/om/OverlayManagerTransaction-IA;)V

    return-object v0
.end method

.method public blacklist registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 4
    .param p1, "overlay"    # Landroid/content/om/FabricatedOverlay;

    .line 327
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    invoke-static {p1}, Landroid/content/om/OverlayManagerTransaction;->-$$Nest$smgenerateRegisterFabricatedOverlayRequest(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-object p0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayIdentifier;Z)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 4
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z

    .line 269
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 5
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 8
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "ZI",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)",
            "Landroid/content/om/OverlayManagerTransaction$Builder;"
        }
    .end annotation

    .line 292
    .local p4, "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    xor-int/lit8 v0, p2, 0x1

    .line 295
    .local v0, "type":I
    iget-object v1, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    new-instance v2, Landroid/content/om/OverlayManagerTransaction$Request;

    invoke-direct {v2, v0, p1, p3, p4}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    return-object p0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayIdentifier;ZLjava/util/List;)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 5
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayIdentifier;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)",
            "Landroid/content/om/OverlayManagerTransaction$Builder;"
        }
    .end annotation

    .line 277
    .local p3, "constraints":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayConstraint;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setSelfTargeting(Z)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 2
    .param p1, "selfTargeting"    # Z

    .line 308
    iput-boolean p1, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mSelfTargeting:Z

    .line 309
    return-object p0
.end method

.method public blacklist unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;
    .registers 4
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;

    .line 340
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    invoke-static {p1}, Landroid/content/om/OverlayManagerTransaction;->-$$Nest$smgenerateUnRegisterFabricatedOverlayRequest(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object p0
.end method
