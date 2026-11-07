.class public Landroid/ranging/RangingCapabilities$Builder;
.super Ljava/lang/Object;
.source "RangingCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAvailabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/ranging/RangingCapabilities$TechnologyCapabilities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingCapabilities$Builder;->mAvailabilities:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingCapabilities$Builder;->mCapabilities:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/ranging/RangingCapabilities$Builder;->mCapabilities:Ljava/util/HashMap;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/ranging/RangingCapabilities$Builder;->mAvailabilities:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist addAvailability(II)Landroid/ranging/RangingCapabilities$Builder;
    .registers 6
    .param p1, "technology"    # I
    .param p2, "availability"    # I

    .line 258
    iget-object v0, p0, Landroid/ranging/RangingCapabilities$Builder;->mAvailabilities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-object p0
.end method

.method public blacklist addCapabilities(Landroid/ranging/RangingCapabilities$TechnologyCapabilities;)Landroid/ranging/RangingCapabilities$Builder;
    .registers 4
    .param p1, "capabilities"    # Landroid/ranging/RangingCapabilities$TechnologyCapabilities;

    .line 251
    iget-object v0, p0, Landroid/ranging/RangingCapabilities$Builder;->mCapabilities:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/ranging/RangingCapabilities$TechnologyCapabilities;->getTechnology()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-object p0
.end method

.method public blacklist build()Landroid/ranging/RangingCapabilities;
    .registers 3

    .line 263
    new-instance v0, Landroid/ranging/RangingCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/RangingCapabilities;-><init>(Landroid/ranging/RangingCapabilities$Builder;Landroid/ranging/RangingCapabilities-IA;)V

    return-object v0
.end method
