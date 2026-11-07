.class final Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;
.super Ljava/lang/Object;
.source "ContentProtectionEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentprotection/ContentProtectionEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchGroup"
.end annotation


# instance fields
.field public blacklist mFound:Z

.field private final blacklist mSearchStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "searchStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mFound:Z

    .line 209
    iput-object p1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mSearchStrings:Ljava/util/List;

    .line 210
    return-void
.end method


# virtual methods
.method public blacklist matches(Ljava/lang/String;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 213
    if-nez p1, :cond_4

    .line 214
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_4
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;->mSearchStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
