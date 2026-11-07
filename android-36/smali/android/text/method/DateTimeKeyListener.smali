.class public Landroid/text/method/DateTimeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateTimeKeyListener.java"


# static fields
.field public static final whitelist CHARACTERS:[C

.field private static final greylist-max-o SKELETON_12HOUR:Ljava/lang/String; = "yMdhms"

.field private static final greylist-max-o SKELETON_24HOUR:Ljava/lang/String; = "yMdHms"

.field private static final greylist-max-o SYMBOLS_TO_IGNORE:Ljava/lang/String; = "yMLdahHKkms"

.field private static final greylist-max-o sInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/method/DateTimeKeyListener;",
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
    .registers 1

    .line 129
    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->sLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    return-void

    :array_18
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
        0x61s
        0x6ds
        0x70s
        0x3as
        0x2fs
        0x2ds
        0x20s
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/DateTimeKeyListener;-><init>(Ljava/util/Locale;)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;

    .line 68
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 72
    .local v0, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 73
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 74
    const-string/jumbo v1, "yMdhms"

    const-string/jumbo v4, "yMLdahHKkms"

    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 76
    const-string/jumbo v1, "yMdHms"

    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    move v1, v3

    .line 78
    .local v1, "success":Z
    :goto_2e
    if-eqz v1, :cond_53

    .line 79
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v4

    iput-object v4, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    .line 80
    if-eqz p1, :cond_47

    const-string v4, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 84
    iput-boolean v3, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_59

    .line 86
    :cond_47
    sget-object v3, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    iget-object v4, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v3

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_59

    .line 89
    :cond_53
    sget-object v2, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    iput-object v2, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    .line 90
    iput-boolean v3, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    .line 92
    :goto_59
    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/DateTimeKeyListener;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 109
    sget-object v0, Landroid/text/method/DateTimeKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    sget-object v1, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/method/DateTimeKeyListener;

    .line 111
    .local v1, "instance":Landroid/text/method/DateTimeKeyListener;
    if-nez v1, :cond_18

    .line 112
    new-instance v2, Landroid/text/method/DateTimeKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DateTimeKeyListener;-><init>(Ljava/util/Locale;)V

    move-object v1, v2

    .line 113
    sget-object v2, Landroid/text/method/DateTimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_18
    monitor-exit v0

    .line 116
    return-object v1

    .line 115
    .end local v1    # "instance":Landroid/text/method/DateTimeKeyListener;
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

    .line 53
    iget-object v0, p0, Landroid/text/method/DateTimeKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 42
    iget-boolean v0, p0, Landroid/text/method/DateTimeKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_6

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_6
    const/4 v0, 0x4

    return v0
.end method
