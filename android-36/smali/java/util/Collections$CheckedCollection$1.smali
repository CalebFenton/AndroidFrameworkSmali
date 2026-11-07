.class Ljava/util/Collections$CheckedCollection$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$it:Ljava/util/Iterator;


# direct methods
.method constructor blacklist <init>(Ljava/util/Collections$CheckedCollection;Ljava/util/Iterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Collections$CheckedCollection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3457
    .local p0, "this":Ljava/util/Collections$CheckedCollection$1;, "Ljava/util/Collections$CheckedCollection$1;"
    iput-object p2, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 3462
    .local p0, "this":Ljava/util/Collections$CheckedCollection$1;, "Ljava/util/Collections$CheckedCollection$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 3463
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 3458
    .local p0, "this":Ljava/util/Collections$CheckedCollection$1;, "Ljava/util/Collections$CheckedCollection$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3459
    .local p0, "this":Ljava/util/Collections$CheckedCollection$1;, "Ljava/util/Collections$CheckedCollection$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 3460
    .local p0, "this":Ljava/util/Collections$CheckedCollection$1;, "Ljava/util/Collections$CheckedCollection$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
