.class Ljava/lang/ProcessEnvironment$StringEntrySet$2;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/ProcessEnvironment$Variable;",
        "Ljava/lang/ProcessEnvironment$Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$o:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 366
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->getKey()Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/ProcessEnvironment$Variable;
    .registers 2

    .line 368
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getValue()Ljava/lang/Object;
    .registers 2

    .line 366
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->getValue()Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/ProcessEnvironment$Value;
    .registers 2

    .line 371
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 366
    check-cast p1, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->setValue(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setValue(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/ProcessEnvironment$Value;
    .registers 3
    .param p1, "value"    # Ljava/lang/ProcessEnvironment$Value;

    .line 374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
