.class Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsingContext"
.end annotation


# instance fields
.field private final blacklist mConfiguredOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFoundMutableOverlay:Z

.field private blacklist mMergeDepth:I

.field private final blacklist mOrderedConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mConfiguredOverlays:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mFoundMutableOverlay:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mOrderedConfigurations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mFoundMutableOverlay:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mMergeDepth:I

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)V
    .registers 3
    .param p1, "partition"    # Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mOrderedConfigurations:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mConfiguredOverlays:Landroid/util/ArraySet;

    .line 242
    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->mPartition:Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 243
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)V

    return-void
.end method
