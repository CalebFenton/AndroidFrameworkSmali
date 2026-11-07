.class final Landroid/media/internal/guava_common/base/Equivalence$Equals;
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
    name = "Equals"
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
.field static final blacklist INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Equals;

.field private static final whitelist serialVersionUID:J = 0x1L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 350
    new-instance v0, Landroid/media/internal/guava_common/base/Equivalence$Equals;

    invoke-direct {v0}, Landroid/media/internal/guava_common/base/Equivalence$Equals;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/base/Equivalence$Equals;->INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Equals;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 348
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/Equivalence;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 1

    .line 363
    sget-object p0, Landroid/media/internal/guava_common/base/Equivalence$Equals;->INSTANCE:Landroid/media/internal/guava_common/base/Equivalence$Equals;

    return-object p0
.end method


# virtual methods
.method protected blacklist doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist doHash(Ljava/lang/Object;)I
    .registers 2

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
