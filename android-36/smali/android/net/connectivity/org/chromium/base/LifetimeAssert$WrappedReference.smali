.class Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;
.super Ljava/lang/ref/PhantomReference;
.source "LifetimeAssert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/LifetimeAssert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrappedReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static blacklist sActiveWrappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mCreationException:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

.field blacklist mSafeToGc:Z

.field final blacklist mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsActiveWrappers()Ljava/util/Set;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->sActiveWrappers:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 77
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->sActiveWrappers:Ljava/util/Set;

    .line 82
    new-instance v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;

    const-string v1, "GcStateAssertQueue"

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference$1;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;Z)V
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "creationException"    # Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;
    .param p3, "safeToGc"    # Z

    .line 70
    sget-object v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 71
    invoke-static {p2}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->maybeAddTaskOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mCreationException:Landroid/net/connectivity/org/chromium/base/LifetimeAssert$CreationException;

    .line 72
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->mTargetClass:Ljava/lang/Class;

    .line 74
    sget-object v0, Landroid/net/connectivity/org/chromium/base/LifetimeAssert$WrappedReference;->sActiveWrappers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
