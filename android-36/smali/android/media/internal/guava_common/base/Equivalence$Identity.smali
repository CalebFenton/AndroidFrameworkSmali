.class final Landroid/media/internal/guava_common/base/Equivalence$Identity;
.super Landroid/media/internal/guava_common/base/Equivalence;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/base/Equivalence<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Identity;

.field private static final whitelist serialVersionUID:J = 0x1L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 371
    new-instance v0, Landroid/media/internal/guava_common/base/Equivalence$Identity;

    invoke-direct {v0}, Landroid/media/internal/guava_common/base/Equivalence$Identity;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/base/Equivalence$Identity;->INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Identity;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 369
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/Equivalence;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 1

    .line 384
    sget-object p0, Landroid/media/internal/guava_common/base/Equivalence$Identity;->INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Identity;

    return-object p0
.end method


# virtual methods
.method protected blacklist doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist doHash(Ljava/lang/Object;)I
    .registers 2

    .line 380
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
