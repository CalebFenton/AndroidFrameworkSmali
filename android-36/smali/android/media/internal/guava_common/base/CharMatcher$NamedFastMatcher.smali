.class abstract Landroid/media/internal/guava_common/base/CharMatcher$NamedFastMatcher;
.super Landroid/media/internal/guava_common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NamedFastMatcher"
.end annotation


# instance fields
.field private final blacklist description:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 958
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/CharMatcher$FastMatcher;-><init>()V

    .line 959
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/internal/guava_common/base/CharMatcher$NamedFastMatcher;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 964
    iget-object p0, p0, Landroid/media/internal/guava_common/base/CharMatcher$NamedFastMatcher;->description:Ljava/lang/String;

    return-object p0
.end method
