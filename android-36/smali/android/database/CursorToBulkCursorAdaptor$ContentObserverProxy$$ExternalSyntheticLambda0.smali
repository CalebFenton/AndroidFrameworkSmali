.class public final synthetic Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
