.class public final synthetic Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Ljava/lang/invoke/MethodHandles;->lambda$loop$4(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
