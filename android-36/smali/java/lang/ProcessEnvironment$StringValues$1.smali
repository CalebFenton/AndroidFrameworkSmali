.class Ljava/lang/ProcessEnvironment$StringValues$1;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/lang/ProcessEnvironment$StringValues;


# direct methods
.method constructor blacklist <init>(Ljava/lang/ProcessEnvironment$StringValues;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/ProcessEnvironment$StringValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 396
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->this$0:Ljava/lang/ProcessEnvironment$StringValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->this$0:Ljava/lang/ProcessEnvironment$StringValues;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringValues;->-$$Nest$fgetc(Ljava/lang/ProcessEnvironment$StringValues;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 398
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 396
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringValues$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 2

    .line 399
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v0}, Ljava/lang/ProcessEnvironment$Value;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 400
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringValues$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
