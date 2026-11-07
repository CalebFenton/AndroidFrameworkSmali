.class public Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
.super Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
.source "IkeLocalRequestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildLocalRequest"
.end annotation


# instance fields
.field public final blacklist childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

.field public final blacklist childSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

.field public blacklist remoteSpi:I


# direct methods
.method private constructor blacklist <init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;I)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "remoteChildSpi"    # I
    .param p3, "childCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .param p4, "childParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p5, "priority"    # I

    .line 262
    invoke-direct {p0, p1, p5}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;-><init>(II)V

    .line 263
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->childSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 264
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 265
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->remoteSpi:I

    .line 266
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;-><init>(IILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;I)V

    return-void
.end method


# virtual methods
.method protected blacklist isChildRequest()Z
    .registers 2

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist validateTypeOrThrow(I)V
    .registers 5
    .param p1, "type"    # I

    .line 270
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_7

    .line 271
    return-void

    .line 274
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Child procedure type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
