.class final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "XmlBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mNative:J

.field private mOpen:Z

.field private mOpenCount:I

.field final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method static synthetic -get0(Landroid/content/res/XmlBlock;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/content/res/XmlBlock;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap13(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap14(Landroid/content/res/XmlBlock;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(J)V
    .locals 0
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(JLjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(JI)I
    .locals 2
    .param p0, "state"    # J
    .param p2, "idx"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(J)I
    .locals 2
    .param p0, "state"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "xmlBlock"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 488
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    #@6
    .line 489
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@8
    .line 480
    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    #@a
    .line 481
    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@c
    .line 482
    new-instance v0, Landroid/content/res/StringBlock;

    #@e
    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    #@11
    move-result-wide v2

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    #@16
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@18
    .line 479
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 488
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    #@7
    .line 489
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@9
    .line 38
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    #@c
    .line 39
    array-length v0, p1

    #@d
    invoke-static {p1, v4, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@13
    .line 40
    new-instance v0, Landroid/content/res/StringBlock;

    #@15
    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@17
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    #@1a
    move-result-wide v2

    #@1b
    invoke-direct {v0, v2, v3, v4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    #@1e
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@20
    .line 37
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 488
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    #@6
    .line 489
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@8
    .line 44
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    #@b
    .line 45
    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@11
    .line 46
    new-instance v0, Landroid/content/res/StringBlock;

    #@13
    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@15
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    #@18
    move-result-wide v2

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    #@1d
    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    #@1f
    .line 43
    return-void
.end method

.method private decOpenCountLocked()V
    .locals 2

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@6
    .line 60
    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    #@8
    if-nez v0, :cond_0

    #@a
    .line 61
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@c
    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    #@f
    .line 62
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 63
    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    #@15
    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->hashCode()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    #@1c
    .line 58
    :cond_0
    return-void
.end method

.method private static final native nativeCreate([BII)J
.end method

.method private static final native nativeCreateParseState(J)J
.end method

.method private static final native nativeDestroy(J)V
.end method

.method private static final native nativeDestroyParseState(J)V
.end method

.method private static final native nativeGetAttributeCount(J)I
.end method

.method private static final native nativeGetAttributeData(JI)I
.end method

.method private static final native nativeGetAttributeDataType(JI)I
.end method

.method private static final native nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static final native nativeGetAttributeName(JI)I
.end method

.method private static final native nativeGetAttributeNamespace(JI)I
.end method

.method private static final native nativeGetAttributeResource(JI)I
.end method

.method private static final native nativeGetAttributeStringValue(JI)I
.end method

.method private static final native nativeGetClassAttribute(J)I
.end method

.method private static final native nativeGetIdAttribute(J)I
.end method

.method private static final native nativeGetLineNumber(J)I
.end method

.method static final native nativeGetName(J)I
.end method

.method private static final native nativeGetNamespace(J)I
.end method

.method private static final native nativeGetStringBlock(J)J
.end method

.method private static final native nativeGetStyleAttribute(J)I
.end method

.method private static final native nativeGetText(J)I
.end method

.method static final native nativeNext(J)I
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 50
    monitor-enter p0

    #@1
    .line 51
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 52
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    #@8
    .line 53
    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :cond_0
    monitor-exit p0

    #@c
    .line 49
    return-void

    #@d
    .line 50
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    #@3
    .line 469
    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .locals 4

    #@0
    .prologue
    .line 69
    monitor-enter p0

    #@1
    .line 70
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 71
    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    #@b
    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    #@d
    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeCreateParseState(J)J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {v0, p0, v2, v3, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v0

    #@16
    .line 73
    :cond_0
    const/4 v0, 0x0

    #@17
    monitor-exit p0

    #@18
    return-object v0

    #@19
    .line 69
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method
