.class public final Landroid/view/KeyCharacterMap$FallbackAction;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackAction"
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0xa

.field private static sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


# instance fields
.field public keyCode:I

.field public metaState:I

.field private next:Landroid/view/KeyCharacterMap$FallbackAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 743
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    #@7
    .line 741
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static obtain()Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    #@0
    .prologue
    .line 757
    sget-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 758
    :try_start_0
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 759
    new-instance v0, Landroid/view/KeyCharacterMap$FallbackAction;

    #@9
    invoke-direct {v0}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v0, "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_0
    monitor-exit v2

    #@d
    .line 767
    return-object v0

    #@e
    .line 761
    .end local v0    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    #@10
    .line 762
    .restart local v0    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    iget-object v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    #@12
    sput-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    #@14
    .line 763
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    sput v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    #@1a
    .line 764
    const/4 v1, 0x0

    #@1b
    iput-object v1, v0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 757
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 771
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 772
    :try_start_0
    sget v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    #@5
    const/16 v2, 0xa

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 773
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    #@b
    iput-object v0, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    #@d
    .line 774
    sput-object p0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    #@f
    .line 775
    sget v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    sput v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :goto_0
    monitor-exit v1

    #@16
    .line 770
    return-void

    #@17
    .line 777
    :cond_0
    const/4 v0, 0x0

    #@18
    :try_start_1
    iput-object v0, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 771
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method
