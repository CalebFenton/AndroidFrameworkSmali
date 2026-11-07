.class public final synthetic Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/slice/SliceItem;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/slice/SliceItem;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda2;->f$0:Landroid/app/slice/SliceItem;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda2;->f$0:Landroid/app/slice/SliceItem;

    check-cast p1, Landroid/app/slice/SliceItem;

    invoke-static {v0, p1}, Landroid/app/slice/SliceQuery;->lambda$contains$0(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
