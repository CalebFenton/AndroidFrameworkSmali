.class final Ljava/util/concurrent/Exchanger$Participant;
.super Ljava/lang/ThreadLocal;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Exchanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Participant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/concurrent/Exchanger$Node;",
        ">;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 317
    invoke-virtual {p0}, Ljava/util/concurrent/Exchanger$Participant;->initialValue()Ljava/util/concurrent/Exchanger$Node;

    move-result-object v0

    return-object v0
.end method

.method public blacklist initialValue()Ljava/util/concurrent/Exchanger$Node;
    .registers 2

    .line 318
    new-instance v0, Ljava/util/concurrent/Exchanger$Node;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Node;-><init>()V

    return-object v0
.end method
