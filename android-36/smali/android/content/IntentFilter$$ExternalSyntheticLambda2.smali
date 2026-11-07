.class public final synthetic Landroid/content/IntentFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/IntentFilter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Landroid/content/IntentFilter;->$r8$lambda$Uu5fhFIeIoazx3CCe3fFBGpH0zY(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
