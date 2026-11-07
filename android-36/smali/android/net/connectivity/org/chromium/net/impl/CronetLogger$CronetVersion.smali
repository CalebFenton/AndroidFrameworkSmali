.class public Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetVersion"
.end annotation


# static fields
.field private static final blacklist VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mBuildVersion:I

.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I

.field private final blacklist mPatchVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 390
    nop

    .line 391
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 390
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "version"    # Ljava/lang/String;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    .line 412
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    .line 413
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    .line 414
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    .line 415
    return-void

    .line 406
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version: expected a string matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getBuildVersion()I
    .registers 2

    .line 429
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    return v0
.end method

.method public blacklist getMajorVersion()I
    .registers 2

    .line 419
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    return v0
.end method

.method public blacklist getMinorVersion()I
    .registers 2

    .line 424
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    return v0
.end method

.method public blacklist getPatchVersion()I
    .registers 2

    .line 434
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mMinorVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mBuildVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->mPatchVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
