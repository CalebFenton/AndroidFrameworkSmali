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
.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static greylist-max-o sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist-max-r keyCode:I

.field public greylist-max-r metaState:I

.field private greylist-max-o next:Landroid/view/KeyCharacterMap$FallbackAction;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 841
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    return-void
.end method

.method public static greylist-max-o obtain()Landroid/view/KeyCharacterMap$FallbackAction;
    .registers 3

    .line 857
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_3
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    if-nez v1, :cond_d

    .line 859
    new-instance v1, Landroid/view/KeyCharacterMap$FallbackAction;

    invoke-direct {v1}, Landroid/view/KeyCharacterMap$FallbackAction;-><init>()V

    .local v1, "target":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1c

    .line 861
    .end local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_d
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 862
    .restart local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    iget-object v2, v1, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    sput-object v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 863
    sget v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    .line 864
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 866
    :goto_1c
    monitor-exit v0

    .line 867
    return-object v1

    .line 866
    .end local v1    # "target":Landroid/view/KeyCharacterMap$FallbackAction;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .registers 4

    .line 871
    sget-object v0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    .line 873
    sget-object v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    iput-object v1, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 874
    sput-object p0, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycleBin:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 875
    sget v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/KeyCharacterMap$FallbackAction;->sRecycledCount:I

    goto :goto_19

    .line 877
    :cond_16
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/KeyCharacterMap$FallbackAction;->next:Landroid/view/KeyCharacterMap$FallbackAction;

    .line 879
    :goto_19
    monitor-exit v0

    .line 880
    return-void

    .line 879
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
