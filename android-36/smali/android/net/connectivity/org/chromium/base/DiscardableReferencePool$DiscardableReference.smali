.class public Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;
.super Ljava/lang/Object;
.source "DiscardableReferencePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardableReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mPayload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdiscard(Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;->discard()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<TT;>;"
    .local p1, "payload":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;->mPayload:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist discard()V
    .registers 2

    .line 60
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<TT;>;"
    nop

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;->mPayload:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;, "Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/DiscardableReferencePool$DiscardableReference;->mPayload:Ljava/lang/Object;

    return-object v0
.end method
