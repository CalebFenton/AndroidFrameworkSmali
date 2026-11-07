.class public abstract Landroid/media/internal/guava_common/collect/ComparisonChain;
.super Ljava/lang/Object;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;
    }
.end annotation


# static fields
.field private static final blacklist ACTIVE:Landroid/media/internal/guava_common/collect/ComparisonChain;

.field private static final blacklist GREATER:Landroid/media/internal/guava_common/collect/ComparisonChain;

.field private static final blacklist LESS:Landroid/media/internal/guava_common/collect/ComparisonChain;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Landroid/media/internal/guava_common/collect/ComparisonChain$1;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/ComparisonChain$1;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->ACTIVE:Landroid/media/internal/guava_common/collect/ComparisonChain;

    .line 120
    new-instance v0, Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->LESS:Landroid/media/internal/guava_common/collect/ComparisonChain;

    .line 122
    new-instance v0, Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->GREATER:Landroid/media/internal/guava_common/collect/ComparisonChain;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ComparisonChain$1;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ComparisonChain;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100()Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 1

    .line 58
    sget-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->LESS:Landroid/media/internal/guava_common/collect/ComparisonChain;

    return-object v0
.end method

.method static synthetic blacklist access$200()Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 1

    .line 58
    sget-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->GREATER:Landroid/media/internal/guava_common/collect/ComparisonChain;

    return-object v0
.end method

.method static synthetic blacklist access$300()Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 1

    .line 58
    sget-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->ACTIVE:Landroid/media/internal/guava_common/collect/ComparisonChain;

    return-object v0
.end method

.method public static blacklist start()Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 1

    .line 63
    sget-object v0, Landroid/media/internal/guava_common/collect/ComparisonChain;->ACTIVE:Landroid/media/internal/guava_common/collect/ComparisonChain;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist compare(II)Landroid/media/internal/guava_common/collect/ComparisonChain;
.end method

.method public abstract blacklist compare(JJ)Landroid/media/internal/guava_common/collect/ComparisonChain;
.end method

.method public abstract blacklist result()I
.end method
