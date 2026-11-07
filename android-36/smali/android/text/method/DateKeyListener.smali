.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateKeyListener.java"


# static fields
.field public static final whitelist CHARACTERS:[C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o SKELETONS:[Ljava/lang/String;

.field private static final greylist-max-o SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLd"

.field private static final greylist-max-o sInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCharacters:[C

.field private final greylist-max-o mNeedsAdvancedInput:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    const-string/jumbo v0, "yM"

    const-string v1, "Md"

    const-string/jumbo v2, "yMd"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    .line 118
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    return-void

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2fs
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;

    .line 66
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 70
    .local v0, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    sget-object v1, Landroid/text/method/DateKeyListener;->SKELETONS:[Ljava/lang/String;

    .line 71
    const-string/jumbo v4, "yMLd"

    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    .line 73
    .local v1, "success":Z
    :goto_1e
    if-eqz v1, :cond_32

    .line 74
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v3

    iput-object v3, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    .line 75
    sget-object v3, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iget-object v4, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v3

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_38

    .line 77
    :cond_32
    sget-object v2, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    iput-object v2, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    .line 78
    iput-boolean v3, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    .line 80
    :goto_38
    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/DateKeyListener;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 97
    sget-object v0, Landroid/text/method/DateKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_3
    sget-object v1, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DateKeyListener;

    .line 99
    .local v1, "instance":Landroid/text/method/DateKeyListener;
    if-nez v1, :cond_18

    .line 100
    new-instance v2, Landroid/text/method/DateKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DateKeyListener;-><init>(Ljava/util/Locale;)V

    move-object v1, v2

    .line 101
    sget-object v2, Landroid/text/method/DateKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_18
    monitor-exit v0

    .line 104
    return-object v1

    .line 103
    .end local v1    # "instance":Landroid/text/method/DateKeyListener;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method protected whitelist getAcceptedChars()[C
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/text/method/DateKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 42
    iget-boolean v0, p0, Landroid/text/method/DateKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_6

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_6
    const/16 v0, 0x14

    return v0
.end method
