.class public Ljdk/internal/vm/ContinuationScope;
.super Ljava/lang/Object;
.source "ContinuationScope.java"


# instance fields
.field final blacklist name:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljdk/internal/vm/ContinuationScope;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljdk/internal/vm/ContinuationScope;->name:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist getName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Ljdk/internal/vm/ContinuationScope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Ljdk/internal/vm/ContinuationScope;->name:Ljava/lang/String;

    return-object v0
.end method
