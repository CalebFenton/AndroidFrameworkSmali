.class public final synthetic Lsun/nio/ch/MembershipRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lsun/nio/ch/MembershipRegistry$ThrowingConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lsun/nio/ch/MembershipKeyImpl;

    invoke-virtual {p1}, Lsun/nio/ch/MembershipKeyImpl;->invalidate()V

    return-void
.end method
