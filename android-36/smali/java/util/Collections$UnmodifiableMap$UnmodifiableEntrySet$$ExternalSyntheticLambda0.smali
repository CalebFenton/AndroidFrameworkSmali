.class public final synthetic Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->lambda$entryConsumer$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method
