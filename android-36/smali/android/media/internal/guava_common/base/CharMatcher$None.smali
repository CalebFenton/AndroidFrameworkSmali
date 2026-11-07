.class final Landroid/media/internal/guava_common/base/CharMatcher$None;
.super Landroid/media/internal/guava_common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "None"
.end annotation


# static fields
.field static final blacklist INSTANCE:Landroid/media/internal/guava_common/base/CharMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1109
    new-instance v0, Landroid/media/internal/guava_common/base/CharMatcher$None;

    invoke-direct {v0}, Landroid/media/internal/guava_common/base/CharMatcher$None;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/base/CharMatcher$None;->INSTANCE:Landroid/media/internal/guava_common/base/CharMatcher;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 1112
    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist indexIn(Ljava/lang/CharSequence;I)I
    .registers 3

    .line 1128
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 1129
    invoke-static {p2, p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndex(II)I

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist matches(C)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
