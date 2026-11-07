.class final Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;
.super Ljava/lang/Record;
.source "BroadcastStickyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BroadcastStickyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StickyBroadcastFilter"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "filter",
        "action"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Landroid/content/IntentFilter;,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final blacklist action:Ljava/lang/String;

.field private final blacklist filter:Landroid/content/IntentFilter;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    if-eqz v0, :cond_1c

    check-cast p1, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    iget-object v0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    iget-object v1, p1, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetaction(Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfilter(Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;)Landroid/content/IntentFilter;
    .registers 1

    iget-object p0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .registers 3
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "action"
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    iput-object p2, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/IntentFilter;Ljava/lang/String;Landroid/app/BroadcastStickyCache-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;-><init>(Landroid/content/IntentFilter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist action()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 267
    invoke-direct {p0, p1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist filter()Landroid/content/IntentFilter;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 267
    iget-object v0, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->filter:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->action:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 267
    invoke-direct {p0}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter;

    const-string v2, "filter;action"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
