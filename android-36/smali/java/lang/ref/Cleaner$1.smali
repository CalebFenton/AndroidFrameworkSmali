.class Ljava/lang/ref/Cleaner$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ref/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/ref/Cleaner;",
        "Ljdk/internal/ref/CleanerImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 138
    check-cast p1, Ljava/lang/ref/Cleaner;

    invoke-virtual {p0, p1}, Ljava/lang/ref/Cleaner$1;->apply(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;
    .registers 3
    .param p1, "cleaner"    # Ljava/lang/ref/Cleaner;

    .line 141
    iget-object v0, p1, Ljava/lang/ref/Cleaner;->impl:Ljdk/internal/ref/CleanerImpl;

    return-object v0
.end method
