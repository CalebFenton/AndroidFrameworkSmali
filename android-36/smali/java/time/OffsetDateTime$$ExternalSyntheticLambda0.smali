.class public final synthetic Ljava/time/OffsetDateTime$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/time/OffsetDateTime;

    check-cast p2, Ljava/time/OffsetDateTime;

    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->$r8$lambda$_Z1rTp0fj6xv3b7HSM-00eRmwNU(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result p1

    return p1
.end method
