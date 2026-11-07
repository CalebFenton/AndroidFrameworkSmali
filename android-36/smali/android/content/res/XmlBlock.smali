.class public final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist ERROR_BAD_DOCUMENT:I

.field private static final blacklist ERROR_NULL_DOCUMENT:I = -0x7ffffff8


# instance fields
.field private final greylist-max-o mAssets:Landroid/content/res/AssetManager;

.field private greylist-max-o mNative:J

.field private greylist-max-o mOpen:Z

.field private greylist-max-o mOpenCount:I

.field final greylist-max-o mStrings:Landroid/content/res/StringBlock;

.field private final blacklist mUsesFeatureFlags:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I
    .registers 1

    iget p0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesFeatureFlags(Landroid/content/res/XmlBlock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/res/XmlBlock;->mUsesFeatureFlags:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V
    .registers 2

    iput p1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V
    .registers 1

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetERROR_BAD_DOCUMENT()I
    .registers 1

    sget v0, Landroid/content/res/XmlBlock;->ERROR_BAD_DOCUMENT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeDestroyParseState(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeCount(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeData(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeDataType(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeName(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeNamespace(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeResource(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeStringValue(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetClassAttribute(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetIdAttribute(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetLineNumber(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNamespace(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetSourceResId(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetSourceResId(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetStyleAttribute(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetText(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/content/res/XmlBlock;->ERROR_BAD_DOCUMENT:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/AssetManager;JZ)V
    .registers 9
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "xmlBlock"    # J
    .param p4, "usesFeatureFlags"    # Z

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 695
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 685
    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 686
    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 687
    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 688
    iput-boolean p4, p0, Landroid/content/res/XmlBlock;->mUsesFeatureFlags:Z

    .line 689
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 7
    .param p1, "data"    # [B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 695
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 60
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 61
    new-instance v1, Landroid/content/res/StringBlock;

    iget-wide v3, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v3, v4}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v2}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v1, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 62
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mUsesFeatureFlags:Z

    .line 63
    return-void
.end method

.method public constructor greylist-max-o <init>([BII)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 695
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    .line 67
    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 68
    new-instance v1, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v1, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 69
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mUsesFeatureFlags:Z

    .line 70
    return-void
.end method

.method private greylist-max-o decOpenCountLocked()V
    .registers 3

    .line 83
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    .line 84
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_25

    .line 85
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    .line 86
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    .line 88
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_25

    .line 89
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    .line 92
    :cond_25
    return-void
.end method

.method private static final native greylist-max-o nativeCreate([BII)J
.end method

.method private static final native blacklist nativeCreateParseState(JI)J
.end method

.method private static final native greylist-max-o nativeDestroy(J)V
.end method

.method private static final native greylist-max-o nativeDestroyParseState(J)V
.end method

.method private static final native greylist-max-o nativeGetAttributeCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeData(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeDataType(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeName(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeNamespace(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeResource(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeStringValue(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetClassAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetIdAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetLineNumber(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static final native greylist-max-o nativeGetName(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetNamespace(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native blacklist nativeGetSourceResId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetStringBlock(J)J
.end method

.method private static final native greylist-max-o nativeGetStyleAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetText(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static final native greylist-max-o nativeNext(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_b

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    .line 77
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    .line 79
    :cond_b
    monitor-exit p0

    .line 80
    return-void

    .line 79
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    .line 676
    return-void
.end method

.method public greylist newParser()Landroid/content/res/XmlResourceParser;
    .registers 2

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newParser(I)Landroid/content/res/XmlResourceParser;
    .registers 6
    .param p1, "resId"    # I

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 102
    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    iget-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->nativeCreateParseState(JI)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    monitor-exit p0

    return-object v0

    .line 104
    :cond_16
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 105
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public blacklist newParser(ILandroid/content/res/Validator;)Landroid/content/res/XmlResourceParser;
    .registers 10
    .param p1, "resId"    # I
    .param p2, "validator"    # Landroid/content/res/Validator;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 114
    new-instance v1, Landroid/content/res/XmlBlock$Parser;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->nativeCreateParseState(JI)J

    move-result-wide v3
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    move-object v5, p0

    move-object v2, p0

    move-object v6, p2

    .end local p2    # "validator":Landroid/content/res/Validator;
    .local v6, "validator":Landroid/content/res/Validator;
    :try_start_14
    invoke-direct/range {v1 .. v6}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;Landroid/content/res/Validator;)V

    monitor-exit p0

    return-object v1

    .line 116
    .end local v6    # "validator":Landroid/content/res/Validator;
    .restart local p2    # "validator":Landroid/content/res/Validator;
    :cond_19
    move-object v2, p0

    move-object v6, p2

    .end local p2    # "validator":Landroid/content/res/Validator;
    .restart local v6    # "validator":Landroid/content/res/Validator;
    monitor-exit p0

    const/4 p2, 0x0

    return-object p2

    .line 117
    .end local v6    # "validator":Landroid/content/res/Validator;
    .restart local p2    # "validator":Landroid/content/res/Validator;
    :catchall_1e
    move-exception v0

    move-object v2, p0

    move-object v6, p2

    move-object p2, v0

    .end local p2    # "validator":Landroid/content/res/Validator;
    .restart local v6    # "validator":Landroid/content/res/Validator;
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_24

    throw p2

    :catchall_24
    move-exception v0

    move-object p2, v0

    goto :goto_22
.end method
