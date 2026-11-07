.class Ljava/util/Collections$2;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist est:J

.field final synthetic blacklist val$element:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 4

    .line 5141
    iput-object p1, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5142
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/Collections$2;->est:J

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 3

    .line 5172
    iget-object v0, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 5174
    .local v0, "value":I
    :goto_8
    or-int/lit8 v1, v0, 0x40

    or-int/lit16 v1, v1, 0x4000

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x10

    return v1
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 5167
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 5162
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$2;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 5163
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 5151
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5152
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 5153
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Collections$2;->est:J

    .line 5154
    iget-object v0, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5155
    const/4 v0, 0x1

    return v0

    .line 5157
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 5146
    const/4 v0, 0x0

    return-object v0
.end method
